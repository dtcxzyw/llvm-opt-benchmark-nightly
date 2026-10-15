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
  %8 = alloca %"class.Imath_3_2::Vec2.0", align 4 ; 6 uses
  %9 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  %10 = alloca %"class.Imath_3_2::Box", align 16  ; 7 uses
  %11 = alloca %"class.Imath_3_2::Box", align 16  ; 8 uses
  %12 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 7 uses
  %13 = alloca %"class.Imath_3_2::Vec3", align 4  ; 7 uses
  %14 = alloca %"class.Imath_3_2::Vec2.0", align 4 ; 6 uses
  %15 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  %16 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 7 uses
  %17 = alloca %"class.Imath_3_2::Vec3", align 4  ; 7 uses
  %18 = alloca %"class.Imath_3_2::Vec2.0", align 4 ; 6 uses
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
  tail call void @_ZSt16__throw_bad_castv() #9
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
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
  invoke void @_ZSt16__throw_bad_castv() #9
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.q

bb.p:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.cb = add nsw i32 %.2206.us, -1
  %i.cc = add nsw i32 %i.bf, -1
  store i32 0, ptr %4, align 4, !tbaa !56
  store i32 0, ptr %i.bc, align 4, !tbaa !57
  store i32 %i.cb, ptr %i.bb, align 4, !tbaa !56
  store i32 %i.cc, ptr %i.bd, align 4, !tbaa !57
  invoke void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48) %.1404471.us, ptr noundef nonnull align 8 dereferenceable(48) %.1406470.us, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00, i32 noundef 7)
          to label %bb.v unwind label %.split475.us

bb.v:                                             ; preds = %_ZNSolsEPFRSoS_E.exit235.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ch = add nsw i32 %.2206, -1
  %i.ci = add nsw i32 %i.cg, -1
  store i32 0, ptr %4, align 4, !tbaa !56
  store i32 0, ptr %i.bc, align 4, !tbaa !57
  store i32 %i.ch, ptr %i.bb, align 4, !tbaa !56
  store i32 %i.ci, ptr %i.bd, align 4, !tbaa !57
  invoke void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48) %.1404471, ptr noundef nonnull align 8 dereferenceable(48) %.1406470, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00, i32 noundef 7)
          to label %bb.w unwind label %.split475

bb.w:                                             ; preds = %_ZNSolsEPFRSoS_E.exit235
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.cj = icmp samesign ugt i32 %.1205472, 81
  br i1 %i.cj, label %_ZNSolsEPFRSoS_E.exit235, label %._crit_edge, !llvm.loop !11

.split475:                                        ; preds = %_ZNSolsEPFRSoS_E.exit235
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.split475.us, %.split475
  %.us-phi476 = phi { ptr, i32 } [ %i.ck, %.split475 ], [ %i.ce, %.split475.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
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
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  br label %bb.ah

bb.ad:                                            ; preds = %._crit_edge489.split.us
  %i.do = load <2 x i32>, ptr %i.dd, align 8, !tbaa !59
  %i.dp = load <2 x i32>, ptr %5, align 16, !tbaa !59
  %i.dq = add <2 x i32> %i.do, splat (i32 1)
  %i.dr = sub <2 x i32> %i.dq, %i.dp              ; 2 uses
  %i.ds = extractelement <2 x i32> %i.dr, i64 0
  %i.dt = extractelement <2 x i32> %i.dr, i64 1
  %i.du = mul nsw i32 %i.dt, %i.ds                ; 2 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = load ptr, ptr %i.dm, align 8, !tbaa !62 ; 2 uses
  %.idx = shl nuw nsw i64 %i.dv, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx
  %.not557 = icmp eq i32 %i.du, 0
  br i1 %.not557, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.ad
  %i.dy = uitofp i64 %i.dv to double
  %i.dz = fdiv double %i.dy, %.1181.lcssa
  %i.ea = fptrunc double %i.dz to float           ; 4 uses
  %i.eb = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  br label %bb.ct

bb.ae:                                            ; preds = %_ZNSolsEPFRSoS_E.exit237
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.af:                                            ; preds = %bb.ab
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ag:                                            ; preds = %bb.ac
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ah:                                            ; preds = %.preheader414, %._crit_edge489.split.us
  %.0179497 = phi i32 [ 0, %.preheader414 ], [ %i.pl, %._crit_edge489.split.us ] ; 5 uses
  %.0180496 = phi double [ 0.000000e+00, %.preheader414 ], [ %.1181.lcssa, %._crit_edge489.split.us ] ; 2 uses
  br i1 %1, label %bb.ai, label %_ZNSolsEPFRSoS_E.exit239

bb.ai:                                            ; preds = %bb.ah
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %.loopexit415 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %bb.ai
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0179497)
          to label %bb.aj unwind label %.loopexit415 ; 3 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !26
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 240
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i322 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i322, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt16__throw_bad_castv() #9
          to label %.noexc327 unwind label %.loopexit.split-lp416

.noexc327:                                        ; preds = %bb.ak
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323: ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !50
  %.not.i1.i.i324 = icmp eq i8 %i.eo, 0
  br i1 %.not.i1.i.i324, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 67
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.em)
          to label %.noexc328 unwind label %.loopexit415

.noexc328:                                        ; preds = %bb.am
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !26
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = invoke noundef signext i8 %i.et(ptr noundef nonnull align 8 dereferenceable(570) %i.em, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325 unwind label %.loopexit415, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325: ; preds = %.noexc328, %bb.al
  %.0.i.i.i326 = phi i8 [ %i.eq, %bb.al ], [ %i.eu, %.noexc328 ]
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i8 noundef signext %.0.i.i.i326)
          to label %.noexc330 unwind label %.loopexit415

.noexc330:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
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
  %.0175486.us = phi i32 [ %i.pi, %._crit_edge483.us ], [ 0, %bb.as ] ; 4 uses
  %.1181485.us = phi double [ %i.pg, %._crit_edge483.us ], [ %.0180496, %bb.as ]
  %i.ex = icmp eq i32 %.0175486.us, 0
  %i.ey = icmp eq i32 %.0175486.us, %i.di
  %i.ez = select i1 %i.ex, i1 true, i1 %i.ey      ; 2 uses
  %i.fa = uitofp nneg i32 %.0175486.us to float
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph482.us, %_ZN9Imath_3_24halfmLEf.exit251.us
  %.0174480.us = phi i32 [ 0, %.lr.ph482.us ], [ %i.ph, %_ZN9Imath_3_24halfmLEf.exit251.us ] ; 4 uses
  %.2182479.us = phi double [ %.1181485.us, %.lr.ph482.us ], [ %i.pg, %_ZN9Imath_3_24halfmLEf.exit251.us ]
  %i.fb = icmp eq i32 %.0174480.us, 0
  %i.fc = icmp eq i32 %.0174480.us, %i.di
  %i.fd = select i1 %i.fb, i1 true, i1 %i.fc      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.fe = uitofp nneg i32 %.0174480.us to float
  store float %i.fe, ptr %6, align 8, !tbaa !67
  store float %i.fa, ptr %i.dj, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  invoke void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %7, i32 noundef %.0179497, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.au unwind label %.split.us491

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ff = load float, ptr %7, align 4, !tbaa !71, !noalias !69 ; 6 uses
  %i.fg = load <2 x float>, ptr %i.dk, align 4, !tbaa !72, !noalias !69 ; 7 uses
  %foldExtExtBinop = fmul <2 x float> %i.fg, %i.fg
  %i.fh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fi = call float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fh)
  %i.fj = extractelement <2 x float> %i.fg, i64 1 ; 2 uses
  %i.fk = call noundef float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fi) ; 2 uses
  %i.fl = fcmp olt float %i.fk, f0x01000000
  br i1 %i.fl, label %bb.aw, label %bb.av, !prof !73

bb.av:                                            ; preds = %bb.au
  %sqrt.i.i.us = call noundef float @sqrtf(float noundef %i.fk) #10, !noalias !69
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us

bb.aw:                                            ; preds = %bb.au
  %i.fm = fcmp ult float %i.ff, 0.000000e+00
  %i.fn = fneg float %i.ff
  %i.fo = select i1 %i.fm, float %i.fn, float %i.ff ; 3 uses
  %i.fp = fcmp ult <2 x float> %i.fg, zeroinitializer
  %i.fq = fneg <2 x float> %i.fg
  %i.fr = select <2 x i1> %i.fp, <2 x float> %i.fq, <2 x float> %i.fg ; 3 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0 ; 2 uses
  %i.ft = fcmp olt float %i.fo, %i.fs
  %.0.i.us = select i1 %i.ft, float %i.fs, float %i.fo ; 2 uses
  %i.fu = extractelement <2 x float> %i.fr, i64 1 ; 2 uses
  %i.fv = fcmp olt float %.0.i.us, %i.fu
  %.1.i.us = select i1 %i.fv, float %i.fu, float %.0.i.us ; 4 uses
  %i.fw = fcmp oeq float %.1.i.us, 0.000000e+00
  br i1 %i.fw, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us, label %bb.ax, !prof !73

bb.ax:                                            ; preds = %bb.aw
  %i.fx = fdiv float %i.fo, %.1.i.us              ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %.1.i.us, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fdiv <2 x float> %i.fr, %i.fz           ; 3 uses
  %foldExtExtBinop669 = fmul <2 x float> %i.ga, %i.ga
  %i.gb = extractelement <2 x float> %foldExtExtBinop669, i64 0
  %i.gc = call float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %i.gb)
  %i.gd = extractelement <2 x float> %i.ga, i64 1 ; 2 uses
  %i.ge = call float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.gc)
  %sqrt.i.us = call noundef float @sqrtf(float noundef %i.ge) #10, !noalias !69
  %i.gf = fmul float %.1.i.us, %sqrt.i.us
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us:        ; preds = %bb.ax, %bb.av
  %.0.i.i.us = phi float [ %sqrt.i.i.us, %bb.av ], [ %i.gf, %bb.ax ] ; 3 uses
  %i.gg = fcmp oeq float %.0.i.i.us, 0.000000e+00
  br i1 %i.gg, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us, label %bb.ay, !prof !74

bb.ay:                                            ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us
  %i.gh = fdiv float %i.ff, %.0.i.i.us
  %i.gi = insertelement <2 x float> poison, float %.0.i.i.us, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fdiv <2 x float> %i.fg, %i.gj
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us:     ; preds = %bb.ay, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us, %bb.aw
  %.sink6.i.us = phi float [ %i.gh, %bb.ay ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us ], [ 0.000000e+00, %bb.aw ] ; 2 uses
  %i.gl = phi <2 x float> [ %i.gk, %bb.ay ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us ], [ zeroinitializer, %bb.aw ] ; 2 uses
  store float %.sink6.i.us, ptr %.sroa.0, align 4, !tbaa !71, !alias.scope !69
  %i.gm = extractelement <2 x float> %i.gl, i64 0 ; 2 uses
  store float %i.gm, ptr %.sroa.10, align 4, !tbaa !75, !alias.scope !69
  %i.gn = extractelement <2 x float> %i.gl, i64 1 ; 2 uses
  store float %i.gn, ptr %.sroa.17, align 4, !tbaa !76, !alias.scope !69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.go = load <2 x float>, ptr %6, align 8, !tbaa !72
  store <2 x float> %i.go, ptr %9, align 8, !tbaa !72
  invoke void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %8, i32 noundef %.0179497, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dead_on_return %9)
          to label %bb.az unwind label %.split493.us

bb.az:                                            ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us
  %i.gp = fmul float %.sroa.11.0, %i.gm
  %i.gq = call float @llvm.fmuladd.f32(float %.sink6.i.us, float %.sroa.0374.0, float %i.gp)
  %i.gr = call noundef float @llvm.fmuladd.f32(float %i.gn, float %.sroa.19.0, float %i.gq)
  %i.gs = fpext float %i.gr to double
  %i.gt = load float, ptr %.0177.sroa.phi, align 4, !tbaa !72
  %i.gu = load float, ptr %.0178.sroa.phi, align 4, !tbaa !72
  %i.gv = load float, ptr %.0176.sroa.phi, align 4, !tbaa !72
  %i.gw = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.gv, i64 1
  %i.gy = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fdiv <2 x float> %i.gx, %i.gz
  %i.hb = fpext <2 x float> %i.ha to <2 x double> ; 2 uses
  %i.hc = fmul <2 x double> %i.hb, %i.hb          ; 2 uses
  %shift = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop671 = fadd <2 x double> %i.hc, %shift
  %i.hd = extractelement <2 x double> %foldExtExtBinop671, i64 0
  %i.he = fadd double %i.hd, 1.000000e+00
  %i.hf = fmul double %i.he, %i.gs                ; 3 uses
  %or.cond.us = select i1 %i.fd, i1 %i.ez, i1 false
  br i1 %or.cond.us, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %or.cond3.us = select i1 %i.fd, i1 true, i1 %i.ez
  br i1 %or.cond3.us, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hg = fmul double %i.hf, 5.000000e-01
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.hh = fdiv double %i.hf, 3.000000e+00
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0173.us = phi double [ %i.hh, %bb.bc ], [ %i.hg, %bb.bb ], [ %i.hf, %bb.ba ] ; 2 uses
  %i.hi = load float, ptr %i.dl, align 4, !tbaa !68
  %i.hj = fadd float %i.hi, 5.000000e-01
  %i.hk = fptosi float %i.hj to i32
  %i.hl = sext i32 %i.hk to i64
  %i.hm = load ptr, ptr %i.dm, align 8, !tbaa !62
  %i.hn = load i64, ptr %i.dn, align 8, !tbaa !77
  %i.ho = mul nsw i64 %i.hn, %i.hl
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = load float, ptr %8, align 4, !tbaa !67
  %i.hr = fadd float %i.hq, 5.000000e-01
  %i.hs = fptosi float %i.hr to i32
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.ht ; 5 uses
  %i.hv = fptrunc double %.0173.us to float       ; 4 uses
  %i.hw = load i16, ptr %i.hu, align 2, !tbaa !80
  %i.hx = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  %i.hy = zext i16 %i.hw to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !51
  %i.ib = fmul float %i.ia, %i.hv                 ; 2 uses
  %i.ic = bitcast float %i.ib to i32
  %i.id = call float @llvm.fabs.f32(float %i.ib)
  %i.ie = bitcast float %i.id to i32              ; 10 uses
  %i.if = lshr i32 %i.ic, 16                      ; 3 uses
  %i.ig = trunc nuw i32 %i.if to i16
  %i.ih = and i16 %i.ig, -32768                   ; 3 uses
  %i.ii = icmp samesign ugt i32 %i.ie, 947912703
  br i1 %i.ii, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ij = icmp samesign ult i32 %i.ie, 855638017
  br i1 %i.ij, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ik = lshr i32 %i.ie, 23                      ; 2 uses
  %i.il = sub nuw nsw i32 126, %i.ik
  %i.im = and i32 %i.ie, 8388607
  %i.in = or disjoint i32 %i.im, 8388608          ; 2 uses
  %i.io = add nsw i32 %i.ik, -94
  %i.ip = shl i32 %i.in, %i.io                    ; 2 uses
  %i.iq = lshr i32 %i.in, %i.il                   ; 2 uses
  %i.ir = and i32 %i.if, 32768
  %i.is = or i32 %i.iq, %i.ir
  %i.it = trunc nuw i32 %i.is to i16              ; 2 uses
  %i.iu = icmp ugt i32 %i.ip, -2147483648
  br i1 %i.iu, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iv = icmp ne i32 %i.ip, -2147483648
  %i.iw = and i32 %i.iq, 1
  %.not.i.i.i.us = icmp eq i32 %i.iw, 0
  %or.cond.i.i.i.us = select i1 %i.iv, i1 true, i1 %.not.i.i.i.us
  br i1 %or.cond.i.i.i.us, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ix = add nuw i16 %i.it, 1
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bi:                                            ; preds = %bb.bd
  %i.iy = icmp samesign ugt i32 %i.ie, 2139095039
  br i1 %i.iy, label %bb.bm, label %bb.bj, !prof !73

bb.bj:                                            ; preds = %bb.bi
  %i.iz = icmp samesign ugt i32 %i.ie, 1199566847
  br i1 %i.iz, label %bb.bl, label %bb.bk, !prof !73

bb.bk:                                            ; preds = %bb.bj
  %i.ja = add nuw nsw i32 %i.ie, 134221823
  %i.jb = lshr i32 %i.ie, 13
  %i.jc = and i32 %i.jb, 1
  %i.jd = add nuw nsw i32 %i.ja, %i.jc
  %i.je = lshr i32 %i.jd, 13
  %i.jf = and i32 %i.if, 32768
  %i.jg = or i32 %i.je, %i.jf
  %i.jh = trunc i32 %i.jg to i16
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bl:                                            ; preds = %bb.bj
  %i.ji = or disjoint i16 %i.ih, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bm:                                            ; preds = %bb.bi
  %i.jj = or disjoint i16 %i.ih, 31744            ; 2 uses
  %i.jk = icmp eq i32 %i.ie, 2139095040
  br i1 %i.jk, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jl = lshr i32 %i.ie, 13
  %i.jm = and i32 %i.jl, 1023                     ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  %i.jo = zext i1 %i.jn to i16
  %i.jp = trunc nuw nsw i32 %i.jm to i16
  %i.jq = or i16 %i.jp, %i.jo
  %i.jr = or disjoint i16 %i.jq, %i.jj
  br label %_ZN9Imath_3_24halfmLEf.exit.us

_ZN9Imath_3_24halfmLEf.exit.us:                   ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bh, %bb.bg, %bb.be
  %.033.i.i.i.us = phi i16 [ %i.ih, %bb.be ], [ %i.jr, %bb.bn ], [ %i.ji, %bb.bl ], [ %i.jh, %bb.bk ], [ %i.jj, %bb.bm ], [ %i.ix, %bb.bh ], [ %i.it, %bb.bg ]
  store i16 %.033.i.i.i.us, ptr %i.hu, align 2, !tbaa !81
  %i.js = getelementptr inbounds nuw i8, ptr %i.hu, i64 2 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !80
  %i.ju = zext i16 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !51
  %i.jx = fmul float %i.jw, %i.hv                 ; 2 uses
  %i.jy = bitcast float %i.jx to i32
  %i.jz = call float @llvm.fabs.f32(float %i.jx)
  %i.ka = bitcast float %i.jz to i32              ; 10 uses
  %i.kb = lshr i32 %i.jy, 16                      ; 3 uses
  %i.kc = trunc nuw i32 %i.kb to i16
  %i.kd = and i16 %i.kc, -32768                   ; 3 uses
  %i.ke = icmp samesign ugt i32 %i.ka, 947912703
  br i1 %i.ke, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit.us
  %i.kf = icmp samesign ult i32 %i.ka, 855638017
  br i1 %i.kf, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kg = lshr i32 %i.ka, 23                      ; 2 uses
  %i.kh = sub nuw nsw i32 126, %i.kg
  %i.ki = and i32 %i.ka, 8388607
  %i.kj = or disjoint i32 %i.ki, 8388608          ; 2 uses
  %i.kk = add nsw i32 %i.kg, -94
  %i.kl = shl i32 %i.kj, %i.kk                    ; 2 uses
  %i.km = lshr i32 %i.kj, %i.kh                   ; 2 uses
  %i.kn = and i32 %i.kb, 32768
  %i.ko = or i32 %i.km, %i.kn
  %i.kp = trunc nuw i32 %i.ko to i16              ; 2 uses
  %i.kq = icmp ugt i32 %i.kl, -2147483648
  br i1 %i.kq, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kr = icmp ne i32 %i.kl, -2147483648
  %i.ks = and i32 %i.km, 1
  %.not.i.i.i240.us = icmp eq i32 %i.ks, 0
  %or.cond.i.i.i241.us = select i1 %i.kr, i1 true, i1 %.not.i.i.i240.us
  br i1 %or.cond.i.i.i241.us, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.kt = add nuw i16 %i.kp, 1
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

bb.bs:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit.us
  %i.ku = icmp samesign ugt i32 %i.ka, 2139095039
  br i1 %i.ku, label %bb.bw, label %bb.bt, !prof !73

bb.bt:                                            ; preds = %bb.bs
  %i.kv = icmp samesign ugt i32 %i.ka, 1199566847
  br i1 %i.kv, label %bb.bv, label %bb.bu, !prof !73

bb.bu:                                            ; preds = %bb.bt
  %i.kw = add nuw nsw i32 %i.ka, 134221823
  %i.kx = lshr i32 %i.ka, 13
  %i.ky = and i32 %i.kx, 1
  %i.kz = add nuw nsw i32 %i.kw, %i.ky
  %i.la = lshr i32 %i.kz, 13
  %i.lb = and i32 %i.kb, 32768
  %i.lc = or i32 %i.la, %i.lb
  %i.ld = trunc i32 %i.lc to i16
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

bb.bv:                                            ; preds = %bb.bt
  %i.le = or disjoint i16 %i.kd, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

bb.bw:                                            ; preds = %bb.bs
  %i.lf = or disjoint i16 %i.kd, 31744            ; 2 uses
  %i.lg = icmp eq i32 %i.ka, 2139095040
  br i1 %i.lg, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lh = lshr i32 %i.ka, 13
  %i.li = and i32 %i.lh, 1023                     ; 2 uses
  %i.lj = icmp eq i32 %i.li, 0
  %i.lk = zext i1 %i.lj to i16
  %i.ll = trunc nuw nsw i32 %i.li to i16
  %i.lm = or i16 %i.ll, %i.lk
  %i.ln = or disjoint i16 %i.lm, %i.lf
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

_ZN9Imath_3_24halfmLEf.exit243.us:                ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.br, %bb.bq, %bb.bo
  %.033.i.i.i242.us = phi i16 [ %i.kd, %bb.bo ], [ %i.ln, %bb.bx ], [ %i.le, %bb.bv ], [ %i.ld, %bb.bu ], [ %i.lf, %bb.bw ], [ %i.kt, %bb.br ], [ %i.kp, %bb.bq ]
  store i16 %.033.i.i.i242.us, ptr %i.js, align 2, !tbaa !81
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !80
  %i.lq = zext i16 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.lq
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !51
  %i.lt = fmul float %i.ls, %i.hv                 ; 2 uses
  %i.lu = bitcast float %i.lt to i32
  %i.lv = call float @llvm.fabs.f32(float %i.lt)
  %i.lw = bitcast float %i.lv to i32              ; 10 uses
  %i.lx = lshr i32 %i.lu, 16                      ; 3 uses
  %i.ly = trunc nuw i32 %i.lx to i16
  %i.lz = and i16 %i.ly, -32768                   ; 3 uses
  %i.ma = icmp samesign ugt i32 %i.lw, 947912703
  br i1 %i.ma, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit243.us
  %i.mb = icmp samesign ult i32 %i.lw, 855638017
  br i1 %i.mb, label %_ZN9Imath_3_24halfmLEf.exit247.us, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mc = lshr i32 %i.lw, 23                      ; 2 uses
  %i.md = sub nuw nsw i32 126, %i.mc
  %i.me = and i32 %i.lw, 8388607
  %i.mf = or disjoint i32 %i.me, 8388608          ; 2 uses
  %i.mg = add nsw i32 %i.mc, -94
  %i.mh = shl i32 %i.mf, %i.mg                    ; 2 uses
  %i.mi = lshr i32 %i.mf, %i.md                   ; 2 uses
  %i.mj = and i32 %i.lx, 32768
  %i.mk = or i32 %i.mi, %i.mj
  %i.ml = trunc nuw i32 %i.mk to i16              ; 2 uses
  %i.mm = icmp ugt i32 %i.mh, -2147483648
  br i1 %i.mm, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mn = icmp ne i32 %i.mh, -2147483648
  %i.mo = and i32 %i.mi, 1
  %.not.i.i.i244.us = icmp eq i32 %i.mo, 0
  %or.cond.i.i.i245.us = select i1 %i.mn, i1 true, i1 %.not.i.i.i244.us
  br i1 %or.cond.i.i.i245.us, label %_ZN9Imath_3_24halfmLEf.exit247.us, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.mp = add nuw i16 %i.ml, 1
  br label %_ZN9Imath_3_24halfmLEf.exit247.us

bb.cc:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit243.us
  %i.mq = icmp samesign ugt i32 %i.lw, 2139095039
  br i1 %i.mq, label %bb.cg, label %bb.cd, !prof !73

bb.cd:                                            ; preds = %bb.cc
  %i.mr = icmp samesign ugt i32 %i.lw, 1199566847
  br i1 %i.mr, label %bb.cf, label %bb.ce, !prof !73

bb.ce:                                            ; preds = %bb.cd
  %i.ms = add nuw nsw i32 %i.lw, 134221823
  %i.mt = lshr i32 %i.lw, 13
  %i.mu = and i32 %i.mt, 1
  %i.mv = add nuw nsw i32 %i.ms, %i.mu
  %i.mw = lshr i32 %i.mv, 13
  %i.mx = and i32 %i.lx, 32768
  %i.my = or i32 %i.mw, %i.mx
  %i.mz = trunc i32 %i.my to i16
  br label %_ZN9Imath_3_24halfmLEf.exit247.us

bb.cf:                                            ; preds = %bb.cd
  %i.na = or disjoint i16 %i.lz, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit247.us

bb.cg:                                            ; preds = %bb.cc
  %i.nb = or disjoint i16 %i.lz, 31744            ; 2 uses
  %i.nc = icmp eq i32 %i.lw, 2139095040
  br i1 %i.nc, label %_ZN9Imath_3_24halfmLEf.exit247.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nd = lshr i32 %i.lw, 13
  %i.ne = and i32 %i.nd, 1023                     ; 2 uses
  %i.nf = icmp eq i32 %i.ne, 0
  %i.ng = zext i1 %i.nf to i16
  %i.nh = trunc nuw nsw i32 %i.ne to i16
  %i.ni = or i16 %i.nh, %i.ng
  %i.nj = or disjoint i16 %i.ni, %i.nb
  br label %_ZN9Imath_3_24halfmLEf.exit247.us

_ZN9Imath_3_24halfmLEf.exit247.us:                ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cb, %bb.ca, %bb.by
  %.033.i.i.i246.us = phi i16 [ %i.lz, %bb.by ], [ %i.nj, %bb.ch ], [ %i.na, %bb.cf ], [ %i.mz, %bb.ce ], [ %i.nb, %bb.cg ], [ %i.mp, %bb.cb ], [ %i.ml, %bb.ca ]
  store i16 %.033.i.i.i246.us, ptr %i.lo, align 2, !tbaa !81
  %i.nk = getelementptr inbounds nuw i8, ptr %i.hu, i64 6 ; 2 uses
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !80
  %i.nm = zext i16 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.nm
  %i.no = load float, ptr %i.nn, align 4, !tbaa !51
  %i.np = fmul float %i.no, %i.hv                 ; 2 uses
  %i.nq = bitcast float %i.np to i32
  %i.nr = call float @llvm.fabs.f32(float %i.np)
  %i.ns = bitcast float %i.nr to i32              ; 10 uses
  %i.nt = lshr i32 %i.nq, 16                      ; 3 uses
  %i.nu = trunc nuw i32 %i.nt to i16
  %i.nv = and i16 %i.nu, -32768                   ; 3 uses
  %i.nw = icmp samesign ugt i32 %i.ns, 947912703
  br i1 %i.nw, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit247.us
  %i.nx = icmp samesign ult i32 %i.ns, 855638017
  br i1 %i.nx, label %_ZN9Imath_3_24halfmLEf.exit251.us, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ny = lshr i32 %i.ns, 23                      ; 2 uses
  %i.nz = sub nuw nsw i32 126, %i.ny
  %i.oa = and i32 %i.ns, 8388607
  %i.ob = or disjoint i32 %i.oa, 8388608          ; 2 uses
  %i.oc = add nsw i32 %i.ny, -94
  %i.od = shl i32 %i.ob, %i.oc                    ; 2 uses
  %i.oe = lshr i32 %i.ob, %i.nz                   ; 2 uses
  %i.of = and i32 %i.nt, 32768
  %i.og = or i32 %i.oe, %i.of
  %i.oh = trunc nuw i32 %i.og to i16              ; 2 uses
  %i.oi = icmp ugt i32 %i.od, -2147483648
  br i1 %i.oi, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oj = icmp ne i32 %i.od, -2147483648
  %i.ok = and i32 %i.oe, 1
  %.not.i.i.i248.us = icmp eq i32 %i.ok, 0
  %or.cond.i.i.i249.us = select i1 %i.oj, i1 true, i1 %.not.i.i.i248.us
  br i1 %or.cond.i.i.i249.us, label %_ZN9Imath_3_24halfmLEf.exit251.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ol = add nuw i16 %i.oh, 1
  br label %_ZN9Imath_3_24halfmLEf.exit251.us

bb.cm:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit247.us
  %i.om = icmp samesign ugt i32 %i.ns, 2139095039
  br i1 %i.om, label %bb.cq, label %bb.cn, !prof !73

bb.cn:                                            ; preds = %bb.cm
  %i.on = icmp samesign ugt i32 %i.ns, 1199566847
  br i1 %i.on, label %bb.cp, label %bb.co, !prof !73

bb.co:                                            ; preds = %bb.cn
  %i.oo = add nuw nsw i32 %i.ns, 134221823
  %i.op = lshr i32 %i.ns, 13
  %i.oq = and i32 %i.op, 1
  %i.or = add nuw nsw i32 %i.oo, %i.oq
  %i.os = lshr i32 %i.or, 13
  %i.ot = and i32 %i.nt, 32768
  %i.ou = or i32 %i.os, %i.ot
  %i.ov = trunc i32 %i.ou to i16
  br label %_ZN9Imath_3_24halfmLEf.exit251.us

bb.cp:                                            ; preds = %bb.cn
  %i.ow = or disjoint i16 %i.nv, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit251.us

bb.cq:                                            ; preds = %bb.cm
  %i.ox = or disjoint i16 %i.nv, 31744            ; 2 uses
  %i.oy = icmp eq i32 %i.ns, 2139095040
  br i1 %i.oy, label %_ZN9Imath_3_24halfmLEf.exit251.us, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oz = lshr i32 %i.ns, 13
  %i.pa = and i32 %i.oz, 1023                     ; 2 uses
  %i.pb = icmp eq i32 %i.pa, 0
  %i.pc = zext i1 %i.pb to i16
  %i.pd = trunc nuw nsw i32 %i.pa to i16
  %i.pe = or i16 %i.pd, %i.pc
  %i.pf = or disjoint i16 %i.pe, %i.ox
  br label %_ZN9Imath_3_24halfmLEf.exit251.us

_ZN9Imath_3_24halfmLEf.exit251.us:                ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cl, %bb.ck, %bb.ci
  %.033.i.i.i250.us = phi i16 [ %i.nv, %bb.ci ], [ %i.pf, %bb.cr ], [ %i.ow, %bb.cp ], [ %i.ov, %bb.co ], [ %i.ox, %bb.cq ], [ %i.ol, %bb.cl ], [ %i.oh, %bb.ck ]
  store i16 %.033.i.i.i250.us, ptr %i.nk, align 2, !tbaa !81
  %i.pg = fadd double %.2182479.us, %.0173.us     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.ph = add nuw nsw i32 %.0174480.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.ph, %i.df
  br i1 %exitcond.not, label %._crit_edge483.us, label %bb.at, !llvm.loop !14

._crit_edge483.us:                                ; preds = %_ZN9Imath_3_24halfmLEf.exit251.us
  %i.pi = add nuw nsw i32 %.0175486.us, 1         ; 2 uses
  %exitcond568.not = icmp eq i32 %i.pi, %i.df
  br i1 %exitcond568.not, label %._crit_edge489.split.us, label %.lr.ph482.us, !llvm.loop !15

.split.us491:                                     ; preds = %bb.at
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.cs

.split493.us:                                     ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.cs

._crit_edge489.split.us:                          ; preds = %._crit_edge483.us, %bb.as
  %.1181.lcssa = phi double [ %.0180496, %bb.as ], [ %i.pg, %._crit_edge483.us ] ; 2 uses
  %i.pl = add nuw nsw i32 %.0179497, 1            ; 2 uses
  %exitcond569.not = icmp eq i32 %i.pl, 6
  br i1 %exitcond569.not, label %bb.ad, label %bb.ah, !llvm.loop !16

bb.cs:                                            ; preds = %.split493.us, %.split.us491
  %.pn223 = phi { ptr, i32 } [ %i.pk, %.split493.us ], [ %i.pj, %.split.us491 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.el

bb.ct:                                            ; preds = %.lr.ph500, %_ZN9Imath_3_24halfmLEf.exit267
  %.0172498 = phi ptr [ %i.dw, %.lr.ph500 ], [ %i.wv, %_ZN9Imath_3_24halfmLEf.exit267 ] ; 6 uses
  %i.pm = load i16, ptr %.0172498, align 2, !tbaa !80
  %i.pn = zext i16 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.pn
  %i.pp = load float, ptr %i.po, align 4, !tbaa !51
  %i.pq = fmul float %i.pp, %i.ea                 ; 2 uses
  %i.pr = bitcast float %i.pq to i32
  %i.ps = call float @llvm.fabs.f32(float %i.pq)
  %i.pt = bitcast float %i.ps to i32              ; 10 uses
  %i.pu = lshr i32 %i.pr, 16                      ; 3 uses
  %i.pv = trunc nuw i32 %i.pu to i16
  %i.pw = and i16 %i.pv, -32768                   ; 3 uses
  %i.px = icmp samesign ugt i32 %i.pt, 947912703
  br i1 %i.px, label %bb.cu, label %bb.da

bb.cu:                                            ; preds = %bb.ct
  %i.py = icmp samesign ugt i32 %i.pt, 2139095039
  br i1 %i.py, label %bb.cv, label %bb.cx, !prof !73

bb.cv:                                            ; preds = %bb.cu
  %i.pz = or disjoint i16 %i.pw, 31744            ; 2 uses
  %i.qa = icmp eq i32 %i.pt, 2139095040
  br i1 %i.qa, label %_ZN9Imath_3_24halfmLEf.exit255, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qb = lshr i32 %i.pt, 13
  %i.qc = and i32 %i.qb, 1023                     ; 2 uses
  %i.qd = icmp eq i32 %i.qc, 0
  %i.qe = zext i1 %i.qd to i16
  %i.qf = trunc nuw nsw i32 %i.qc to i16
  %i.qg = or i16 %i.qf, %i.qe
  %i.qh = or disjoint i16 %i.qg, %i.pz
  br label %_ZN9Imath_3_24halfmLEf.exit255

bb.cx:                                            ; preds = %bb.cu
  %i.qi = icmp samesign ugt i32 %i.pt, 1199566847
  br i1 %i.qi, label %bb.cy, label %bb.cz, !prof !73

bb.cy:                                            ; preds = %bb.cx
  %i.qj = or disjoint i16 %i.pw, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit255

bb.cz:                                            ; preds = %bb.cx
  %i.qk = add nuw nsw i32 %i.pt, 134221823
  %i.ql = lshr i32 %i.pt, 13
  %i.qm = and i32 %i.ql, 1
  %i.qn = add nuw nsw i32 %i.qk, %i.qm
  %i.qo = lshr i32 %i.qn, 13
  %i.qp = and i32 %i.pu, 32768
  %i.qq = or i32 %i.qo, %i.qp
  %i.qr = trunc i32 %i.qq to i16
  br label %_ZN9Imath_3_24halfmLEf.exit255

bb.da:                                            ; preds = %bb.ct
  %i.qs = icmp samesign ult i32 %i.pt, 855638017
  br i1 %i.qs, label %_ZN9Imath_3_24halfmLEf.exit255, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qt = lshr i32 %i.pt, 23                      ; 2 uses
  %i.qu = sub nuw nsw i32 126, %i.qt
  %i.qv = and i32 %i.pt, 8388607
  %i.qw = or disjoint i32 %i.qv, 8388608          ; 2 uses
  %i.qx = add nsw i32 %i.qt, -94
  %i.qy = shl i32 %i.qw, %i.qx                    ; 2 uses
  %i.qz = lshr i32 %i.qw, %i.qu                   ; 2 uses
  %i.ra = and i32 %i.pu, 32768
  %i.rb = or i32 %i.qz, %i.ra
  %i.rc = trunc nuw i32 %i.rb to i16              ; 2 uses
  %i.rd = icmp ugt i32 %i.qy, -2147483648
  br i1 %i.rd, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.re = icmp ne i32 %i.qy, -2147483648
  %i.rf = and i32 %i.qz, 1
  %.not.i.i.i252 = icmp eq i32 %i.rf, 0
  %or.cond.i.i.i253 = select i1 %i.re, i1 true, i1 %.not.i.i.i252
  br i1 %or.cond.i.i.i253, label %_ZN9Imath_3_24halfmLEf.exit255, label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.rg = add nuw i16 %i.rc, 1
  br label %_ZN9Imath_3_24halfmLEf.exit255

_ZN9Imath_3_24halfmLEf.exit255:                   ; preds = %bb.cv, %bb.cw, %bb.cy, %bb.cz, %bb.da, %bb.dc, %bb.dd
  %.033.i.i.i254 = phi i16 [ %i.pw, %bb.da ], [ %i.qh, %bb.cw ], [ %i.qj, %bb.cy ], [ %i.qr, %bb.cz ], [ %i.pz, %bb.cv ], [ %i.rg, %bb.dd ], [ %i.rc, %bb.dc ]
  store i16 %.033.i.i.i254, ptr %.0172498, align 2, !tbaa !81
  %i.rh = getelementptr inbounds nuw i8, ptr %.0172498, i64 2 ; 2 uses
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !80
  %i.rj = zext i16 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.rj
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !51
  %i.rm = fmul float %i.rl, %i.ea                 ; 2 uses
  %i.rn = bitcast float %i.rm to i32
  %i.ro = call float @llvm.fabs.f32(float %i.rm)
  %i.rp = bitcast float %i.ro to i32              ; 10 uses
  %i.rq = lshr i32 %i.rn, 16                      ; 3 uses
  %i.rr = trunc nuw i32 %i.rq to i16
  %i.rs = and i16 %i.rr, -32768                   ; 3 uses
  %i.rt = icmp samesign ugt i32 %i.rp, 947912703
  br i1 %i.rt, label %bb.de, label %bb.dk

bb.de:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit255
  %i.ru = icmp samesign ugt i32 %i.rp, 2139095039
  br i1 %i.ru, label %bb.df, label %bb.dh, !prof !73

bb.df:                                            ; preds = %bb.de
  %i.rv = or disjoint i16 %i.rs, 31744            ; 2 uses
  %i.rw = icmp eq i32 %i.rp, 2139095040
  br i1 %i.rw, label %_ZN9Imath_3_24halfmLEf.exit259, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rx = lshr i32 %i.rp, 13
  %i.ry = and i32 %i.rx, 1023                     ; 2 uses
  %i.rz = icmp eq i32 %i.ry, 0
  %i.sa = zext i1 %i.rz to i16
  %i.sb = trunc nuw nsw i32 %i.ry to i16
  %i.sc = or i16 %i.sb, %i.sa
  %i.sd = or disjoint i16 %i.sc, %i.rv
  br label %_ZN9Imath_3_24halfmLEf.exit259

bb.dh:                                            ; preds = %bb.de
  %i.se = icmp samesign ugt i32 %i.rp, 1199566847
  br i1 %i.se, label %bb.di, label %bb.dj, !prof !73

bb.di:                                            ; preds = %bb.dh
  %i.sf = or disjoint i16 %i.rs, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit259

bb.dj:                                            ; preds = %bb.dh
  %i.sg = add nuw nsw i32 %i.rp, 134221823
  %i.sh = lshr i32 %i.rp, 13
  %i.si = and i32 %i.sh, 1
  %i.sj = add nuw nsw i32 %i.sg, %i.si
  %i.sk = lshr i32 %i.sj, 13
  %i.sl = and i32 %i.rq, 32768
  %i.sm = or i32 %i.sk, %i.sl
  %i.sn = trunc i32 %i.sm to i16
  br label %_ZN9Imath_3_24halfmLEf.exit259

bb.dk:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit255
  %i.so = icmp samesign ult i32 %i.rp, 855638017
  br i1 %i.so, label %_ZN9Imath_3_24halfmLEf.exit259, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sp = lshr i32 %i.rp, 23                      ; 2 uses
  %i.sq = sub nuw nsw i32 126, %i.sp
  %i.sr = and i32 %i.rp, 8388607
  %i.ss = or disjoint i32 %i.sr, 8388608          ; 2 uses
  %i.st = add nsw i32 %i.sp, -94
  %i.su = shl i32 %i.ss, %i.st                    ; 2 uses
  %i.sv = lshr i32 %i.ss, %i.sq                   ; 2 uses
  %i.sw = and i32 %i.rq, 32768
  %i.sx = or i32 %i.sv, %i.sw
  %i.sy = trunc nuw i32 %i.sx to i16              ; 2 uses
  %i.sz = icmp ugt i32 %i.su, -2147483648
  br i1 %i.sz, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ta = icmp ne i32 %i.su, -2147483648
  %i.tb = and i32 %i.sv, 1
  %.not.i.i.i256 = icmp eq i32 %i.tb, 0
  %or.cond.i.i.i257 = select i1 %i.ta, i1 true, i1 %.not.i.i.i256
  br i1 %or.cond.i.i.i257, label %_ZN9Imath_3_24halfmLEf.exit259, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.tc = add nuw i16 %i.sy, 1
  br label %_ZN9Imath_3_24halfmLEf.exit259

_ZN9Imath_3_24halfmLEf.exit259:                   ; preds = %bb.df, %bb.dg, %bb.di, %bb.dj, %bb.dk, %bb.dm, %bb.dn
  %.033.i.i.i258 = phi i16 [ %i.rs, %bb.dk ], [ %i.sd, %bb.dg ], [ %i.sf, %bb.di ], [ %i.sn, %bb.dj ], [ %i.rv, %bb.df ], [ %i.tc, %bb.dn ], [ %i.sy, %bb.dm ]
  store i16 %.033.i.i.i258, ptr %i.rh, align 2, !tbaa !81
  %i.td = getelementptr inbounds nuw i8, ptr %.0172498, i64 4 ; 2 uses
  %i.te = load i16, ptr %i.td, align 2, !tbaa !80
  %i.tf = zext i16 %i.te to i64
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !51
  %i.ti = fmul float %i.th, %i.ea                 ; 2 uses
  %i.tj = bitcast float %i.ti to i32
  %i.tk = call float @llvm.fabs.f32(float %i.ti)
  %i.tl = bitcast float %i.tk to i32              ; 10 uses
  %i.tm = lshr i32 %i.tj, 16                      ; 3 uses
  %i.tn = trunc nuw i32 %i.tm to i16
  %i.to = and i16 %i.tn, -32768                   ; 3 uses
  %i.tp = icmp samesign ugt i32 %i.tl, 947912703
  br i1 %i.tp, label %bb.do, label %bb.du

bb.do:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit259
  %i.tq = icmp samesign ugt i32 %i.tl, 2139095039
  br i1 %i.tq, label %bb.dp, label %bb.dr, !prof !73

bb.dp:                                            ; preds = %bb.do
  %i.tr = or disjoint i16 %i.to, 31744            ; 2 uses
  %i.ts = icmp eq i32 %i.tl, 2139095040
  br i1 %i.ts, label %_ZN9Imath_3_24halfmLEf.exit263, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.tt = lshr i32 %i.tl, 13
  %i.tu = and i32 %i.tt, 1023                     ; 2 uses
  %i.tv = icmp eq i32 %i.tu, 0
  %i.tw = zext i1 %i.tv to i16
  %i.tx = trunc nuw nsw i32 %i.tu to i16
  %i.ty = or i16 %i.tx, %i.tw
  %i.tz = or disjoint i16 %i.ty, %i.tr
  br label %_ZN9Imath_3_24halfmLEf.exit263

bb.dr:                                            ; preds = %bb.do
  %i.ua = icmp samesign ugt i32 %i.tl, 1199566847
  br i1 %i.ua, label %bb.ds, label %bb.dt, !prof !73

bb.ds:                                            ; preds = %bb.dr
  %i.ub = or disjoint i16 %i.to, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit263

bb.dt:                                            ; preds = %bb.dr
  %i.uc = add nuw nsw i32 %i.tl, 134221823
  %i.ud = lshr i32 %i.tl, 13
  %i.ue = and i32 %i.ud, 1
  %i.uf = add nuw nsw i32 %i.uc, %i.ue
  %i.ug = lshr i32 %i.uf, 13
  %i.uh = and i32 %i.tm, 32768
  %i.ui = or i32 %i.ug, %i.uh
  %i.uj = trunc i32 %i.ui to i16
  br label %_ZN9Imath_3_24halfmLEf.exit263

bb.du:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit259
  %i.uk = icmp samesign ult i32 %i.tl, 855638017
  br i1 %i.uk, label %_ZN9Imath_3_24halfmLEf.exit263, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ul = lshr i32 %i.tl, 23                      ; 2 uses
  %i.um = sub nuw nsw i32 126, %i.ul
  %i.un = and i32 %i.tl, 8388607
  %i.uo = or disjoint i32 %i.un, 8388608          ; 2 uses
  %i.up = add nsw i32 %i.ul, -94
  %i.uq = shl i32 %i.uo, %i.up                    ; 2 uses
  %i.ur = lshr i32 %i.uo, %i.um                   ; 2 uses
  %i.us = and i32 %i.tm, 32768
  %i.ut = or i32 %i.ur, %i.us
  %i.uu = trunc nuw i32 %i.ut to i16              ; 2 uses
  %i.uv = icmp ugt i32 %i.uq, -2147483648
  br i1 %i.uv, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.uw = icmp ne i32 %i.uq, -2147483648
  %i.ux = and i32 %i.ur, 1
  %.not.i.i.i260 = icmp eq i32 %i.ux, 0
  %or.cond.i.i.i261 = select i1 %i.uw, i1 true, i1 %.not.i.i.i260
  br i1 %or.cond.i.i.i261, label %_ZN9Imath_3_24halfmLEf.exit263, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.uy = add nuw i16 %i.uu, 1
  br label %_ZN9Imath_3_24halfmLEf.exit263

_ZN9Imath_3_24halfmLEf.exit263:                   ; preds = %bb.dp, %bb.dq, %bb.ds, %bb.dt, %bb.du, %bb.dw, %bb.dx
  %.033.i.i.i262 = phi i16 [ %i.to, %bb.du ], [ %i.tz, %bb.dq ], [ %i.ub, %bb.ds ], [ %i.uj, %bb.dt ], [ %i.tr, %bb.dp ], [ %i.uy, %bb.dx ], [ %i.uu, %bb.dw ]
  store i16 %.033.i.i.i262, ptr %i.td, align 2, !tbaa !81
  %i.uz = getelementptr inbounds nuw i8, ptr %.0172498, i64 6 ; 2 uses
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !80
  %i.vb = zext i16 %i.va to i64
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.vb
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !51
  %i.ve = fmul float %i.vd, %i.ea                 ; 2 uses
  %i.vf = bitcast float %i.ve to i32
  %i.vg = call float @llvm.fabs.f32(float %i.ve)
  %i.vh = bitcast float %i.vg to i32              ; 10 uses
  %i.vi = lshr i32 %i.vf, 16                      ; 3 uses
  %i.vj = trunc nuw i32 %i.vi to i16
  %i.vk = and i16 %i.vj, -32768                   ; 3 uses
  %i.vl = icmp samesign ugt i32 %i.vh, 947912703
  br i1 %i.vl, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit263
  %i.vm = icmp samesign ugt i32 %i.vh, 2139095039
  br i1 %i.vm, label %bb.dz, label %bb.eb, !prof !73

bb.dz:                                            ; preds = %bb.dy
  %i.vn = or disjoint i16 %i.vk, 31744            ; 2 uses
  %i.vo = icmp eq i32 %i.vh, 2139095040
  br i1 %i.vo, label %_ZN9Imath_3_24halfmLEf.exit267, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vp = lshr i32 %i.vh, 13
  %i.vq = and i32 %i.vp, 1023                     ; 2 uses
  %i.vr = icmp eq i32 %i.vq, 0
  %i.vs = zext i1 %i.vr to i16
  %i.vt = trunc nuw nsw i32 %i.vq to i16
  %i.vu = or i16 %i.vt, %i.vs
  %i.vv = or disjoint i16 %i.vu, %i.vn
  br label %_ZN9Imath_3_24halfmLEf.exit267

bb.eb:                                            ; preds = %bb.dy
  %i.vw = icmp samesign ugt i32 %i.vh, 1199566847
  br i1 %i.vw, label %bb.ec, label %bb.ed, !prof !73

bb.ec:                                            ; preds = %bb.eb
  %i.vx = or disjoint i16 %i.vk, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit267

bb.ed:                                            ; preds = %bb.eb
  %i.vy = add nuw nsw i32 %i.vh, 134221823
  %i.vz = lshr i32 %i.vh, 13
  %i.wa = and i32 %i.vz, 1
  %i.wb = add nuw nsw i32 %i.vy, %i.wa
  %i.wc = lshr i32 %i.wb, 13
  %i.wd = and i32 %i.vi, 32768
  %i.we = or i32 %i.wc, %i.wd
  %i.wf = trunc i32 %i.we to i16
  br label %_ZN9Imath_3_24halfmLEf.exit267

bb.ee:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit263
  %i.wg = icmp samesign ult i32 %i.vh, 855638017
  br i1 %i.wg, label %_ZN9Imath_3_24halfmLEf.exit267, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.wh = lshr i32 %i.vh, 23                      ; 2 uses
  %i.wi = sub nuw nsw i32 126, %i.wh
  %i.wj = and i32 %i.vh, 8388607
  %i.wk = or disjoint i32 %i.wj, 8388608          ; 2 uses
  %i.wl = add nsw i32 %i.wh, -94
  %i.wm = shl i32 %i.wk, %i.wl                    ; 2 uses
  %i.wn = lshr i32 %i.wk, %i.wi                   ; 2 uses
  %i.wo = and i32 %i.vi, 32768
  %i.wp = or i32 %i.wn, %i.wo
  %i.wq = trunc nuw i32 %i.wp to i16              ; 2 uses
  %i.wr = icmp ugt i32 %i.wm, -2147483648
  br i1 %i.wr, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ws = icmp ne i32 %i.wm, -2147483648
  %i.wt = and i32 %i.wn, 1
  %.not.i.i.i264 = icmp eq i32 %i.wt, 0
  %or.cond.i.i.i265 = select i1 %i.ws, i1 true, i1 %.not.i.i.i264
  br i1 %or.cond.i.i.i265, label %_ZN9Imath_3_24halfmLEf.exit267, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.wu = add nuw i16 %i.wq, 1
  br label %_ZN9Imath_3_24halfmLEf.exit267

_ZN9Imath_3_24halfmLEf.exit267:                   ; preds = %bb.dz, %bb.ea, %bb.ec, %bb.ed, %bb.ee, %bb.eg, %bb.eh
  %.033.i.i.i266 = phi i16 [ %i.vk, %bb.ee ], [ %i.vv, %bb.ea ], [ %i.vx, %bb.ec ], [ %i.wf, %bb.ed ], [ %i.vn, %bb.dz ], [ %i.wu, %bb.eh ], [ %i.wq, %bb.eg ]
  store i16 %.033.i.i.i266, ptr %i.uz, align 2, !tbaa !81
  %i.wv = getelementptr inbounds nuw i8, ptr %.0172498, i64 8 ; 2 uses
  %i.ww = icmp ult ptr %i.wv, %i.dx
  br i1 %i.ww, label %bb.ct, label %._crit_edge501, !llvm.loop !17

._crit_edge501:                                   ; preds = %_ZN9Imath_3_24halfmLEf.exit267, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %1, label %bb.ei, label %_ZNSolsEPFRSoS_E.exit269

bb.ei:                                            ; preds = %._crit_edge501
  %i.wx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %.loopexit.split-lp421 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268: ; preds = %bb.ei
  %i.wy = load ptr, ptr @_ZSt4cout, align 8, !tbaa !26
  %i.wz = getelementptr i8, ptr %i.wy, i64 -24
  %i.xa = load i64, ptr %i.wz, align 8
  %i.xb = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 240
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i333 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i333, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 56
  %i.xf = load i8, ptr %i.xe, align 8, !tbaa !50
  %.not.i1.i.i335 = icmp eq i8 %i.xf, 0
  br i1 %.not.i1.i.i335, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 67
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336

bb.ek:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.xd)
          to label %.noexc339 unwind label %.loopexit.split-lp421

.noexc339:                                        ; preds = %bb.ek
  %i.xi = load ptr, ptr %i.xd, align 8, !tbaa !26
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 48
  %i.xk = load ptr, ptr %i.xj, align 8
  %i.xl = invoke noundef signext i8 %i.xk(ptr noundef nonnull align 8 dereferenceable(570) %i.xd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336 unwind label %.loopexit.split-lp421, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336: ; preds = %.noexc339, %bb.ej
  %.0.i.i.i337 = phi i8 [ %i.xh, %bb.ej ], [ %i.xl, %.noexc339 ]
  %i.xm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i337)
          to label %.noexc341 unwind label %.loopexit.split-lp421

.noexc341:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336
  %i.xn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xm)
          to label %_ZNSolsEPFRSoS_E.exit269 unwind label %.loopexit.split-lp421 ; 0 uses

bb.el:                                            ; preds = %.loopexit415, %.loopexit.split-lp416, %bb.af, %bb.cs, %bb.ag, %bb.ae
  %.pn223.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ae ], [ %i.ed, %bb.af ], [ %i.ee, %bb.ag ], [ %.pn223, %bb.cs ], [ %lpad.loopexit417, %.loopexit415 ], [ %lpad.loopexit.split-lp418, %.loopexit.split-lp416 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.hs

_ZNSolsEPFRSoS_E.exit269:                         ; preds = %.noexc341, %._crit_edge501
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.xo = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %bb.em unwind label %bb.et

bb.em:                                            ; preds = %_ZNSolsEPFRSoS_E.exit269
  %i.xp = load <4 x i32>, ptr %i.xo, align 4, !tbaa !59
  store <4 x i32> %i.xp, ptr %10, align 16, !tbaa !59
  %i.xq = invoke noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.en unwind label %bb.eu     ; 3 uses

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  store <4 x i32> <i32 0, i32 0, i32 99, i32 599>, ptr %11, align 16, !tbaa !59
  %i.xr = invoke noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.eo unwind label %bb.ev     ; 3 uses

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.ep unwind label %bb.ev

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN11EnvmapImage5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %bb.eq unwind label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  %i.xs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %bb.er unwind label %bb.ew     ; 2 uses

bb.er:                                            ; preds = %bb.eq
  %i.xt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %.preheader413 unwind label %bb.ex ; 2 uses

.preheader413:                                    ; preds = %bb.er
  %i.xu = icmp sgt i32 %i.xr, 0
  %i.xv = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.xw = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xz = icmp sgt i32 %i.xq, 0
  %i.ya = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ye = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  br label %bb.ey

bb.es:                                            ; preds = %._crit_edge555
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %.not = icmp eq ptr %.1406.lcssa, %0
  br i1 %.not, label %bb.hq, label %bb.hf

bb.et:                                            ; preds = %_ZNSolsEPFRSoS_E.exit269
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.eu:                                            ; preds = %bb.em
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.ev:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.ew:                                            ; preds = %bb.eq
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.ex:                                            ; preds = %bb.er
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.ey:                                            ; preds = %.preheader413, %._crit_edge555
  %.0171556 = phi i32 [ 0, %.preheader413 ], [ %i.zg, %._crit_edge555 ] ; 4 uses
  br i1 %1, label %bb.ez, label %_ZNSolsEPFRSoS_E.exit271

bb.ez:                                            ; preds = %bb.ey
  %i.yn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270: ; preds = %bb.ez
  %i.yo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0171556)
          to label %bb.fa unwind label %.loopexit ; 3 uses

bb.fa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !26
  %i.yq = getelementptr i8, ptr %i.yp, i64 -24
  %i.yr = load i64, ptr %i.yq, align 8
  %i.ys = getelementptr inbounds i8, ptr %i.yo, i64 %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 240
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i344 = icmp eq ptr %i.yu, null
  br i1 %.not.i.i.i344, label %bb.fb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZSt16__throw_bad_castv() #9
          to label %.noexc349 unwind label %.loopexit.split-lp

.noexc349:                                        ; preds = %bb.fb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345: ; preds = %bb.fa
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 56
  %i.yw = load i8, ptr %i.yv, align 8, !tbaa !50
  %.not.i1.i.i346 = icmp eq i8 %i.yw, 0
  br i1 %.not.i1.i.i346, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 67
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347

bb.fd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yu)
          to label %.noexc350 unwind label %.loopexit

.noexc350:                                        ; preds = %bb.fd
  %i.yz = load ptr, ptr %i.yu, align 8, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 48
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = invoke noundef signext i8 %i.zb(ptr noundef nonnull align 8 dereferenceable(570) %i.yu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347 unwind label %.loopexit, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347: ; preds = %.noexc350, %bb.fc
  %.0.i.i.i348 = phi i8 [ %i.yy, %bb.fc ], [ %i.zc, %.noexc350 ]
  %i.zd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.yo, i8 noundef signext %.0.i.i.i348)
          to label %.noexc352 unwind label %.loopexit

.noexc352:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347
  %i.ze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zd)
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
  br i1 %i.xu, label %.preheader412, label %._crit_edge555

.preheader412:                                    ; preds = %_ZNSolsEPFRSoS_E.exit271, %._crit_edge553
  %.0170554 = phi i32 [ %i.zh, %._crit_edge553 ], [ 0, %_ZNSolsEPFRSoS_E.exit271 ] ; 2 uses
  %i.zf = uitofp nneg i32 %.0170554 to float
  br label %bb.fe

._crit_edge555:                                   ; preds = %._crit_edge553, %_ZNSolsEPFRSoS_E.exit271
  %i.zg = add nuw nsw i32 %.0171556, 1            ; 2 uses
  %exitcond575.not = icmp eq i32 %i.zg, 6
  br i1 %exitcond575.not, label %bb.es, label %bb.ey, !llvm.loop !18

._crit_edge553:                                   ; preds = %_ZN9Imath_3_24halfaSEf.exit286
  %i.zh = add nuw nsw i32 %.0170554, 1            ; 2 uses
  %exitcond574.not = icmp eq i32 %i.zh, %i.xr
  br i1 %exitcond574.not, label %._crit_edge555, label %.preheader412, !llvm.loop !19

bb.fe:                                            ; preds = %.preheader412, %_ZN9Imath_3_24halfaSEf.exit286
  %.0169551 = phi i32 [ 0, %.preheader412 ], [ %i.ajm, %_ZN9Imath_3_24halfaSEf.exit286 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.zi = uitofp nneg i32 %.0169551 to float
  store float %i.zi, ptr %12, align 8, !tbaa !67
  store float %i.zf, ptr %i.xv, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  invoke void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %13, i32 noundef %.0171556, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.ff unwind label %bb.ha

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.zj = load <2 x float>, ptr %12, align 8, !tbaa !72
  store <2 x float> %i.zj, ptr %15, align 8, !tbaa !72
  invoke void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %14, i32 noundef %.0171556, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dead_on_return %15)
          to label %bb.fg unwind label %bb.hb

bb.fg:                                            ; preds = %bb.ff
  %i.zk = load float, ptr %i.xw, align 4, !tbaa !68
  %i.zl = fadd float %i.zk, 5.000000e-01
  %i.zm = fptosi float %i.zl to i32
  %i.zn = sext i32 %i.zm to i64
  %i.zo = load ptr, ptr %i.xx, align 8, !tbaa !62
  %i.zp = load i64, ptr %i.xy, align 8, !tbaa !77
  %i.zq = mul nsw i64 %i.zp, %i.zn
  %i.zr = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %i.zq
  %i.zs = load float, ptr %14, align 4, !tbaa !67
  %i.zt = fadd float %i.zs, 5.000000e-01
  %i.zu = fptosi float %i.zt to i32
  %i.zv = sext i32 %i.zu to i64
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.zv ; 4 uses
  br i1 %i.xz, label %.preheader411.us, label %.split545.us

.preheader411.us:                                 ; preds = %bb.fg, %._crit_edge521.split.us.us
  %.0151541.us = phi i32 [ %i.ach, %._crit_edge521.split.us.us ], [ 0, %bb.fg ] ; 3 uses
  %.0165536.us = phi double [ %.3168.us.us, %._crit_edge521.split.us.us ], [ 0.000000e+00, %bb.fg ]
  %i.zx = phi <4 x double> [ %i.ace, %._crit_edge521.split.us.us ], [ zeroinitializer, %bb.fg ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge509.us.us, %.preheader411.us
  %.0150520.us.us = phi i32 [ 0, %.preheader411.us ], [ %i.acg, %._crit_edge509.us.us ] ; 2 uses
  %.1166515.us.us = phi double [ %.0165536.us, %.preheader411.us ], [ %.3168.us.us, %._crit_edge509.us.us ]
  %i.zy = phi <4 x double> [ %i.zx, %.preheader411.us ], [ %i.ace, %._crit_edge509.us.us ]
  %i.zz = uitofp nneg i32 %.0150520.us.us to float
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fl, %.preheader.us.us
  %.0507.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.acf, %bb.fl ] ; 2 uses
  %.2167502.us.us = phi double [ %.1166515.us.us, %.preheader.us.us ], [ %.3168.us.us, %bb.fl ] ; 2 uses
  %i.aaa = phi <4 x double> [ %i.zy, %.preheader.us.us ], [ %i.ace, %bb.fl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.aab = uitofp nneg i32 %.0507.us.us to float
  store float %i.aab, ptr %16, align 8, !tbaa !67
  store float %i.zz, ptr %i.ya, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  invoke void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %17, i32 noundef %.0151541.us, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(8) %16)
          to label %bb.fi unwind label %.split.us527.split.us

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.aac = load <2 x float>, ptr %16, align 8, !tbaa !72
  store <2 x float> %i.aac, ptr %19, align 8, !tbaa !72
  invoke void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %18, i32 noundef %.0151541.us, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dead_on_return %19)
          to label %bb.fj unwind label %.split529.us.split.us

bb.fj:                                            ; preds = %bb.fi
  %i.aad = load float, ptr %17, align 4, !tbaa !71
  %i.aae = load float, ptr %13, align 4, !tbaa !71
  %i.aaf = load float, ptr %i.yb, align 4, !tbaa !75
  %i.aag = load float, ptr %i.yc, align 4, !tbaa !75
  %i.aah = fmul float %i.aaf, %i.aag
  %i.aai = call float @llvm.fmuladd.f32(float %i.aad, float %i.aae, float %i.aah)
  %i.aaj = load float, ptr %i.yd, align 4, !tbaa !76
  %i.aak = load float, ptr %i.ye, align 4, !tbaa !76
  %i.aal = call noundef float @llvm.fmuladd.f32(float %i.aaj, float %i.aak, float %i.aai) ; 2 uses
  %i.aam = fcmp ugt float %i.aal, 0.000000e+00
  br i1 %i.aam, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.aan = fpext float %i.aal to double           ; 2 uses
  %i.aao = load float, ptr %i.yf, align 4, !tbaa !68
  %i.aap = fadd float %i.aao, 5.000000e-01
  %i.aaq = fptosi float %i.aap to i32
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = load ptr, ptr %i.yg, align 8, !tbaa !62
  %i.aat = load i64, ptr %i.yh, align 8, !tbaa !77
  %i.aau = mul nsw i64 %i.aat, %i.aar
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.aas, i64 %i.aau
  %i.aaw = load float, ptr %18, align 4, !tbaa !67
  %i.aax = fadd float %i.aaw, 5.000000e-01
  %i.aay = fptosi float %i.aax to i32
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = getelementptr inbounds [8 x i8], ptr %i.aav, i64 %i.aaz ; 4 uses
  %i.abb = fadd double %.2167502.us.us, %i.aan
  %i.abc = load i16, ptr %i.aba, align 2, !tbaa !80
  %i.abd = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  %i.abe = zext i16 %i.abc to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %i.abe
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !51
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 2
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !80
  %i.abj = zext i16 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %i.abj
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !51
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !80
  %i.abo = zext i16 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %i.abo
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !51
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aba, i64 6
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !80
  %i.abt = zext i16 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %i.abt
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !51
  %i.abw = insertelement <4 x float> poison, float %i.abg, i64 0
  %i.abx = insertelement <4 x float> %i.abw, float %i.abl, i64 1
  %i.aby = insertelement <4 x float> %i.abx, float %i.abq, i64 2
  %i.abz = insertelement <4 x float> %i.aby, float %i.abv, i64 3
  %i.aca = fpext <4 x float> %i.abz to <4 x double>
  %i.acb = insertelement <4 x double> poison, double %i.aan, i64 0
  %i.acc = shufflevector <4 x double> %i.acb, <4 x double> poison, <4 x i32> zeroinitializer
  %i.acd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aca, <4 x double> %i.acc, <4 x double> %i.aaa)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.3168.us.us = phi double [ %i.abb, %bb.fk ], [ %.2167502.us.us, %bb.fj ] ; 4 uses
  %i.ace = phi <4 x double> [ %i.acd, %bb.fk ], [ %i.aaa, %bb.fj ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.acf = add nuw nsw i32 %.0507.us.us, 1        ; 2 uses
  %exitcond570.not = icmp eq i32 %i.acf, %i.xq
  br i1 %exitcond570.not, label %._crit_edge509.us.us, label %bb.fh, !llvm.loop !20

._crit_edge509.us.us:                             ; preds = %bb.fl
  %i.acg = add nuw nsw i32 %.0150520.us.us, 1     ; 2 uses
  %exitcond571.not = icmp eq i32 %i.acg, %i.xq
  br i1 %exitcond571.not, label %._crit_edge521.split.us.us, label %.preheader.us.us, !llvm.loop !21

._crit_edge521.split.us.us:                       ; preds = %._crit_edge509.us.us
  %i.ach = add nuw nsw i32 %.0151541.us, 1        ; 2 uses
  %exitcond572.not = icmp eq i32 %i.ach, 6
  br i1 %exitcond572.not, label %.split545.us, label %.preheader411.us, !llvm.loop !22

.split.us527.split.us:                            ; preds = %bb.fh
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

.split529.us.split.us:                            ; preds = %bb.fi
  %i.acj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  br label %bb.hc

.split545.us:                                     ; preds = %._crit_edge521.split.us.us, %bb.fg
  %.us-phi546 = phi double [ 0.000000e+00, %bb.fg ], [ %.3168.us.us, %._crit_edge521.split.us.us ] ; 4 uses
  %i.ack = phi <4 x double> [ zeroinitializer, %bb.fg ], [ %i.ace, %._crit_edge521.split.us.us ] ; 4 uses
  %i.acl = extractelement <4 x double> %i.ack, i64 0
  %i.acm = fdiv double %i.acl, %.us-phi546
  %i.acn = fptrunc double %i.acm to float         ; 2 uses
  %i.aco = bitcast float %i.acn to i32
  %i.acp = call float @llvm.fabs.f32(float %i.acn)
  %i.acq = bitcast float %i.acp to i32            ; 10 uses
  %i.acr = lshr i32 %i.aco, 16                    ; 3 uses
  %i.acs = trunc nuw i32 %i.acr to i16
  %i.act = and i16 %i.acs, -32768                 ; 3 uses
  %i.acu = icmp samesign ugt i32 %i.acq, 947912703
  br i1 %i.acu, label %bb.fm, label %bb.fs

bb.fm:                                            ; preds = %.split545.us
  %i.acv = icmp samesign ugt i32 %i.acq, 2139095039
  br i1 %i.acv, label %bb.fn, label %bb.fp, !prof !73

bb.fn:                                            ; preds = %bb.fm
  %i.acw = or disjoint i16 %i.act, 31744          ; 2 uses
  %i.acx = icmp eq i32 %i.acq, 2139095040
  br i1 %i.acx, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.acy = lshr i32 %i.acq, 13
  %i.acz = and i32 %i.acy, 1023                   ; 2 uses
  %i.ada = icmp eq i32 %i.acz, 0
  %i.adb = zext i1 %i.ada to i16
  %i.adc = trunc nuw nsw i32 %i.acz to i16
  %i.add = or i16 %i.adc, %i.adb
  %i.ade = or disjoint i16 %i.add, %i.acw
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.fp:                                            ; preds = %bb.fm
  %i.adf = icmp samesign ugt i32 %i.acq, 1199566847
  br i1 %i.adf, label %bb.fq, label %bb.fr, !prof !73

bb.fq:                                            ; preds = %bb.fp
  %i.adg = or disjoint i16 %i.act, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.fr:                                            ; preds = %bb.fp
  %i.adh = add nuw nsw i32 %i.acq, 134221823
  %i.adi = lshr i32 %i.acq, 13
  %i.adj = and i32 %i.adi, 1
  %i.adk = add nuw nsw i32 %i.adh, %i.adj
  %i.adl = lshr i32 %i.adk, 13
  %i.adm = and i32 %i.acr, 32768
  %i.adn = or i32 %i.adl, %i.adm
  %i.ado = trunc i32 %i.adn to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.fs:                                            ; preds = %.split545.us
  %i.adp = icmp samesign ult i32 %i.acq, 855638017
  br i1 %i.adp, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adq = lshr i32 %i.acq, 23                    ; 2 uses
  %i.adr = sub nuw nsw i32 126, %i.adq
  %i.ads = and i32 %i.acq, 8388607
  %i.adt = or disjoint i32 %i.ads, 8388608        ; 2 uses
  %i.adu = add nsw i32 %i.adq, -94
  %i.adv = shl i32 %i.adt, %i.adu                 ; 2 uses
  %i.adw = lshr i32 %i.adt, %i.adr                ; 2 uses
  %i.adx = and i32 %i.acr, 32768
  %i.ady = or i32 %i.adw, %i.adx
  %i.adz = trunc nuw i32 %i.ady to i16            ; 2 uses
  %i.aea = icmp ugt i32 %i.adv, -2147483648
  br i1 %i.aea, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aeb = icmp ne i32 %i.adv, -2147483648
  %i.aec = and i32 %i.adw, 1
  %.not.i.i.i272 = icmp eq i32 %i.aec, 0
  %or.cond.i.i.i273 = select i1 %i.aeb, i1 true, i1 %.not.i.i.i272
  br i1 %or.cond.i.i.i273, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.aed = add nuw i16 %i.adz, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.fn, %bb.fo, %bb.fq, %bb.fr, %bb.fs, %bb.fu, %bb.fv
  %.033.i.i.i274 = phi i16 [ %i.act, %bb.fs ], [ %i.ade, %bb.fo ], [ %i.adg, %bb.fq ], [ %i.ado, %bb.fr ], [ %i.acw, %bb.fn ], [ %i.aed, %bb.fv ], [ %i.adz, %bb.fu ]
  store i16 %.033.i.i.i274, ptr %i.zw, align 2, !tbaa !81
  %i.aee = extractelement <4 x double> %i.ack, i64 1
  %i.aef = fdiv double %i.aee, %.us-phi546
  %i.aeg = fptrunc double %i.aef to float         ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.zw, i64 2
  %i.aei = bitcast float %i.aeg to i32
  %i.aej = call float @llvm.fabs.f32(float %i.aeg)
  %i.aek = bitcast float %i.aej to i32            ; 10 uses
  %i.ael = lshr i32 %i.aei, 16                    ; 3 uses
  %i.aem = trunc nuw i32 %i.ael to i16
  %i.aen = and i16 %i.aem, -32768                 ; 3 uses
  %i.aeo = icmp samesign ugt i32 %i.aek, 947912703
  br i1 %i.aeo, label %bb.fw, label %bb.gc

bb.fw:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.aep = icmp samesign ugt i32 %i.aek, 2139095039
  br i1 %i.aep, label %bb.fx, label %bb.fz, !prof !73

bb.fx:                                            ; preds = %bb.fw
  %i.aeq = or disjoint i16 %i.aen, 31744          ; 2 uses
  %i.aer = icmp eq i32 %i.aek, 2139095040
  br i1 %i.aer, label %_ZN9Imath_3_24halfaSEf.exit278, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aes = lshr i32 %i.aek, 13
  %i.aet = and i32 %i.aes, 1023                   ; 2 uses
  %i.aeu = icmp eq i32 %i.aet, 0
  %i.aev = zext i1 %i.aeu to i16
  %i.aew = trunc nuw nsw i32 %i.aet to i16
  %i.aex = or i16 %i.aew, %i.aev
  %i.aey = or disjoint i16 %i.aex, %i.aeq
  br label %_ZN9Imath_3_24halfaSEf.exit278

bb.fz:                                            ; preds = %bb.fw
  %i.aez = icmp samesign ugt i32 %i.aek, 1199566847
  br i1 %i.aez, label %bb.ga, label %bb.gb, !prof !73

bb.ga:                                            ; preds = %bb.fz
  %i.afa = or disjoint i16 %i.aen, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit278

bb.gb:                                            ; preds = %bb.fz
  %i.afb = add nuw nsw i32 %i.aek, 134221823
  %i.afc = lshr i32 %i.aek, 13
  %i.afd = and i32 %i.afc, 1
  %i.afe = add nuw nsw i32 %i.afb, %i.afd
  %i.aff = lshr i32 %i.afe, 13
  %i.afg = and i32 %i.ael, 32768
  %i.afh = or i32 %i.aff, %i.afg
  %i.afi = trunc i32 %i.afh to i16
  br label %_ZN9Imath_3_24halfaSEf.exit278

bb.gc:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.afj = icmp samesign ult i32 %i.aek, 855638017
  br i1 %i.afj, label %_ZN9Imath_3_24halfaSEf.exit278, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.afk = lshr i32 %i.aek, 23                    ; 2 uses
  %i.afl = sub nuw nsw i32 126, %i.afk
  %i.afm = and i32 %i.aek, 8388607
  %i.afn = or disjoint i32 %i.afm, 8388608        ; 2 uses
  %i.afo = add nsw i32 %i.afk, -94
  %i.afp = shl i32 %i.afn, %i.afo                 ; 2 uses
  %i.afq = lshr i32 %i.afn, %i.afl                ; 2 uses
  %i.afr = and i32 %i.ael, 32768
  %i.afs = or i32 %i.afq, %i.afr
  %i.aft = trunc nuw i32 %i.afs to i16            ; 2 uses
  %i.afu = icmp ugt i32 %i.afp, -2147483648
  br i1 %i.afu, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.afv = icmp ne i32 %i.afp, -2147483648
  %i.afw = and i32 %i.afq, 1
  %.not.i.i.i275 = icmp eq i32 %i.afw, 0
  %or.cond.i.i.i276 = select i1 %i.afv, i1 true, i1 %.not.i.i.i275
  br i1 %or.cond.i.i.i276, label %_ZN9Imath_3_24halfaSEf.exit278, label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.afx = add nuw i16 %i.aft, 1
  br label %_ZN9Imath_3_24halfaSEf.exit278

_ZN9Imath_3_24halfaSEf.exit278:                   ; preds = %bb.fx, %bb.fy, %bb.ga, %bb.gb, %bb.gc, %bb.ge, %bb.gf
  %.033.i.i.i277 = phi i16 [ %i.aen, %bb.gc ], [ %i.aey, %bb.fy ], [ %i.afa, %bb.ga ], [ %i.afi, %bb.gb ], [ %i.aeq, %bb.fx ], [ %i.afx, %bb.gf ], [ %i.aft, %bb.ge ]
  store i16 %.033.i.i.i277, ptr %i.aeh, align 2, !tbaa !81
  %i.afy = extractelement <4 x double> %i.ack, i64 2
  %i.afz = fdiv double %i.afy, %.us-phi546
  %i.aga = fptrunc double %i.afz to float         ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  %i.agc = bitcast float %i.aga to i32
  %i.agd = call float @llvm.fabs.f32(float %i.aga)
  %i.age = bitcast float %i.agd to i32            ; 10 uses
  %i.agf = lshr i32 %i.agc, 16                    ; 3 uses
  %i.agg = trunc nuw i32 %i.agf to i16
  %i.agh = and i16 %i.agg, -32768                 ; 3 uses
  %i.agi = icmp samesign ugt i32 %i.age, 947912703
  br i1 %i.agi, label %bb.gg, label %bb.gm

bb.gg:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit278
  %i.agj = icmp samesign ugt i32 %i.age, 2139095039
  br i1 %i.agj, label %bb.gh, label %bb.gj, !prof !73

bb.gh:                                            ; preds = %bb.gg
  %i.agk = or disjoint i16 %i.agh, 31744          ; 2 uses
  %i.agl = icmp eq i32 %i.age, 2139095040
  br i1 %i.agl, label %_ZN9Imath_3_24halfaSEf.exit282, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.agm = lshr i32 %i.age, 13
  %i.agn = and i32 %i.agm, 1023                   ; 2 uses
  %i.ago = icmp eq i32 %i.agn, 0
  %i.agp = zext i1 %i.ago to i16
  %i.agq = trunc nuw nsw i32 %i.agn to i16
  %i.agr = or i16 %i.agq, %i.agp
  %i.ags = or disjoint i16 %i.agr, %i.agk
  br label %_ZN9Imath_3_24halfaSEf.exit282

bb.gj:                                            ; preds = %bb.gg
  %i.agt = icmp samesign ugt i32 %i.age, 1199566847
  br i1 %i.agt, label %bb.gk, label %bb.gl, !prof !73

bb.gk:                                            ; preds = %bb.gj
  %i.agu = or disjoint i16 %i.agh, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit282

bb.gl:                                            ; preds = %bb.gj
  %i.agv = add nuw nsw i32 %i.age, 134221823
  %i.agw = lshr i32 %i.age, 13
  %i.agx = and i32 %i.agw, 1
  %i.agy = add nuw nsw i32 %i.agv, %i.agx
  %i.agz = lshr i32 %i.agy, 13
  %i.aha = and i32 %i.agf, 32768
  %i.ahb = or i32 %i.agz, %i.aha
  %i.ahc = trunc i32 %i.ahb to i16
  br label %_ZN9Imath_3_24halfaSEf.exit282

bb.gm:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit278
  %i.ahd = icmp samesign ult i32 %i.age, 855638017
  br i1 %i.ahd, label %_ZN9Imath_3_24halfaSEf.exit282, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ahe = lshr i32 %i.age, 23                    ; 2 uses
  %i.ahf = sub nuw nsw i32 126, %i.ahe
  %i.ahg = and i32 %i.age, 8388607
  %i.ahh = or disjoint i32 %i.ahg, 8388608        ; 2 uses
  %i.ahi = add nsw i32 %i.ahe, -94
  %i.ahj = shl i32 %i.ahh, %i.ahi                 ; 2 uses
  %i.ahk = lshr i32 %i.ahh, %i.ahf                ; 2 uses
  %i.ahl = and i32 %i.agf, 32768
  %i.ahm = or i32 %i.ahk, %i.ahl
  %i.ahn = trunc nuw i32 %i.ahm to i16            ; 2 uses
  %i.aho = icmp ugt i32 %i.ahj, -2147483648
  br i1 %i.aho, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ahp = icmp ne i32 %i.ahj, -2147483648
  %i.ahq = and i32 %i.ahk, 1
  %.not.i.i.i279 = icmp eq i32 %i.ahq, 0
  %or.cond.i.i.i280 = select i1 %i.ahp, i1 true, i1 %.not.i.i.i279
  br i1 %or.cond.i.i.i280, label %_ZN9Imath_3_24halfaSEf.exit282, label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.ahr = add nuw i16 %i.ahn, 1
  br label %_ZN9Imath_3_24halfaSEf.exit282

_ZN9Imath_3_24halfaSEf.exit282:                   ; preds = %bb.gh, %bb.gi, %bb.gk, %bb.gl, %bb.gm, %bb.go, %bb.gp
  %.033.i.i.i281 = phi i16 [ %i.agh, %bb.gm ], [ %i.ags, %bb.gi ], [ %i.agu, %bb.gk ], [ %i.ahc, %bb.gl ], [ %i.agk, %bb.gh ], [ %i.ahr, %bb.gp ], [ %i.ahn, %bb.go ]
  store i16 %.033.i.i.i281, ptr %i.agb, align 2, !tbaa !81
  %i.ahs = extractelement <4 x double> %i.ack, i64 3
  %i.aht = fdiv double %i.ahs, %.us-phi546
  %i.ahu = fptrunc double %i.aht to float         ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.zw, i64 6
  %i.ahw = bitcast float %i.ahu to i32
  %i.ahx = call float @llvm.fabs.f32(float %i.ahu)
  %i.ahy = bitcast float %i.ahx to i32            ; 10 uses
  %i.ahz = lshr i32 %i.ahw, 16                    ; 3 uses
  %i.aia = trunc nuw i32 %i.ahz to i16
  %i.aib = and i16 %i.aia, -32768                 ; 3 uses
  %i.aic = icmp samesign ugt i32 %i.ahy, 947912703
  br i1 %i.aic, label %bb.gq, label %bb.gw

bb.gq:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit282
  %i.aid = icmp samesign ugt i32 %i.ahy, 2139095039
  br i1 %i.aid, label %bb.gr, label %bb.gt, !prof !73

bb.gr:                                            ; preds = %bb.gq
  %i.aie = or disjoint i16 %i.aib, 31744          ; 2 uses
  %i.aif = icmp eq i32 %i.ahy, 2139095040
  br i1 %i.aif, label %_ZN9Imath_3_24halfaSEf.exit286, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aig = lshr i32 %i.ahy, 13
  %i.aih = and i32 %i.aig, 1023                   ; 2 uses
  %i.aii = icmp eq i32 %i.aih, 0
  %i.aij = zext i1 %i.aii to i16
  %i.aik = trunc nuw nsw i32 %i.aih to i16
  %i.ail = or i16 %i.aik, %i.aij
  %i.aim = or disjoint i16 %i.ail, %i.aie
  br label %_ZN9Imath_3_24halfaSEf.exit286

bb.gt:                                            ; preds = %bb.gq
  %i.ain = icmp samesign ugt i32 %i.ahy, 1199566847
  br i1 %i.ain, label %bb.gu, label %bb.gv, !prof !73

bb.gu:                                            ; preds = %bb.gt
  %i.aio = or disjoint i16 %i.aib, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit286

bb.gv:                                            ; preds = %bb.gt
  %i.aip = add nuw nsw i32 %i.ahy, 134221823
  %i.aiq = lshr i32 %i.ahy, 13
  %i.air = and i32 %i.aiq, 1
  %i.ais = add nuw nsw i32 %i.aip, %i.air
  %i.ait = lshr i32 %i.ais, 13
  %i.aiu = and i32 %i.ahz, 32768
  %i.aiv = or i32 %i.ait, %i.aiu
  %i.aiw = trunc i32 %i.aiv to i16
  br label %_ZN9Imath_3_24halfaSEf.exit286

bb.gw:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit282
  %i.aix = icmp samesign ult i32 %i.ahy, 855638017
  br i1 %i.aix, label %_ZN9Imath_3_24halfaSEf.exit286, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aiy = lshr i32 %i.ahy, 23                    ; 2 uses
  %i.aiz = sub nuw nsw i32 126, %i.aiy
  %i.aja = and i32 %i.ahy, 8388607
  %i.ajb = or disjoint i32 %i.aja, 8388608        ; 2 uses
  %i.ajc = add nsw i32 %i.aiy, -94
  %i.ajd = shl i32 %i.ajb, %i.ajc                 ; 2 uses
  %i.aje = lshr i32 %i.ajb, %i.aiz                ; 2 uses
  %i.ajf = and i32 %i.ahz, 32768
  %i.ajg = or i32 %i.aje, %i.ajf
  %i.ajh = trunc nuw i32 %i.ajg to i16            ; 2 uses
  %i.aji = icmp ugt i32 %i.ajd, -2147483648
  br i1 %i.aji, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ajj = icmp ne i32 %i.ajd, -2147483648
  %i.ajk = and i32 %i.aje, 1
  %.not.i.i.i283 = icmp eq i32 %i.ajk, 0
  %or.cond.i.i.i284 = select i1 %i.ajj, i1 true, i1 %.not.i.i.i283
  br i1 %or.cond.i.i.i284, label %_ZN9Imath_3_24halfaSEf.exit286, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.ajl = add nuw i16 %i.ajh, 1
  br label %_ZN9Imath_3_24halfaSEf.exit286

_ZN9Imath_3_24halfaSEf.exit286:                   ; preds = %bb.gr, %bb.gs, %bb.gu, %bb.gv, %bb.gw, %bb.gy, %bb.gz
  %.033.i.i.i285 = phi i16 [ %i.aib, %bb.gw ], [ %i.aim, %bb.gs ], [ %i.aio, %bb.gu ], [ %i.aiw, %bb.gv ], [ %i.aie, %bb.gr ], [ %i.ajl, %bb.gz ], [ %i.ajh, %bb.gy ]
  store i16 %.033.i.i.i285, ptr %i.ahv, align 2, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.ajm = add nuw nsw i32 %.0169551, 1           ; 2 uses
  %exitcond573.not = icmp eq i32 %i.ajm, %i.xr
  br i1 %exitcond573.not, label %._crit_edge553, label %bb.fe, !llvm.loop !23

bb.ha:                                            ; preds = %bb.fe
  %i.ajn = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hb:                                            ; preds = %bb.ff
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hc:                                            ; preds = %.split529.us.split.us, %.split.us527.split.us
  %.pn213 = phi { ptr, i32 } [ %i.acj, %.split529.us.split.us ], [ %i.aci, %.split.us527.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.pn213.pn = phi { ptr, i32 } [ %.pn213, %bb.hc ], [ %i.ajo, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.ha
  %.pn213.pn.pn = phi { ptr, i32 } [ %.pn213.pn, %bb.hd ], [ %i.ajn, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %bb.hh

bb.hf:                                            ; preds = %bb.es
  br i1 %1, label %bb.hg, label %_ZNSolsEPFRSoS_E.exit288

bb.hg:                                            ; preds = %bb.hf
  %i.ajp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %.loopexit.split-lp421 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %bb.hg
  %i.ajq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %_ZNSolsEPFRSoS_E.exit288 unwind label %.loopexit.split-lp421, !inline_history !24 ; 0 uses

bb.hh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ew, %bb.he, %bb.ex, %bb.ev
  %.pn213.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yk, %bb.ev ], [ %i.yl, %bb.ew ], [ %i.ym, %bb.ex ], [ %.pn213.pn.pn, %bb.he ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.hi

bb.hi:                                            ; preds = %bb.eu, %bb.hh, %bb.et
  %.pn213.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yi, %bb.et ], [ %.pn213.pn.pn.pn.pn.pn.pn, %bb.hh ], [ %i.yj, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.hs

_ZNSolsEPFRSoS_E.exit288:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  %i.ajr = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %bb.hj unwind label %bb.hn

bb.hj:                                            ; preds = %_ZNSolsEPFRSoS_E.exit288
  %i.ajs = load <4 x i32>, ptr %i.ajr, align 4, !tbaa !59
  store <4 x i32> %i.ajs, ptr %20, align 16, !tbaa !59
  invoke void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %bb.hk unwind label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  %i.ajt = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aju = load <2 x i32>, ptr %i.ajt, align 8, !tbaa !59
  %i.ajv = load <2 x i32>, ptr %20, align 16, !tbaa !59
  %i.ajw = add <2 x i32> %i.aju, splat (i32 1)
  %i.ajx = sub <2 x i32> %i.ajw, %i.ajv           ; 2 uses
  %i.ajy = extractelement <2 x i32> %i.ajx, i64 0
  %i.ajz = extractelement <2 x i32> %i.ajx, i64 1
  %i.aka = mul nsw i32 %i.ajz, %i.ajy
  %i.akb = sext i32 %i.aka to i64
  %i.akc = shl nsw i64 %i.akb, 3
  %i.akd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.hl unwind label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 16
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !62
  %i.akg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %bb.hm unwind label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.akf, ptr align 2 %i.aki, i64 %i.akc, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  br label %bb.hq

bb.hn:                                            ; preds = %bb.hj, %_ZNSolsEPFRSoS_E.exit288
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hl, %bb.hk
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.pn = phi { ptr, i32 } [ %i.akk, %bb.ho ], [ %i.akj, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  br label %bb.hs

bb.hq:                                            ; preds = %bb.hm, %bb.es
  %i.akl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !62 ; 2 uses
  %i.akn = icmp eq ptr %i.akm, null
  br i1 %i.akn, label %_ZN11EnvmapImageD2Ev.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @_ZdaPv(ptr noundef nonnull %i.akm) #11
  br label %_ZN11EnvmapImageD2Ev.exit

_ZN11EnvmapImageD2Ev.exit:                        ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void

bb.hs:                                            ; preds = %.loopexit420.split.us, %.loopexit.split-lp421, %bb.p, %bb.x, %bb.el, %bb.hi, %bb.hp, %bb.n
  %.pn229.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %.us-phi476, %bb.x ], [ %i.az, %bb.p ], [ %.pn223.pn.pn.pn.pn, %bb.el ], [ %.pn213.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hi ], [ %.pn, %bb.hp ], [ %lpad.loopexit422.us, %.loopexit420.split.us ], [ %lpad.loopexit.split-lp423, %.loopexit.split-lp421 ]
  %i.ako = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !62 ; 2 uses
  %i.akq = icmp eq ptr %i.akp, null
  br i1 %i.akq, label %_ZN11EnvmapImageD2Ev.exit289, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_ZdaPv(ptr noundef nonnull %i.akp) #11
  br label %_ZN11EnvmapImageD2Ev.exit289

_ZN11EnvmapImageD2Ev.exit289:                     ; preds = %bb.hs, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn229.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11EnvmapImageC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZNK11EnvmapImage4typeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16), float noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec3") align 4, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef align 4 dead_on_return) local_unnamed_addr #3

declare void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN11EnvmapImage5clearEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!10 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!11 = distinct !{!11, !58}
!12 = distinct !{!12, i1 false, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv"}
!13 = distinct !{!13, !12, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv: argument 0"}
!14 = distinct !{!14, !58}
!15 = distinct !{!15, !58}
!16 = distinct !{!16, !58}
!17 = distinct !{!17, !58}
!18 = distinct !{!18, !58}
!19 = distinct !{!19, !58}
!20 = distinct !{!20, !58}
!21 = distinct !{!21, !58}
!22 = distinct !{!22, !58}
!23 = distinct !{!23, !58}
!24 = distinct !{null}
!25 = !{!"vtable pointer", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!30 = !{!"any pointer", !5, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !30, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !30, i64 0, !27, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !30, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !30, i64 0}
!35 = !{!"_ZTSSt6locale", !34, i64 0}
!36 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !31, i64 40, !32, i64 48, !5, i64 64, !6, i64 192, !33, i64 200, !35, i64 208}
!37 = !{!"p1 _ZTSSo", !30, i64 0}
!38 = !{!"bool", !5, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !30, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!43 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !37, i64 216, !5, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!44 = !{!43, !40, i64 240}
!45 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!47 = !{!"p1 int", !30, i64 0}
!48 = !{!"p1 short", !30, i64 0}
!49 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !38, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!50 = !{!49, !5, i64 56}
!51 = !{!5, !5, i64 0}
!52 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !6, i64 0, !6, i64 4}
!53 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !52, i64 0, !52, i64 8}
!54 = !{!53, !6, i64 8}
!55 = !{!53, !6, i64 0}
!56 = !{!52, !6, i64 0}
!57 = !{!52, !6, i64 4}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!6, !6, i64 0}
!60 = !{!"p1 _ZTSN7Imf_3_44RgbaE", !30, i64 0}
!61 = !{!"_ZTSN7Imf_3_47Array2DINS_4RgbaEEE", !27, i64 0, !27, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 16}
!63 = !{!"p1 _ZTS14imath_half_uif", !30, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"float", !5, i64 0}
!66 = !{!"_ZTSN9Imath_3_24Vec2IfEE", !65, i64 0, !65, i64 4}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 4}
!69 = !{!13}
!70 = !{!"_ZTSN9Imath_3_24Vec3IfEE", !65, i64 0, !65, i64 4, !65, i64 8}
!71 = !{!70, !65, i64 0}
!72 = !{!65, !65, i64 0}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!75 = !{!70, !65, i64 4}
!76 = !{!70, !65, i64 8}
!77 = !{!61, !27, i64 8}
!78 = !{!"short", !5, i64 0}
!79 = !{!"_ZTSN9Imath_3_24halfE", !78, i64 0}
!80 = !{!79, !78, i64 0}
!81 = !{!78, !78, i64 0}
end_hunk_0
