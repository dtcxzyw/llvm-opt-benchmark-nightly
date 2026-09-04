Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/discrete_distribution?download=true
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
define dso_local void @_ZN4absl12lts_2026052615random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 7 uses
  %.not5.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i, label %.loopexit169, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.e, %.lr.ph.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load double, ptr %.sroa.02.06.i, align 8, !tbaa !21
  %i.e = fadd double %.07.i, %i.d                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !9

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit: ; preds = %.lr.ph.i
  %i.g = fadd double %i.e, -1.000000e+00
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ule double %i.h, f0x3EB0C6F7A0B5ED8D
  br i1 %i.i, label %.loopexit169, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit
  %i.j = ptrtoaddr ptr %i.c to i64
  %i.k = ptrtoaddr ptr %i.a to i64
  %i.l = add i64 %i.j, -8
  %i.m = sub i64 %i.l, %i.k
  %i.n = lshr i64 %i.m, 3                         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.iters.check, label %.lr.ph.preheader535, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.o, 4611686018427387902      ; 3 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.r ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !21
  %i.s = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.s, ptr %next.gep, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit169, label %.lr.ph.preheader535

.lr.ph.preheader535:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0146.0246.ph = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader535, %.lr.ph
  %.sroa.0146.0246 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0146.0246.ph, %.lr.ph.preheader535 ] ; 3 uses
  %i.u = load double, ptr %.sroa.0146.0246, align 8, !tbaa !21
  %i.v = fdiv double %i.u, %i.e
  store double %i.v, ptr %.sroa.0146.0246, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0146.0246, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.c
  br i1 %.not, label %.loopexit169, label %.lr.ph, !llvm.loop !11

.loopexit169:                                     ; preds = %.lr.ph, %middle.block, %bb.a, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit
  %i.x = ptrtoint ptr %i.c to i64
  %i.y = ptrtoint ptr %i.a to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 3                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ab = icmp ugt i64 %i.aa, 576460752303423487
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit169
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.loopexit169
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not343 = icmp eq ptr %i.c, %i.a
  br i1 %.not343, label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ad = shl nuw nsw i64 %i.z, 1
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #9
          to label %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %0, align 8, !tbaa !27
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aa
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !29
  %.pre = load ptr, ptr %1, align 8, !tbaa !19
  %.pre324 = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %2 = phi ptr [ %.pre324, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %3 = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.a, %bb.c ] ; 2 uses
  %.not149247 = icmp eq ptr %3, %2
  br i1 %.not149247, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %.lr.ph256

.lr.ph256:                                        ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit
  %i.ah = uitofp nneg i64 %i.aa to double
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

.preheader152:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.aj = icmp eq ptr %.sroa.0127.1, %.sroa.12133.1
  %i.ak = icmp eq ptr %.sroa.0111.1, %.sroa.12.1
  %or.cond262 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond262, label %.critedge.preheader, label %.lr.ph269

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit75

bb.e:                                             ; preds = %.lr.ph256, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.0255 = phi i64 [ 0, %.lr.ph256 ], [ %.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %.sroa.0127.0254 = phi ptr [ null, %.lr.ph256 ], [ %.sroa.0127.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 13 uses
  %.sroa.12133.0253 = phi ptr [ null, %.lr.ph256 ], [ %.sroa.12133.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.23139.0252 = phi ptr [ null, %.lr.ph256 ], [ %.sroa.23139.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.0111.0251 = phi ptr [ null, %.lr.ph256 ], [ %.sroa.0111.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 13 uses
  %.sroa.12.0250 = phi ptr [ null, %.lr.ph256 ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.23.0249 = phi ptr [ null, %.lr.ph256 ], [ %.sroa.23.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 8 uses
  %.sroa.0108.0248 = phi ptr [ %3, %.lr.ph256 ], [ %i.cr, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.am = load double, ptr %.sroa.0108.0248, align 8, !tbaa !21
  %i.an = fmul double %i.am, %i.ah                ; 3 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 7 uses
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !29
  %.not.i38 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.an, ptr %i.ao, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !28
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775792
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc39 unwind label %.loopexit.split-lp154

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
          to label %.noexc40 unwind label %.loopexit153 ; 5 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 2 uses
  store double %i.an, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !33
  %.not10.i.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc40, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.as, %.noexc40 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !34
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc40
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bd, %.noexc40 ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #10
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.bd, ptr %0, align 8, !tbaa !27
  store ptr %i.bi, ptr %i.ai, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bj, ptr %i.ac, align 8, !tbaa !29
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f
  %i.bk = fcmp olt double %i.an, 1.000000e+00
  br i1 %i.bk, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.12.0250, %.sroa.23.0249
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.0255, ptr %.sroa.12.0250, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.12.0250, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = ptrtoint ptr %.sroa.12.0250 to i64
  %i.bn = ptrtoint ptr %.sroa.0111.0251 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc42 unwind label %.loopexit.split-lp164

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
          to label %.noexc43 unwind label %.loopexit163 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i64 %.0255, ptr %i.bx, align 8, !tbaa !35
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %.sroa.0111.0251, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %.noexc43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0111.0251, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0251, i64 noundef %i.bo) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit153:                                     ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp154:                            ; preds = %bb.h
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit163:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp164:                            ; preds = %bb.m
  %lpad.loopexit.split-lp166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit
  %.not.i.i44 = icmp eq ptr %.sroa.12133.0253, %.sroa.23139.0252
  br i1 %.not.i.i44, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.0255, ptr %.sroa.12133.0253, align 8, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.12133.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.r:                                             ; preds = %bb.p
  %i.cc = ptrtoint ptr %.sroa.12133.0253 to i64
  %i.cd = ptrtoint ptr %.sroa.0127.0254 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.s, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc51 unwind label %.loopexit.split-lp159

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
          to label %.noexc52 unwind label %.loopexit158 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i64 %.0255, ptr %i.cn, align 8, !tbaa !35
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.t, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48

bb.t:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %.sroa.0127.0254, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48: ; preds = %bb.t, %.noexc52
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.not.i17.i.i.i49 = icmp eq ptr %.sroa.0127.0254, null
  br i1 %.not.i17.i.i.i49, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.0254, i64 noundef %i.ce) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50: ; preds = %bb.u, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit158:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp159:                            ; preds = %bb.s
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.q, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50, %bb.k, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.23.1 = phi ptr [ %.sroa.23.0249, %bb.k ], [ %i.ca, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.23.0249, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.23.0249, %bb.q ] ; 3 uses
  %.sroa.12.1 = phi ptr [ %i.bl, %bb.k ], [ %i.bz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.12.0250, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.12.0250, %bb.q ] ; 4 uses
  %.sroa.0111.1 = phi ptr [ %.sroa.0111.0251, %bb.k ], [ %i.bw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0111.0251, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.0111.0251, %bb.q ] ; 4 uses
  %.sroa.23139.1 = phi ptr [ %.sroa.23139.0252, %bb.k ], [ %.sroa.23139.0252, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.23139.0252, %bb.q ] ; 3 uses
  %.sroa.12133.1 = phi ptr [ %.sroa.12133.0253, %bb.k ], [ %.sroa.12133.0253, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %i.cb, %bb.q ] ; 4 uses
  %.sroa.0127.1 = phi ptr [ %.sroa.0127.0254, %bb.k ], [ %.sroa.0127.0254, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.0127.0254, %bb.q ] ; 4 uses
  %.1 = add i64 %.0255, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0108.0248, i64 8 ; 2 uses
  %.not149 = icmp eq ptr %i.cr, %2
  br i1 %.not149, label %.preheader152, label %bb.e

.critedge.preheader:                              ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %.preheader152
  %.sroa.23.2.lcssa = phi ptr [ %.sroa.23.1, %.preheader152 ], [ %.sroa.23.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.12.2.lcssa = phi ptr [ %.sroa.12.1, %.preheader152 ], [ %.sroa.12.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.0111.2.lcssa = phi ptr [ %.sroa.0111.1, %.preheader152 ], [ %.sroa.0111.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.sroa.23139.2.lcssa = phi ptr [ %.sroa.23139.1, %.preheader152 ], [ %.sroa.23139.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.12133.2.lcssa = phi ptr [ %.sroa.12133.1, %.preheader152 ], [ %.sroa.12133.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.0127.2.lcssa = phi ptr [ %.sroa.0127.1, %.preheader152 ], [ %.sroa.0127.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.not150276 = icmp eq ptr %.sroa.0127.2.lcssa, %.sroa.12133.2.lcssa
  br i1 %.not150276, label %.preheader, label %.lr.ph278

.lr.ph278:                                        ; preds = %.critedge.preheader
  %i.cs = load ptr, ptr %0, align 8, !tbaa !27
  br label %.critedge

.lr.ph269:                                        ; preds = %.preheader152, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.0127.2268 = phi ptr [ %.sroa.0127.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.0127.1, %.preheader152 ] ; 9 uses
  %.sroa.12133.2267 = phi ptr [ %.sroa.12133.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.12133.1, %.preheader152 ] ; 2 uses
  %.sroa.23139.2266 = phi ptr [ %.sroa.23139.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.23139.1, %.preheader152 ] ; 7 uses
  %.sroa.0111.2265 = phi ptr [ %.sroa.0111.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.0111.1, %.preheader152 ] ; 9 uses
  %.sroa.12.2264 = phi ptr [ %.sroa.12.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.12.1, %.preheader152 ] ; 2 uses
  %.sroa.23.2263 = phi ptr [ %.sroa.23.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.sroa.23.1, %.preheader152 ] ; 7 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.12.2264, i64 -8 ; 5 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !35
  %i.cv = getelementptr inbounds i8, ptr %.sroa.12133.2267, i64 -8 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !35 ; 6 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cu ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.cw, ptr %i.cz, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !32
  %i.dc = load double, ptr %i.cy, align 8, !tbaa !32
  %i.dd = fsub double 1.000000e+00, %i.dc
  %i.de = fsub double %i.db, %i.dd                ; 2 uses
  store double %i.de, ptr %i.da, align 8, !tbaa !32
  %i.df = fcmp olt double %i.de, 1.000000e+00
  br i1 %i.df, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.lr.ph269
  %.not.i54 = icmp eq ptr %i.ct, %.sroa.23.2263
  br i1 %.not.i54, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !35
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.x:                                             ; preds = %bb.v
  %i.dg = ptrtoint ptr %.sroa.23.2263 to i64
  %i.dh = ptrtoint ptr %.sroa.0111.2265 to i64
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
  store i64 %i.cw, ptr %i.dr, align 8, !tbaa !35
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.y, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.y:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %.sroa.0111.2265, i64 %i.di, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.y, %.noexc58
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0111.2265, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.2265, i64 noundef %i.di) #10
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

bb.aa:                                            ; preds = %.lr.ph269
  %.not.i59 = icmp eq ptr %i.cv, %.sroa.23139.2266
  br i1 %.not.i59, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !35
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dv = ptrtoint ptr %.sroa.23139.2266 to i64
  %i.dw = ptrtoint ptr %.sroa.0127.2268 to i64
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
  store i64 %i.cw, ptr %i.eg, align 8, !tbaa !35
  %i.eh = icmp sgt i64 %i.dx, 0
  br i1 %i.eh, label %bb.ad, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63

bb.ad:                                            ; preds = %.noexc67
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr align 8 %.sroa.0127.2268, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63: ; preds = %bb.ad, %.noexc67
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.not.i17.i.i64 = icmp eq ptr %.sroa.0127.2268, null
  br i1 %.not.i17.i.i64, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.2268, i64 noundef %i.dx) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65: ; preds = %bb.ae, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65, %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.w
  %.sroa.23.3 = phi ptr [ %.sroa.23.2263, %bb.w ], [ %i.du, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.23.2263, %bb.ab ], [ %.sroa.23.2263, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.2264, %bb.w ], [ %i.dt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ct, %bb.ab ], [ %i.ct, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.0111.3 = phi ptr [ %.sroa.0111.2265, %bb.w ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0111.2265, %bb.ab ], [ %.sroa.0111.2265, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.23139.3 = phi ptr [ %.sroa.23139.2266, %bb.w ], [ %.sroa.23139.2266, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.23139.2266, %bb.ab ], [ %i.ej, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 2 uses
  %.sroa.12133.3 = phi ptr [ %i.cv, %bb.w ], [ %i.cv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.12133.2267, %bb.ab ], [ %i.ei, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.0127.3 = phi ptr [ %.sroa.0127.2268, %bb.w ], [ %.sroa.0127.2268, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0127.2268, %bb.ab ], [ %i.ef, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %i.ek = icmp eq ptr %.sroa.0127.3, %.sroa.12133.3
  %i.el = icmp eq ptr %.sroa.0111.3, %.sroa.12.3
  %or.cond = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %or.cond, label %.critedge.preheader, label %.lr.ph269, !llvm.loop !16

.preheader:                                       ; preds = %.critedge, %.critedge.preheader
  %.not151279 = icmp eq ptr %.sroa.0111.2.lcssa, %.sroa.12.2.lcssa
  br i1 %.not151279, label %._crit_edge, label %.lr.ph281

.lr.ph281:                                        ; preds = %.preheader
  %i.em = load ptr, ptr %0, align 8, !tbaa !27
  br label %bb.ah

.critedge:                                        ; preds = %.lr.ph278, %.critedge
  %.sroa.088.0277 = phi ptr [ %.sroa.0127.2.lcssa, %.lr.ph278 ], [ %i.eq, %.critedge ] ; 2 uses
  %i.en = load i64, ptr %.sroa.088.0277, align 8, !tbaa !35 ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.en ; 2 uses
  store double 1.000000e+00, ptr %i.eo, align 8, !tbaa !32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !33
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.088.0277, i64 8 ; 2 uses
  %.not150 = icmp eq ptr %i.eq, %.sroa.12133.2.lcssa
  br i1 %.not150, label %.preheader, label %.critedge

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  %.not.i.i.i69 = icmp eq ptr %.sroa.0111.2.lcssa, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.er = ptrtoint ptr %.sroa.23.2.lcssa to i64
  %i.es = ptrtoint ptr %.sroa.0111.2.lcssa to i64
  %i.et = sub i64 %i.er, %i.es
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.2.lcssa, i64 noundef %i.et) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.af
  %.not.i.i.i70 = icmp eq ptr %.sroa.0127.2.lcssa, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.eu = ptrtoint ptr %.sroa.23139.2.lcssa to i64
  %i.ev = ptrtoint ptr %.sroa.0127.2.lcssa to i64
  %i.ew = sub i64 %i.eu, %i.ev
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.2.lcssa, i64 noundef %i.ew) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit71

_ZNSt6vectorImSaImEED2Ev.exit71:                  ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ag
  ret void

bb.ah:                                            ; preds = %.lr.ph281, %bb.ah
  %.sroa.079.0280 = phi ptr [ %.sroa.0111.2.lcssa, %.lr.ph281 ], [ %i.fa, %bb.ah ] ; 2 uses
  %i.ex = load i64, ptr %.sroa.079.0280, align 8, !tbaa !35 ; 2 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.ex ; 2 uses
  store double 1.000000e+00, ptr %i.ey, align 8, !tbaa !32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.079.0280, i64 8 ; 2 uses
  %.not151 = icmp eq ptr %i.fa, %.sroa.12.2.lcssa
  br i1 %.not151, label %._crit_edge, label %bb.ah

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit158, %.loopexit.split-lp159, %.loopexit163, %.loopexit.split-lp164, %.loopexit153, %.loopexit.split-lp154
  %.sroa.23.4 = phi ptr [ %.sroa.23.0249, %.loopexit.split-lp159 ], [ %.sroa.12.0250, %.loopexit.split-lp164 ], [ %.sroa.23.0249, %.loopexit.split-lp154 ], [ %.sroa.23.0249, %.loopexit153 ], [ %.sroa.12.0250, %.loopexit163 ], [ %.sroa.23.0249, %.loopexit158 ], [ %.sroa.23.2263, %.loopexit ], [ %.sroa.23.2263, %.loopexit.split-lp ]
  %.sroa.0111.4 = phi ptr [ %.sroa.0111.0251, %.loopexit.split-lp159 ], [ %.sroa.0111.0251, %.loopexit.split-lp164 ], [ %.sroa.0111.0251, %.loopexit.split-lp154 ], [ %.sroa.0111.0251, %.loopexit153 ], [ %.sroa.0111.0251, %.loopexit163 ], [ %.sroa.0111.0251, %.loopexit158 ], [ %.sroa.0111.2265, %.loopexit ], [ %.sroa.0111.2265, %.loopexit.split-lp ] ; 3 uses
  %.sroa.23139.4 = phi ptr [ %.sroa.12133.0253, %.loopexit.split-lp159 ], [ %.sroa.23139.0252, %.loopexit.split-lp164 ], [ %.sroa.23139.0252, %.loopexit.split-lp154 ], [ %.sroa.23139.0252, %.loopexit153 ], [ %.sroa.23139.0252, %.loopexit163 ], [ %.sroa.12133.0253, %.loopexit158 ], [ %.sroa.23139.2266, %.loopexit ], [ %.sroa.23139.2266, %.loopexit.split-lp ]
  %.sroa.0127.4 = phi ptr [ %.sroa.0127.0254, %.loopexit.split-lp159 ], [ %.sroa.0127.0254, %.loopexit.split-lp164 ], [ %.sroa.0127.0254, %.loopexit.split-lp154 ], [ %.sroa.0127.0254, %.loopexit153 ], [ %.sroa.0127.0254, %.loopexit163 ], [ %.sroa.0127.0254, %.loopexit158 ], [ %.sroa.0127.2268, %.loopexit ], [ %.sroa.0127.2268, %.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp161, %.loopexit.split-lp159 ], [ %lpad.loopexit.split-lp166, %.loopexit.split-lp164 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ], [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit165, %.loopexit163 ], [ %lpad.loopexit160, %.loopexit158 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %.sroa.0111.4, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorImSaImEED2Ev.exit73, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = ptrtoint ptr %.sroa.23.4 to i64
  %i.fc = ptrtoint ptr %.sroa.0111.4 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.4, i64 noundef %i.fd) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit73

_ZNSt6vectorImSaImEED2Ev.exit73:                  ; preds = %bb.ai, %bb.aj
  %.not.i.i.i74 = icmp eq ptr %.sroa.0127.4, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorImSaImEED2Ev.exit75, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit73
  %i.fe = ptrtoint ptr %.sroa.23139.4 to i64
  %i.ff = ptrtoint ptr %.sroa.0127.4 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.4, i64 noundef %i.fg) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit75

_ZNSt6vectorImSaImEED2Ev.exit75:                  ; preds = %bb.ak, %_ZNSt6vectorImSaImEED2Ev.exit73, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.d ], [ %.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit73 ], [ %.pn.pn, %bb.ak ]
  %i.fh = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit75
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !29
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fm) #10
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorImSaImEED2Ev.exit75, %bb.al
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noreturn }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

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
!9 = distinct !{!9, !22}
!10 = distinct !{!10, !23, !24}
!11 = distinct !{!11, !24, !23}
!12 = distinct !{!12, !"_ZSt19__relocate_object_aISt4pairIdmES1_SaIS1_EEvPT_PT0_RT1_"}
!13 = distinct !{!13, !12, !"_ZSt19__relocate_object_aISt4pairIdmES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!14 = distinct !{!14, !12, !"_ZSt19__relocate_object_aISt4pairIdmES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, !22}
!16 = distinct !{!16, !22}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 double", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"double", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"p1 _ZTSSt4pairIdmE", !17, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt4pairIdmESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !25, i64 8}
!29 = !{!26, !25, i64 16}
!30 = !{!"long", !5, i64 0}
!31 = !{!"_ZTSSt4pairIdmE", !20, i64 0, !30, i64 8}
!32 = !{!31, !20, i64 0}
!33 = !{!31, !30, i64 8}
!34 = !{!14, !13}
!35 = !{!30, !30, i64 0}
end_hunk_0
