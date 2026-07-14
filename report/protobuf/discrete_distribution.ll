inline.NumInlined: 195
inline.NumDeleted: 96
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 9 uses
  %2 = ptrtoint ptr %i.a to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 7 uses
  %3 = ptrtoint ptr %i.c to i64
  %.not5.i = icmp eq ptr %i.a, %i.c               ; 2 uses
  br i1 %.not5.i, label %.loopexit165, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.e, %.lr.ph.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load double, ptr %.sroa.02.06.i, align 8, !tbaa !10
  %i.e = fadd double %.07.i, %i.d                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !12

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit: ; preds = %.lr.ph.i
  %i.g = fadd double %i.e, -1.000000e+00
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ule double %i.h, f0x3EB0C6F7A0B5ED8D
  br i1 %i.i, label %.loopexit165, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit
  %4 = add i64 %3, -8
  %i.j = sub i64 %4, %2
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.iters.check, label %.lr.ph.preheader529, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, 4611686018427387902      ; 3 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.o ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !10
  %i.p = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.p, ptr %next.gep, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit165, label %.lr.ph.preheader529

.lr.ph.preheader529:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0142.0242.ph = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader529, %.lr.ph
  %.sroa.0142.0242 = phi ptr [ %i.t, %.lr.ph ], [ %.sroa.0142.0242.ph, %.lr.ph.preheader529 ] ; 3 uses
  %i.r = load double, ptr %.sroa.0142.0242, align 8, !tbaa !10
  %i.s = fdiv double %i.r, %i.e
  store double %i.s, ptr %.sroa.0142.0242, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0142.0242, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.c
  br i1 %.not, label %.loopexit165, label %.lr.ph, !llvm.loop !17

.loopexit165:                                     ; preds = %.lr.ph, %middle.block, %bb.a, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit
  %i.u = ptrtoint ptr %i.c to i64
  %i.v = ptrtoint ptr %i.a to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.y = icmp ugt i64 %i.x, 576460752303423487
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit165
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.loopexit165
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not337 = icmp eq ptr %i.c, %i.a
  br i1 %.not337, label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.aa = shl nuw nsw i64 %i.w, 1
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #9
          to label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %0, align 8, !tbaa !18
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.x
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !22
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  br i1 %.not5.i, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %.lr.ph252

.lr.ph252:                                        ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit
  %i.ae = uitofp nneg i64 %i.x to double
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

.preheader148:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.ag = icmp eq ptr %.sroa.0125.1, %.sroa.12131.1
  %i.ah = icmp eq ptr %.sroa.0111.1, %.sroa.12.1
  %or.cond258 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond258, label %.critedge.preheader, label %.lr.ph265

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit75

bb.e:                                             ; preds = %.lr.ph252, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.032251 = phi i64 [ 0, %.lr.ph252 ], [ %.133, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %.sroa.0125.0250 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.0125.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 13 uses
  %.sroa.12131.0249 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.12131.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.23137.0248 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.23137.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.0111.0247 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.0111.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 13 uses
  %.sroa.12.0246 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.23.0245 = phi ptr [ null, %.lr.ph252 ], [ %.sroa.23.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.0108.0244 = phi ptr [ %i.a, %.lr.ph252 ], [ %i.co, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.aj = load double, ptr %.sroa.0108.0244, align 8, !tbaa !10
  %i.ak = fmul double %i.aj, %i.ae                ; 3 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !21 ; 7 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !22
  %.not.i38 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.ak, ptr %i.al, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !21
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.h, label %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc39 unwind label %.loopexit.split-lp150

.noexc39:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 576460752303423487)
  %i.ay = select i1 %i.aw, i64 576460752303423487, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #9
          to label %.noexc40 unwind label %.loopexit149 ; 5 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double %i.ak, ptr %i.bb, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !26
  %.not10.i.i.i.i.i = icmp eq ptr %i.ap, %i.al
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc40, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.ba, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.ap, %.noexc40 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !27
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc40
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ba, %.noexc40 ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #10
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ba, ptr %0, align 8, !tbaa !18
  store ptr %i.bf, ptr %i.af, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bg, ptr %i.z, align 8, !tbaa !22
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f
  %i.bh = fcmp olt double %i.ak, 1.000000e+00
  br i1 %i.bh, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.12.0246, %.sroa.23.0245
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.032251, ptr %.sroa.12.0246, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.12.0246, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.l:                                             ; preds = %bb.j
  %i.bj = ptrtoint ptr %.sroa.12.0246 to i64
  %i.bk = ptrtoint ptr %.sroa.0111.0247 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
end_hunk_0
