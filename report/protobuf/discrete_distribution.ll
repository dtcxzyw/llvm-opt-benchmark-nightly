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
define void @_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 9 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.not5.i = icmp eq ptr %i.a, %i.d
  br i1 %.not5.i, label %.loopexit165, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.g, %.lr.ph.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = load double, ptr %.sroa.02.06.i, align 8, !tbaa !10
  %i.g = fadd double %.07.i, %i.f                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !12

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit: ; preds = %.lr.ph.i
  %i.i = fadd double %i.g, -1.000000e+00
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp ule double %i.j, f0x3EB0C6F7A0B5ED8D
  br i1 %i.k, label %.loopexit165, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit
  %i.l = add i64 %i.e, -8
  %i.m = sub i64 %i.l, %i.b
  %i.n = lshr i64 %i.m, 3                         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.iters.check, label %.lr.ph.preheader529, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.o, 4611686018427387902      ; 3 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.r ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !10
  %i.s = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.s, ptr %next.gep, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit165, label %.lr.ph.preheader529

.lr.ph.preheader529:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0142.0242.ph = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader529, %.lr.ph
  %.sroa.0142.0242 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0142.0242.ph, %.lr.ph.preheader529 ] ; 3 uses
  %i.u = load double, ptr %.sroa.0142.0242, align 8, !tbaa !10
  %i.v = fdiv double %i.u, %i.g
  store double %i.v, ptr %.sroa.0142.0242, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0142.0242, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.d
  br i1 %.not, label %.loopexit165, label %.lr.ph, !llvm.loop !17

.loopexit165:                                     ; preds = %.lr.ph, %middle.block, %bb.a, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.a to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 3                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ab = icmp ugt i64 %i.aa, 576460752303423487
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit165
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.loopexit165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not337 = icmp eq ptr %i.d, %i.a
  br i1 %.not337, label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ad = shl nuw nsw i64 %i.z, 1
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #9
          to label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %0, align 8, !tbaa !18
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aa
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !22
  %.pre = load ptr, ptr %1, align 8, !tbaa !7
  %.pre324 = load ptr, ptr %i.c, align 8, !tbaa !7
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %2 = phi ptr [ %.pre324, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.d, %bb.c ] ; 2 uses
  %3 = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.a, %bb.c ] ; 2 uses
  %.not149247 = icmp eq ptr %3, %2
  br i1 %.not149247, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %.lr.ph252

.lr.ph252:                                        ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit
  %i.ah = uitofp nneg i64 %i.aa to double
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

.preheader148:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.aj = icmp eq ptr %.sroa.0125.1, %.sroa.12131.1
  %i.ak = icmp eq ptr %.sroa.0111.1, %.sroa.12.1
  %or.cond258 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond258, label %.critedge.preheader, label %.lr.ph265

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.al = landingpad { ptr, i32 }
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
  %.sroa.0108.0244 = phi ptr [ %3, %.lr.ph252 ], [ %i.cr, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.am = load double, ptr %.sroa.0108.0244, align 8, !tbaa !10
  %i.an = fmul double %i.am, %i.ah                ; 3 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 7 uses
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !22
  %.not.i38 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.an, ptr %i.ao, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !21
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775792
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc39 unwind label %.loopexit.split-lp150

.noexc39:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ax = ashr exact i64 %i.av, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 576460752303423487)
  %i.bb = select i1 %i.az, i64 576460752303423487, i64 %i.ba ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #9
          to label %.noexc40 unwind label %.loopexit149 ; 5 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 2 uses
  store double %i.an, ptr %i.be, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !26
  %.not10.i.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc40, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.as, %.noexc40 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !27
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc40
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bd, %.noexc40 ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #10
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.bd, ptr %0, align 8, !tbaa !18
  store ptr %i.bi, ptr %i.ai, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bj, ptr %i.ac, align 8, !tbaa !22
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f
  %i.bk = fcmp olt double %i.an, 1.000000e+00
  br i1 %i.bk, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.12.0246, %.sroa.23.0245
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.032251, ptr %.sroa.12.0246, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.12.0246, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = ptrtoint ptr %.sroa.12.0246 to i64
  %i.bn = ptrtoint ptr %.sroa.0111.0247 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc42 unwind label %.loopexit.split-lp160

.noexc42:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #9
          to label %.noexc43 unwind label %.loopexit159 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %.032251, ptr %i.bx, align 8, !tbaa !32
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %.sroa.0111.0247, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %.noexc43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0111.0247, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0247, i64 noundef %i.bo) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit149:                                     ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp150:                            ; preds = %bb.h
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit159:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp160:                            ; preds = %bb.m
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit
  %.not.i.i44 = icmp eq ptr %.sroa.12131.0249, %.sroa.23137.0248
  br i1 %.not.i.i44, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.032251, ptr %.sroa.12131.0249, align 8, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.12131.0249, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.r:                                             ; preds = %bb.p
  %i.cc = ptrtoint ptr %.sroa.12131.0249 to i64
  %i.cd = ptrtoint ptr %.sroa.0125.0250 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.s, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc51 unwind label %.loopexit.split-lp155

.noexc51:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.r
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #9
          to label %.noexc52 unwind label %.loopexit154 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i64 %.032251, ptr %i.cn, align 8, !tbaa !32
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.t, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48

bb.t:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %.sroa.0125.0250, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48: ; preds = %bb.t, %.noexc52
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.not.i17.i.i.i49 = icmp eq ptr %.sroa.0125.0250, null
  br i1 %.not.i17.i.i.i49, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0250, i64 noundef %i.ce) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50: ; preds = %bb.u, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit154:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45
  %lpad.loopexit156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp155:                            ; preds = %bb.s
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.q, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50, %bb.k, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.23.1 = phi ptr [ %.sroa.23.0245, %bb.k ], [ %i.ca, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.23.0245, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.23.0245, %bb.q ] ; 3 uses
  %.sroa.12.1 = phi ptr [ %i.bl, %bb.k ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.12.0246, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.12.0246, %bb.q ] ; 4 uses
  %.sroa.0111.1 = phi ptr [ %.sroa.0111.0247, %bb.k ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0111.0247, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.0111.0247, %bb.q ] ; 4 uses
  %.sroa.23137.1 = phi ptr [ %.sroa.23137.0248, %bb.k ], [ %.sroa.23137.0248, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.23137.0248, %bb.q ] ; 3 uses
  %.sroa.12131.1 = phi ptr [ %.sroa.12131.0249, %bb.k ], [ %.sroa.12131.0249, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %i.cb, %bb.q ] ; 4 uses
  %.sroa.0125.1 = phi ptr [ %.sroa.0125.0250, %bb.k ], [ %.sroa.0125.0250, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.0125.0250, %bb.q ] ; 4 uses
  %.133 = add i64 %.032251, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0108.0244, i64 8 ; 2 uses
  %.not145 = icmp eq ptr %i.cr, %2
  br i1 %.not145, label %.preheader148, label %bb.e

.critedge.preheader:                              ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %.preheader148
  %.sroa.23.2.lcssa = phi ptr [ %.sroa.23.1, %.preheader148 ], [ %.sroa.23.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.12.2.lcssa = phi ptr [ %.sroa.12.1, %.preheader148 ], [ %.sroa.12.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.0111.2.lcssa = phi ptr [ %.sroa.0111.1, %.preheader148 ], [ %.sroa.0111.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.sroa.23137.2.lcssa = phi ptr [ %.sroa.23137.1, %.preheader148 ], [ %.sroa.23137.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.12131.2.lcssa = phi ptr [ %.sroa.12131.1, %.preheader148 ], [ %.sroa.12131.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.0125.2.lcssa = phi ptr [ %.sroa.0125.1, %.preheader148 ], [ %.sroa.0125.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.not146272 = icmp eq ptr %.sroa.0125.2.lcssa, %.sroa.12131.2.lcssa
  br i1 %.not146272, label %.preheader, label %.lr.ph274

.lr.ph274:                                        ; preds = %.critedge.preheader
  %i.cs = load ptr, ptr %0, align 8, !tbaa !18
  br label %.critedge

.lr.ph265:                                        ; preds = %.preheader148, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.0125.2264 = phi ptr [ %.sroa.0125.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.0125.1, %.preheader148 ] ; 9 uses
  %.sroa.12131.2263 = phi ptr [ %.sroa.12131.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.12131.1, %.preheader148 ] ; 2 uses
  %.sroa.23137.2262 = phi ptr [ %.sroa.23137.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.23137.1, %.preheader148 ] ; 7 uses
  %.sroa.0111.2261 = phi ptr [ %.sroa.0111.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.0111.1, %.preheader148 ] ; 9 uses
  %.sroa.12.2260 = phi ptr [ %.sroa.12.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.12.1, %.preheader148 ] ; 2 uses
  %.sroa.23.2259 = phi ptr [ %.sroa.23.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.23.1, %.preheader148 ] ; 7 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.12.2260, i64 -8 ; 5 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.cv = getelementptr inbounds i8, ptr %.sroa.12131.2263, i64 -8 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !32 ; 6 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cu ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.cw, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !23
  %i.dc = load double, ptr %i.cy, align 8, !tbaa !23
  %i.dd = fsub double 1.000000e+00, %i.dc
  %i.de = fsub double %i.db, %i.dd                ; 2 uses
  store double %i.de, ptr %i.da, align 8, !tbaa !23
  %i.df = fcmp olt double %i.de, 1.000000e+00
  br i1 %i.df, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.lr.ph265
  %.not.i54 = icmp eq ptr %i.ct, %.sroa.23.2259
  br i1 %.not.i54, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !32
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.x:                                             ; preds = %bb.v
  %i.dg = ptrtoint ptr %.sroa.23.2259 to i64
  %i.dh = ptrtoint ptr %.sroa.0111.2261 to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.x, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i55, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %.not.i.i.i56)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #9
          to label %.noexc58 unwind label %.loopexit ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store i64 %i.cw, ptr %i.dr, align 8, !tbaa !32
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.y, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.y:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %.sroa.0111.2261, i64 %i.di, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.y, %.noexc58
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0111.2261, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.2261, i64 noundef %i.di) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i60
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.aa:                                            ; preds = %.lr.ph265
  %.not.i59 = icmp eq ptr %i.cv, %.sroa.23137.2262
  br i1 %.not.i59, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !32
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dv = ptrtoint ptr %.sroa.23137.2262 to i64
  %i.dw = ptrtoint ptr %.sroa.0125.2264 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 6 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i60

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i60: ; preds = %bb.ac
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i61 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i61, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = tail call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.ed, 0
  tail call void @llvm.assume(i1 %.not.i.i.i62)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #9
          to label %.noexc67 unwind label %.loopexit ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i60
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dx ; 2 uses
  store i64 %i.cw, ptr %i.eg, align 8, !tbaa !32
  %i.eh = icmp sgt i64 %i.dx, 0
  br i1 %i.eh, label %bb.ad, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63

bb.ad:                                            ; preds = %.noexc67
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr align 8 %.sroa.0125.2264, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63: ; preds = %bb.ad, %.noexc67
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.not.i17.i.i64 = icmp eq ptr %.sroa.0125.2264, null
  br i1 %.not.i17.i.i64, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.2264, i64 noundef %i.dx) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65: ; preds = %bb.ae, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65, %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.w
  %.sroa.23.3 = phi ptr [ %.sroa.23.2259, %bb.w ], [ %i.du, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.23.2259, %bb.ab ], [ %.sroa.23.2259, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.2260, %bb.w ], [ %i.dt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ct, %bb.ab ], [ %i.ct, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.0111.3 = phi ptr [ %.sroa.0111.2261, %bb.w ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0111.2261, %bb.ab ], [ %.sroa.0111.2261, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.23137.3 = phi ptr [ %.sroa.23137.2262, %bb.w ], [ %.sroa.23137.2262, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.23137.2262, %bb.ab ], [ %i.ej, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 2 uses
  %.sroa.12131.3 = phi ptr [ %i.cv, %bb.w ], [ %i.cv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.12131.2263, %bb.ab ], [ %i.ei, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.0125.3 = phi ptr [ %.sroa.0125.2264, %bb.w ], [ %.sroa.0125.2264, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0125.2264, %bb.ab ], [ %i.ef, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %i.ek = icmp eq ptr %.sroa.0125.3, %.sroa.12131.3
  %i.el = icmp eq ptr %.sroa.0111.3, %.sroa.12.3
  %or.cond = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %or.cond, label %.critedge.preheader, label %.lr.ph265, !llvm.loop !33

.preheader:                                       ; preds = %.critedge, %.critedge.preheader
  %.not147275 = icmp eq ptr %.sroa.0111.2.lcssa, %.sroa.12.2.lcssa
  br i1 %.not147275, label %._crit_edge, label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader
  %i.em = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.ah

.critedge:                                        ; preds = %.lr.ph274, %.critedge
  %.sroa.088.0273 = phi ptr [ %.sroa.0125.2.lcssa, %.lr.ph274 ], [ %i.eq, %.critedge ] ; 2 uses
  %i.en = load i64, ptr %.sroa.088.0273, align 8, !tbaa !32 ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.en ; 2 uses
  store double 1.000000e+00, ptr %i.eo, align 8, !tbaa !23
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.088.0273, i64 8 ; 2 uses
  %.not146 = icmp eq ptr %i.eq, %.sroa.12131.2.lcssa
  br i1 %.not146, label %.preheader, label %.critedge

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  %.not.i.i.i69 = icmp eq ptr %.sroa.0111.2.lcssa, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.er = ptrtoint ptr %.sroa.23.2.lcssa to i64
  %i.es = ptrtoint ptr %.sroa.0111.2.lcssa to i64
  %i.et = sub i64 %i.er, %i.es
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.2.lcssa, i64 noundef %i.et) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit
end_hunk_0
