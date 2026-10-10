Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_checker?download=true
inline.NumInlined: 625
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i8 }

$_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE6resizeEm = comdat any

$_ZN7CaDiCaL7Checker14import_literalEi = comdat any

$_ZN7CaDiCaL6Tracer13demote_clauseEmRKSt6vectorIiSaIiEE = comdat any

$_ZN7CaDiCaL6Tracer12weaken_minusElRKSt6vectorIiSaIiEE = comdat any

$_ZN7CaDiCaL6Tracer10strengthenEl = comdat any

$_ZN7CaDiCaL7Checker13report_statusEil = comdat any

$_ZN7CaDiCaL7Checker15finalize_clauseElRKSt6vectorIiSaIiEE = comdat any

$_ZN7CaDiCaL7Checker11begin_proofEl = comdat any

$_ZN7CaDiCaL6Tracer11solve_queryEv = comdat any

$_ZN7CaDiCaL6Tracer14add_assumptionEi = comdat any

$_ZN7CaDiCaL6Tracer14add_constraintERKSt6vectorIiSaIiEE = comdat any

$_ZN7CaDiCaL6Tracer17reset_assumptionsEv = comdat any

$_ZN7CaDiCaL6Tracer14conclude_unsatENS_14ConclusionTypeERKSt6vectorIlSaIlEE = comdat any

$_ZN7CaDiCaL6Tracer12conclude_satERKSt6vectorIiSaIiEE = comdat any

$_ZN7CaDiCaL6Tracer16conclude_unknownERKSt6vectorIiSaIiEE = comdat any

$_ZN7CaDiCaL6Tracer18notify_equivalenceEii = comdat any

$_ZNSt6vectorIS_IN7CaDiCaL12CheckerWatchESaIS1_EESaIS3_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIaSaIaEE17_M_default_appendEm = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEET_SC_SC_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_RT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZTIN7CaDiCaL10StatTracerE = comdat any

$_ZTSN7CaDiCaL10StatTracerE = comdat any

$_ZTIN7CaDiCaL14InternalTracerE = comdat any

$_ZTSN7CaDiCaL14InternalTracerE = comdat any

$_ZTIN7CaDiCaL6TracerE = comdat any

$_ZTSN7CaDiCaL6TracerE = comdat any

@_ZTVN7CaDiCaL7CheckerE = constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr @_ZTIN7CaDiCaL7CheckerE, ptr @_ZN7CaDiCaL7CheckerD1Ev, ptr @_ZN7CaDiCaL7CheckerD0Ev, ptr @_ZN7CaDiCaL7Checker19add_original_clauseElbRKSt6vectorIiSaIiEEb, ptr @_ZN7CaDiCaL7Checker18add_derived_clauseElbiRKSt6vectorIiSaIiEERKS1_IlSaIlEE, ptr @_ZN7CaDiCaL7Checker13delete_clauseElbRKSt6vectorIiSaIiEE, ptr @_ZN7CaDiCaL6Tracer13demote_clauseEmRKSt6vectorIiSaIiEE, ptr @_ZN7CaDiCaL6Tracer12weaken_minusElRKSt6vectorIiSaIiEE, ptr @_ZN7CaDiCaL6Tracer10strengthenEl, ptr @_ZN7CaDiCaL7Checker13report_statusEil, ptr @_ZN7CaDiCaL7Checker15finalize_clauseElRKSt6vectorIiSaIiEE, ptr @_ZN7CaDiCaL7Checker11begin_proofEl, ptr @_ZN7CaDiCaL6Tracer11solve_queryEv, ptr @_ZN7CaDiCaL6Tracer14add_assumptionEi, ptr @_ZN7CaDiCaL6Tracer14add_constraintERKSt6vectorIiSaIiEE, ptr @_ZN7CaDiCaL6Tracer17reset_assumptionsEv, ptr @_ZN7CaDiCaL7Checker21add_assumption_clauseElRKSt6vectorIiSaIiEERKS1_IlSaIlEE, ptr @_ZN7CaDiCaL6Tracer14conclude_unsatENS_14ConclusionTypeERKSt6vectorIlSaIlEE, ptr @_ZN7CaDiCaL6Tracer12conclude_satERKSt6vectorIiSaIiEE, ptr @_ZN7CaDiCaL6Tracer16conclude_unknownERKSt6vectorIiSaIiEE, ptr @_ZN7CaDiCaL6Tracer18notify_equivalenceEii, ptr @_ZN7CaDiCaL7Checker16connect_internalEPNS_8InternalE, ptr @_ZN7CaDiCaL7Checker11print_statsEv] }, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to check derived clause:\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"deleted clause not in proof:\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"p cnf %d %lu\0A\00", align 1
@_ZTIN7CaDiCaL7CheckerE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7CaDiCaL7CheckerE, ptr @_ZTIN7CaDiCaL10StatTracerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7CaDiCaL7CheckerE = constant [19 x i8] c"N7CaDiCaL7CheckerE\00", align 1
@_ZTIN7CaDiCaL10StatTracerE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7CaDiCaL10StatTracerE, ptr @_ZTIN7CaDiCaL14InternalTracerE }, comdat, align 8
@_ZTSN7CaDiCaL10StatTracerE = linkonce_odr constant [23 x i8] c"N7CaDiCaL10StatTracerE\00", comdat, align 1
@_ZTIN7CaDiCaL14InternalTracerE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7CaDiCaL14InternalTracerE, ptr @_ZTIN7CaDiCaL6TracerE }, comdat, align 8
@_ZTSN7CaDiCaL14InternalTracerE = linkonce_odr constant [27 x i8] c"N7CaDiCaL14InternalTracerE\00", comdat, align 1
@_ZTIN7CaDiCaL6TracerE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7CaDiCaL6TracerE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7CaDiCaL6TracerE = linkonce_odr constant [18 x i8] c"N7CaDiCaL6TracerE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@str = private unnamed_addr constant [2 x i8] c"0\00", align 1

@_ZN7CaDiCaL7CheckerC1EPNS_8InternalE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7CaDiCaL7CheckerC2EPNS_8InternalE
@_ZN7CaDiCaL7CheckerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7CaDiCaL7CheckerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 1 dereferenceable(1) ptr @_ZN7CaDiCaL7Checker4markEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.b = shl nuw i32 %i.a, 1
  %.inv.i = icmp sgt i32 %1, -1
  %spec.select.v.i = select i1 %.inv.i, i32 -2, i32 -1
  %spec.select.i = add i32 %i.b, %spec.select.v.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = zext i32 %spec.select.i to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  ret ptr %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN7CaDiCaL7Checker10new_clauseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = add i64 %i.g, 24
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #21 ; 13 uses
  %1 = ptrtoaddr ptr %i.j to i64
  store ptr null, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !48
  %i.n = trunc i64 %i.h to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 12 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !50   ; 6 uses
  %2 = ptrtoaddr ptr %i.q to i64                  ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %.not7781 = icmp eq ptr %i.q, %i.r
  br i1 %.not7781, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = add i64 %i.s, -4
  %i.u = sub i64 %i.t, %2                         ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 60
  br i1 %min.iters.check, label %.lr.ph.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %3 = sub i64 %1, %2
  %4 = add i64 %3, 19
  %diff.check = icmp ult i64 %4, 31
  br i1 %diff.check, label %.lr.ph.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.q, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep121, align 4, !tbaa !51
  %wide.load122 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !51
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !51
  store <4 x i32> %wide.load122, ptr %i.ac, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader131

.lr.ph.preheader131:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03983.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.sroa.073.082.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.pre = load i32, ptr %i.p, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ae = phi i32 [ %.pre, %._crit_edge.loopexit ], [ undef, %bb.a ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !54
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55 ; 4 uses
  %i.ak = sext i32 %i.ae to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !56
  %.not = icmp eq i8 %i.am, 0
  br i1 %.not, label %.loopexit, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader131, %.lr.ph
  %.03983 = phi ptr [ %i.ao, %.lr.ph ], [ %.03983.ph, %.lr.ph.preheader131 ] ; 2 uses
  %.sroa.073.082 = phi ptr [ %i.ap, %.lr.ph ], [ %.sroa.073.082.ph, %.lr.ph.preheader131 ] ; 2 uses
  %i.an = load i32, ptr %.sroa.073.082, align 4, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %.03983, i64 4
  store i32 %i.an, ptr %.03983, align 4, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.073.082, i64 4 ; 2 uses
  %.not77 = icmp eq ptr %i.ap, %i.r
  br i1 %.not77, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !91

bb.b:                                             ; preds = %.loopexit.1
  store i32 %i.dn, ptr %i.dy, align 8, !tbaa !51
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.dw, ptr %.sroa.566.0..sroa_idx, align 4, !tbaa !51
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.j, ptr %.sroa.669.0..sroa_idx, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %i.aq, ptr %i.dx, align 8, !tbaa !60
  br label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %.loopexit.1
  %i.ar = load ptr, ptr %i.du, align 8, !tbaa !61 ; 5 uses
  %i.as = ptrtoint ptr %i.dy to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775792
  br i1 %i.av, label %bb.d, label %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.aw = ashr exact i64 %i.au, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 576460752303423487)
  %i.ba = select i1 %i.ay, i64 576460752303423487, i64 %i.az ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 4
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #21 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au ; 3 uses
  store i32 %i.dn, ptr %i.bd, align 8, !tbaa !51
  %.sroa.566.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %i.dw, ptr %.sroa.566.0..sroa_idx67, align 4, !tbaa !51
  %.sroa.669.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.j, ptr %.sroa.669.0..sroa_idx70, align 8, !tbaa !57
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.dy
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !62, !alias.scope !99
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %i.dy
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bc, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bh = load ptr, ptr %i.dz, align 8, !tbaa !64
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bj) #23
  br label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bc, ptr %i.du, align 8, !tbaa !61
  store ptr %i.bg, ptr %i.dx, align 8, !tbaa !60
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bk, ptr %i.dz, align 8, !tbaa !64
  %.pre92 = load ptr, ptr %i.dr, align 8, !tbaa !65
  %.pre93 = load i32, ptr %i.p, align 4, !tbaa !51
  %.pre94 = load i32, ptr %i.o, align 8, !tbaa !49
  br label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bl = phi i32 [ %i.dw, %bb.b ], [ %.pre94, %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bm = phi i32 [ %i.do, %bb.b ], [ %.pre93, %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bn = phi ptr [ %i.dt, %bb.b ], [ %.pre92, %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bo = load i32, ptr %i.dv, align 8, !tbaa !51 ; 2 uses
  %i.bp = tail call i32 @llvm.abs.i32(i32 %i.bo, i1 true)
  %i.bq = shl nuw i32 %i.bp, 1
  %.inv.i.i42 = icmp sgt i32 %i.bo, -1
  %spec.select.v.i.i43 = select i1 %.inv.i.i42, i32 -2, i32 -1
  %spec.select.i.i44 = add i32 %i.bq, %spec.select.v.i.i43
  %i.br = zext i32 %spec.select.i.i44 to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !60 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !64
  %.not.i.i45 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i.i45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE9push_backEOS1_.exit
  store i32 %i.bm, ptr %i.bu, align 8, !tbaa !51
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.bl, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !60
  br label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE9push_backEOS1_.exit
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !61 ; 5 uses
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775792
  br i1 %i.cc, label %bb.h, label %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.g
  %i.cd = ashr exact i64 %i.cb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 576460752303423487)
  %i.ch = select i1 %i.cf, i64 576460752303423487, i64 %i.cg ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #21 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb ; 3 uses
  store i32 %i.bm, ptr %i.ck, align 8, !tbaa !51
  %.sroa.5.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.bl, ptr %.sroa.5.0..sroa_idx60, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx62, align 8, !tbaa !57
  %.not10.i.i.i.i.i.i49 = icmp eq ptr %i.by, %i.bu
  br i1 %.not10.i.i.i.i.i.i49, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i50:                             ; preds = %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i46, %.lr.ph.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i51 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i50 ], [ %i.cj, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i46 ] ; 2 uses
  %.0911.i.i.i.i.i.i52 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i50 ], [ %i.by, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i46 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i51, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i52, i64 16, i1 false), !tbaa.struct !62, !alias.scope !100
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i52, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i51, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i53 = icmp eq ptr %i.cl, %i.bu
  br i1 %.not.i.i.i.i.i.i53, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i50, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i50, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i46
  %.0.lcssa.i.i.i.i.i.i55 = phi ptr [ %i.cj, %_ZNKSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i46 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i50 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i55, i64 16
  %.not.i23.i.i.i56 = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i56, label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i57, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i54
  %i.co = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cq) #23
  br label %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i57

_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i57: ; preds = %bb.i, %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i54
  store ptr %i.cj, ptr %i.bs, align 8, !tbaa !61
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !60
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.cr, ptr %i.bv, align 8, !tbaa !64
  br label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit

_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit:        ; preds = %_ZNSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i57, %bb.f
  ret ptr %i.j

.critedge:                                        ; preds = %._crit_edge, %bb.j
  %.0.in = phi i32 [ %.0, %bb.j ], [ 0, %._crit_edge ]
  %.0 = add i32 %.0.in, 1                         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !51
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !51
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !77
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { cold }
attributes #26 = { cold nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !63}
!1 = distinct !{!1, !63}
!2 = distinct !{!2, !63}
!3 = distinct !{!3, !63}
!4 = distinct !{!4, !63}
!5 = distinct !{!5, !63}
!6 = distinct !{!6, !63}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!20, !19, i64 0}
!23 = !{!"p1 _ZTSN7CaDiCaL13CheckerClauseE", !15, i64 0}
!24 = !{!"long", !11, i64 0}
!25 = !{!"_ZTSN7CaDiCaL13CheckerClauseE", !23, i64 0, !24, i64 8, !12, i64 16, !11, i64 20}
!26 = !{!25, !23, i64 0}
!27 = !{!"_ZTSN7CaDiCaL6TracerE"}
!28 = !{!"_ZTSN7CaDiCaL14InternalTracerE", !27, i64 0}
!29 = !{!"_ZTSN7CaDiCaL10StatTracerE", !28, i64 0}
!30 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !15, i64 0}
!31 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE", !15, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EESaIS4_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EESaIS4_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL12CheckerWatchESaIS1_EESaIS3_EE", !34, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !17, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIaSaIaEE", !37, i64 0}
!39 = !{!"bool", !11, i64 0}
!40 = !{!"any p2 pointer", !15, i64 0}
!41 = !{!"p2 _ZTSN7CaDiCaL13CheckerClauseE", !40, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !20, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIiSaIiEE", !43, i64 0}
!45 = !{!"_ZTSN7CaDiCaL7CheckerUt_E", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88}
!46 = !{!"_ZTSN7CaDiCaL7CheckerE", !29, i64 0, !30, i64 8, !24, i64 16, !16, i64 24, !35, i64 32, !38, i64 56, !39, i64 80, !24, i64 88, !24, i64 96, !24, i64 104, !41, i64 112, !23, i64 120, !44, i64 128, !44, i64 152, !44, i64 176, !12, i64 200, !11, i64 208, !24, i64 240, !24, i64 248, !45, i64 256}
!47 = !{!46, !24, i64 240}
!48 = !{!25, !24, i64 8}
!49 = !{!25, !12, i64 16}
!50 = !{!19, !19, i64 0}
!51 = !{!12, !12, i64 0}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!46, !24, i64 88}
!55 = !{!46, !16, i64 24}
!56 = !{!11, !11, i64 0}
!57 = !{!23, !23, i64 0}
!58 = !{!"p1 _ZTSN7CaDiCaL12CheckerWatchE", !15, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL12CheckerWatchESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 8}
!61 = !{!59, !58, i64 0}
!62 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 8, !57}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!59, !58, i64 16}
!65 = !{!32, !31, i64 0}
!66 = !{!24, !24, i64 0}
!67 = !{!46, !24, i64 104}
!68 = !{!46, !41, i64 112}
!69 = !{!46, !24, i64 16}
!70 = !{!46, !23, i64 120}
!71 = !{!58, !58, i64 0}
!72 = !{!"_ZTSN7CaDiCaL12CheckerWatchE", !12, i64 0, !12, i64 4, !23, i64 8}
!73 = !{!72, !23, i64 8}
!74 = !{!"vtable pointer", !10, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!46, !30, i64 8}
!77 = !{!20, !19, i64 16}
!78 = !{!17, !16, i64 16}
!79 = !{!32, !31, i64 8}
!80 = !{!32, !31, i64 16}
!81 = !{!17, !16, i64 8}
!82 = !{!46, !24, i64 248}
!83 = !{!46, !24, i64 304}
!84 = !{!46, !12, i64 200}
!85 = !{!46, !39, i64 80}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!89 = !{!88, !88, i64 0}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52}
!92 = distinct !{!92, i1 false, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_"}
!93 = distinct !{!93, !92, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!94 = distinct !{!94, !92, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!95 = distinct !{!95, i1 false, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_"}
!96 = distinct !{!96, !95, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!97 = distinct !{!97, !95, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !63}
!99 = !{!94, !93}
!100 = !{!97, !96}
!101 = distinct !{!101, !63}
!102 = distinct !{!102, !63}
!103 = distinct !{!103, !63}
!104 = distinct !{!104, !63}
!105 = distinct !{!105, !63}
!106 = distinct !{!106, !63}
!107 = distinct !{!107, !63}
!108 = !{!46, !24, i64 336}
!109 = distinct !{!109, i1 false, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_"}
!110 = distinct !{!110, !109, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!111 = distinct !{!111, !109, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!112 = !{!111, !110}
!113 = distinct !{!113, !63}
!114 = distinct !{!114, !63}
!115 = distinct !{!115, !63}
!116 = distinct !{!116, !63}
!117 = distinct !{!117, !63}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = !{!46, !24, i64 320}
!121 = !{!46, !24, i64 312}
!122 = distinct !{!122, !63}
!123 = distinct !{!123, i1 false, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_"}
!124 = distinct !{!124, !123, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!125 = distinct !{!125, !123, !"_ZSt19__relocate_object_aIN7CaDiCaL12CheckerWatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !63}
!127 = distinct !{!127, !63}
!128 = distinct !{!128, !63}
!129 = !{!46, !24, i64 296}
!130 = !{!72, !12, i64 0}
!131 = !{!72, !12, i64 4}
!132 = !{!125, !124}
!133 = !{!46, !24, i64 328}
!134 = !{!46, !24, i64 288}
!135 = distinct !{!135, !63}
!136 = distinct !{!136, !63}
!137 = distinct !{!137, !63}
!138 = !{!46, !24, i64 96}
!139 = !{!46, !24, i64 344}
!140 = !{!46, !24, i64 256}
!141 = !{!46, !24, i64 272}
!142 = !{!46, !24, i64 280}
!143 = distinct !{!143, !63}
!144 = distinct !{!144, !63, !52, !53}
!145 = distinct !{!145, !63}
!146 = distinct !{!146, !63, !53, !52}
!147 = distinct !{!147, !63}
!148 = distinct !{!148, !63}
!149 = distinct !{!149, !63}
!150 = distinct !{!150, i1 false, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!151 = distinct !{!151, !150, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!152 = distinct !{!152, !150, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!153 = distinct !{!153, !63}
!154 = !{!151}
!155 = !{!152}
!156 = distinct !{!156, !63}
!157 = distinct !{!157, !63}
!158 = distinct !{!158, !63}
!159 = distinct !{!159, !63}
!160 = distinct !{!160, !63}
!161 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!162 = distinct !{!162, !63}
!163 = distinct !{!163, !63}
!164 = distinct !{!164, !63}
!165 = distinct !{!165, !63}
end_hunk_1
