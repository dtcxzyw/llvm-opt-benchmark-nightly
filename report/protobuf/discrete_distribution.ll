Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/discrete_distribution?download=true
inline.NumInlined: 195
inline.NumDeleted: 96
begin_hunk_0

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<double, unsigned long>, std::allocator<std::pair<double, unsigned long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 7 uses
  %.not5.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i, label %.loopexit169, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.e, %.lr.ph.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load double, ptr %.sroa.02.06.i, align 8, !tbaa !19
  %i.e = fadd double %.07.i, %i.d                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !7

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
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !19
  %i.s = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.s, ptr %next.gep, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit169, label %.lr.ph.preheader535

.lr.ph.preheader535:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0146.0246.ph = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader535, %.lr.ph
  %.sroa.0146.0246 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0146.0246.ph, %.lr.ph.preheader535 ] ; 3 uses
  %i.u = load double, ptr %.sroa.0146.0246, align 8, !tbaa !19
  %i.v = fdiv double %i.u, %i.e
  store double %i.v, ptr %.sroa.0146.0246, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0146.0246, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.c
  br i1 %.not, label %.loopexit169, label %.lr.ph, !llvm.loop !9

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
  store ptr %i.ae, ptr %0, align 8, !tbaa !25
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aa
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !27
  %.pre = load ptr, ptr %1, align 8, !tbaa !17
  %.pre324 = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %i.ah = phi ptr [ %.pre324, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.ai = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.a, %bb.c ] ; 2 uses
  %.not149247 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not149247, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %.lr.ph256

.lr.ph256:                                        ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit
  %i.aj = uitofp nneg i64 %i.aa to double
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

.preheader152:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.al = icmp eq ptr %.sroa.0127.1, %.sroa.12133.1
  %i.am = icmp eq ptr %.sroa.0111.1, %.sroa.12.1
  %or.cond262 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond262, label %.critedge.preheader, label %.lr.ph269

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdmESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.an = landingpad { ptr, i32 }
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
  %.sroa.0108.0248 = phi ptr [ %i.ai, %.lr.ph256 ], [ %i.ct, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.ao = load double, ptr %.sroa.0108.0248, align 8, !tbaa !19
  %i.ap = fmul double %i.ao, %i.aj                ; 3 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 7 uses
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !27
  %.not.i38 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.ap, ptr %i.aq, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.at, ptr %i.ak, align 8, !tbaa !26
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %0, align 8, !tbaa !25    ; 5 uses
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775792
  br i1 %i.ay, label %bb.h, label %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc39 unwind label %.loopexit.split-lp154

.noexc39:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.az = ashr exact i64 %i.ax, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 576460752303423487)
  %i.bd = select i1 %i.bb, i64 576460752303423487, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #9
          to label %.noexc40 unwind label %.loopexit153 ; 5 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax ; 2 uses
  store double %i.ap, ptr %i.bg, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !31
  %.not10.i.i.i.i.i = icmp eq ptr %i.au, %i.aq
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc40, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.bf, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %i.au, %.noexc40 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !37
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, %i.aq
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc40
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bf, %.noexc40 ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #10
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.bf, ptr %0, align 8, !tbaa !25
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !27
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRKdiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f
  %i.bm = fcmp olt double %i.ap, 1.000000e+00
  br i1 %i.bm, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRKdiEEERS1_DpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.12.0250, %.sroa.23.0249
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.0255, ptr %.sroa.12.0250, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.12.0250, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = ptrtoint ptr %.sroa.12.0250 to i64
  %i.bp = ptrtoint ptr %.sroa.0111.0251 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 6 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc42 unwind label %.loopexit.split-lp164

.noexc42:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #9
          to label %.noexc43 unwind label %.loopexit163 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i64 %.0255, ptr %i.bz, align 8, !tbaa !33
  %i.ca = icmp sgt i64 %i.bq, 0
  br i1 %i.ca, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 8 %.sroa.0111.0251, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %.noexc43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0111.0251, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0251, i64 noundef %i.bq) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
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
  store i64 %.0255, ptr %.sroa.12133.0253, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.12133.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.r:                                             ; preds = %bb.p
  %i.ce = ptrtoint ptr %.sroa.12133.0253 to i64
  %i.cf = ptrtoint ptr %.sroa.0127.0254 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.s, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
          to label %.noexc51 unwind label %.loopexit.split-lp159

.noexc51:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.r
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #9
          to label %.noexc52 unwind label %.loopexit158 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i45
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store i64 %.0255, ptr %i.cp, align 8, !tbaa !33
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.t, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48

bb.t:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.0127.0254, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48: ; preds = %bb.t, %.noexc52
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.not.i17.i.i.i49 = icmp eq ptr %.sroa.0127.0254, null
  br i1 %.not.i17.i.i.i49, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.0254, i64 noundef %i.cg) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50: ; preds = %bb.u, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i48
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
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
  %.sroa.23.1 = phi ptr [ %.sroa.23.0249, %bb.k ], [ %i.cc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.23.0249, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.23.0249, %bb.q ] ; 3 uses
  %.sroa.12.1 = phi ptr [ %i.bn, %bb.k ], [ %i.cb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.12.0250, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.12.0250, %bb.q ] ; 4 uses
  %.sroa.0111.1 = phi ptr [ %.sroa.0111.0251, %bb.k ], [ %i.by, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0111.0251, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.0111.0251, %bb.q ] ; 4 uses
  %.sroa.23139.1 = phi ptr [ %.sroa.23139.0252, %bb.k ], [ %.sroa.23139.0252, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cs, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.23139.0252, %bb.q ] ; 3 uses
  %.sroa.12133.1 = phi ptr [ %.sroa.12133.0253, %bb.k ], [ %.sroa.12133.0253, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %i.cd, %bb.q ] ; 4 uses
  %.sroa.0127.1 = phi ptr [ %.sroa.0127.0254, %bb.k ], [ %.sroa.0127.0254, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.co, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i50 ], [ %.sroa.0127.0254, %bb.q ] ; 4 uses
  %.1 = add i64 %.0255, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0108.0248, i64 8 ; 2 uses
  %.not149 = icmp eq ptr %i.ct, %i.ah
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
  %i.cu = load ptr, ptr %0, align 8, !tbaa !25
  br label %.critedge

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051215random_internal24InitDiscreteDistributionEPSt6vectorIdSaIdEE:bb.a
  %.not.i.i.i62 = icmp ne i64 %i.ef, 0
  tail call void @llvm.assume(i1 %.not.i.i.i62)
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #9
          to label %.noexc67 unwind label %.loopexit ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i60
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.dz ; 2 uses
  store i64 %i.cy, ptr %i.ei, align 8, !tbaa !33
  %i.ej = icmp sgt i64 %i.dz, 0
  br i1 %i.ej, label %bb.ad, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63

bb.ad:                                            ; preds = %.noexc67
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr align 8 %.sroa.0127.2268, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63: ; preds = %bb.ad, %.noexc67
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.not.i17.i.i64 = icmp eq ptr %.sroa.0127.2268, null
  br i1 %.not.i17.i.i64, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.2268, i64 noundef %i.dz) #10
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65: ; preds = %bb.ae, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i63
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ef
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65, %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.w
  %.sroa.23.3 = phi ptr [ %.sroa.23.2263, %bb.w ], [ %i.dw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.23.2263, %bb.ab ], [ %.sroa.23.2263, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.2264, %bb.w ], [ %i.dv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.cv, %bb.ab ], [ %i.cv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.0111.3 = phi ptr [ %.sroa.0111.2265, %bb.w ], [ %i.ds, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0111.2265, %bb.ab ], [ %.sroa.0111.2265, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.23139.3 = phi ptr [ %.sroa.23139.2266, %bb.w ], [ %.sroa.23139.2266, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.23139.2266, %bb.ab ], [ %i.el, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 2 uses
  %.sroa.12133.3 = phi ptr [ %i.cx, %bb.w ], [ %i.cx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.12133.2267, %bb.ab ], [ %i.ek, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %.sroa.0127.3 = phi ptr [ %.sroa.0127.2268, %bb.w ], [ %.sroa.0127.2268, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0127.2268, %bb.ab ], [ %i.eh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i65 ] ; 3 uses
  %i.em = icmp eq ptr %.sroa.0127.3, %.sroa.12133.3
  %i.en = icmp eq ptr %.sroa.0111.3, %.sroa.12.3
  %or.cond = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond, label %.critedge.preheader, label %.lr.ph269, !llvm.loop !14

.preheader:                                       ; preds = %.critedge, %.critedge.preheader
  %.not151279 = icmp eq ptr %.sroa.0111.2.lcssa, %.sroa.12.2.lcssa
  br i1 %.not151279, label %._crit_edge, label %.lr.ph281

.lr.ph281:                                        ; preds = %.preheader
  %i.eo = load ptr, ptr %0, align 8, !tbaa !25
  br label %bb.ah

.critedge:                                        ; preds = %.lr.ph278, %.critedge
  %.sroa.088.0277 = phi ptr [ %.sroa.0127.2.lcssa, %.lr.ph278 ], [ %i.es, %.critedge ] ; 2 uses
  %i.ep = load i64, ptr %.sroa.088.0277, align 8, !tbaa !33 ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ep ; 2 uses
  store double 1.000000e+00, ptr %i.eq, align 8, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !31
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.088.0277, i64 8 ; 2 uses
  %.not150 = icmp eq ptr %i.es, %.sroa.12133.2.lcssa
  br i1 %.not150, label %.preheader, label %.critedge

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  %.not.i.i.i69 = icmp eq ptr %.sroa.0111.2.lcssa, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.et = ptrtoint ptr %.sroa.23.2.lcssa to i64
  %i.eu = ptrtoint ptr %.sroa.0111.2.lcssa to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.2.lcssa, i64 noundef %i.ev) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.af
  %.not.i.i.i70 = icmp eq ptr %.sroa.0127.2.lcssa, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ew = ptrtoint ptr %.sroa.23139.2.lcssa to i64
  %i.ex = ptrtoint ptr %.sroa.0127.2.lcssa to i64
  %i.ey = sub i64 %i.ew, %i.ex
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.2.lcssa, i64 noundef %i.ey) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit71

_ZNSt6vectorImSaImEED2Ev.exit71:                  ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE7reserveEm.exit, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ag
  ret void

bb.ah:                                            ; preds = %.lr.ph281, %bb.ah
  %.sroa.079.0280 = phi ptr [ %.sroa.0111.2.lcssa, %.lr.ph281 ], [ %i.fc, %bb.ah ] ; 2 uses
  %i.ez = load i64, ptr %.sroa.079.0280, align 8, !tbaa !33 ; 2 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ez ; 2 uses
  store double 1.000000e+00, ptr %i.fa, align 8, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !31
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.079.0280, i64 8 ; 2 uses
  %.not151 = icmp eq ptr %i.fc, %.sroa.12.2.lcssa
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
  %i.fd = ptrtoint ptr %.sroa.23.4 to i64
  %i.fe = ptrtoint ptr %.sroa.0111.4 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.4, i64 noundef %i.ff) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit73

_ZNSt6vectorImSaImEED2Ev.exit73:                  ; preds = %bb.ai, %bb.aj
  %.not.i.i.i74 = icmp eq ptr %.sroa.0127.4, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorImSaImEED2Ev.exit75, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit73
  %i.fg = ptrtoint ptr %.sroa.23139.4 to i64
  %i.fh = ptrtoint ptr %.sroa.0127.4 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.4, i64 noundef %i.fi) #10
  br label %_ZNSt6vectorImSaImEED2Ev.exit75

_ZNSt6vectorImSaImEED2Ev.exit75:                  ; preds = %bb.ak, %_ZNSt6vectorImSaImEED2Ev.exit73, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.d ], [ %.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit73 ], [ %.pn.pn, %bb.ak ]
  %i.fj = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit75
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !27
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #10
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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = distinct !{!7, !20}
!8 = distinct !{!8, !21, !22}
!9 = distinct !{!9, !22, !21}
!13 = distinct !{!13, !20}
!14 = distinct !{!14, !20}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 double", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"double", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"p1 _ZTSSt4pairIdmE", !15, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseISt4pairIdmESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 8}
!27 = !{!24, !23, i64 16}
!28 = !{!"long", !4, i64 0}
!29 = !{!"_ZTSSt4pairIdmE", !18, i64 0, !28, i64 8}
!30 = !{!29, !18, i64 0}
!31 = !{!29, !28, i64 8}
!33 = !{!28, !28, i64 0}
!34 = distinct !{!34, i1 false, !"_ZSt19__relocate_object_aISt4pairIdmES1_SaIS1_EEvPT_PT0_RT1_"}
!35 = distinct !{!35, !34, !"_ZSt19__relocate_object_aISt4pairIdmES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !34, !"_ZSt19__relocate_object_aISt4pairIdmES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!37 = !{!35, !36}
end_hunk_1
