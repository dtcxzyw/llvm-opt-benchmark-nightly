Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/edge_collapse_is_valid?download=true
inline.NumInlined: 217
inline.NumDeleted: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl22edge_collapse_is_validERSt6vectorIiSaIiEES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !18     ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp ult i64 %i.n, 5
  br i1 %i.o, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.c, align 4, !tbaa !11
  %i.q = load i32, ptr %i.k, align 4, !tbaa !11
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = icmp eq i32 %i.t, %i.v
  %i.x = icmp eq i64 %i.f, 12
  %i.y = icmp eq i64 %i.n, 12
  %i.z = and i1 %i.x, %i.y
  %or.cond48 = select i1 %i.z, i1 %i.w, i1 false
  br i1 %or.cond48, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.not.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = xor i64 %i.ab, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.c, ptr %i.b, i64 noundef %i.ac)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.c, ptr %i.b)
  %.pre = load ptr, ptr %1, align 8, !tbaa !19
  %.pre63 = load ptr, ptr %i.i, align 8, !tbaa !19
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.thread, %bb.e
  %i.ad = phi ptr [ %i.j, %.thread ], [ %.pre63, %bb.e ] ; 5 uses
  %i.ae = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.e ] ; 5 uses
  %.not.i.i29 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = xor i64 %i.ak, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ae, ptr %i.ad, i64 noundef %i.al)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ae, ptr %i.ad)
  %.pre64 = load ptr, ptr %1, align 8, !tbaa !19
  %.pre65 = load ptr, ptr %i.i, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.am = phi ptr [ %.pre65, %bb.f ], [ %i.ad, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 2 uses
  %i.an = phi ptr [ %.pre64, %bb.f ], [ %i.ae, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %i.ap
  %i.ar = icmp ne ptr %i.an, %i.am
  %or.cond14.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond14.i, label %.lr.ph.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.q
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %bb.q ], [ null, %bb.g ] ; 9 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.2, %bb.q ], [ null, %bb.g ] ; 6 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %bb.q ], [ null, %bb.g ] ; 4 uses
  %.sroa.010.016.i = phi ptr [ %.sroa.010.1.i, %bb.q ], [ %i.ao, %bb.g ] ; 5 uses
  %.sroa.06.015.i = phi ptr [ %.sroa.06.1.i, %bb.q ], [ %i.an, %bb.g ] ; 4 uses
  %i.as = load i32, ptr %.sroa.010.016.i, align 4, !tbaa !11 ; 3 uses
  %i.at = load i32, ptr %.sroa.06.015.i, align 4, !tbaa !11 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 4
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph.i
  %i.aw = icmp slt i32 %i.at, %i.as
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i33 = icmp eq ptr %.sroa.9.0, %.sroa.13.0
  br i1 %.not.i.i.i33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.as, ptr %.sroa.9.0, align 4, !tbaa !11
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ay = ptrtoint ptr %.sroa.9.0 to i64
  %i.az = ptrtoint ptr %.sroa.0.0 to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 7 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775804
  br i1 %i.bb, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.a

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.bc = ashr exact i64 %i.ba, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 2305843009213693951)
  %i.bg = select i1 %i.be, i64 2305843009213693951, i64 %i.bf ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #9
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.a ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  %i.bk = load i32, ptr %.sroa.010.016.i, align 4, !tbaa !11
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !11
  %i.bl = icmp sgt i64 %i.ba, 0
  br i1 %i.bl, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.o:                                             ; preds = %.noexc34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bi, ptr align 4 %.sroa.0.0, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.o, %.noexc34
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ba) #10
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bg
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i

_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.l
  %.sroa.0.1 = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0.0, %bb.l ]
  %.pn = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9.0, %bb.l ]
  %.sroa.13.1 = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.0, %bb.l ]
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i, %bb.j, %bb.h
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.h ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.1, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i ] ; 4 uses
  %.sroa.9.2 = phi ptr [ %.sroa.9.0, %bb.h ], [ %.sroa.9.0, %bb.j ], [ %.sroa.9.1, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0, %bb.h ], [ %.sroa.13.0, %bb.j ], [ %.sroa.13.1, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i ] ; 2 uses
  %.sroa.06.1.i = phi ptr [ %.sroa.06.015.i, %bb.h ], [ %i.ax, %bb.j ], [ %i.bo, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i ] ; 2 uses
  %.sroa.010.1.i = phi ptr [ %i.av, %bb.h ], [ %.sroa.010.016.i, %bb.j ], [ %i.bn, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi.exit.i ] ; 2 uses
  %i.bp = icmp ne ptr %.sroa.010.1.i, %i.ap
  %i.bq = icmp ne ptr %.sroa.06.1.i, %i.am
  %or.cond.i = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZSt16set_intersectionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_St20back_insert_iteratorIS5_EET1_T_SA_T0_SB_S9_.exit, !llvm.loop !13

_ZSt16set_intersectionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_St20back_insert_iteratorIS5_EET1_T_SA_T0_SB_S9_.exit: ; preds = %bb.q
  %i.br = ptrtoint ptr %.sroa.9.2 to i64
  %i.bs = ptrtoint ptr %.sroa.0.2 to i64          ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs
  %.not = icmp eq i64 %i.bt, 8                    ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt16set_intersectionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_St20back_insert_iteratorIS5_EET1_T_SA_T0_SB_S9_.exit
  %i.bu = ptrtoint ptr %.sroa.13.2 to i64
  %i.bv = sub i64 %i.bu, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bv) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.loopexit.split-lp.loopexit.split-lp.a:           ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.n
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i31 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIiSaIiEED2Ev.exit32, label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ba) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit32

_ZNSt6vectorIiSaIiEED2Ev.exit32:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.a, %bb.s
  resume { ptr, i32 } %lpad.loopexit.split-lp88

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.g, %bb.r, %_ZSt16set_intersectionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_St20back_insert_iteratorIS5_EET1_T_SA_T0_SB_S9_.exit, %bb.a, %bb.b
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ %.not, %bb.r ], [ %.not, %_ZSt16set_intersectionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_St20back_insert_iteratorIS5_EET1_T_SA_T0_SB_S9_.exit ], [ false, %bb.g ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11   ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !11
  store i32 %i.k, ptr %i.i, align 4, !tbaa !11
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !11
  %i.x = load i32, ptr %i.v, align 4, !tbaa !11
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !11
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !11
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !11
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ar, align 4, !tbaa !11
  %i.as = icmp sgt i64 %i.m, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !21

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !11  ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !11 ; 5 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !11 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %0, align 4, !tbaa !11
  store i32 %i.az, ptr %0, align 4, !tbaa !11
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !11
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp slt i32 %i.ay, %i.bb
  %i.bf = load i32, ptr %0, align 4, !tbaa !11    ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %0, align 4, !tbaa !11
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !11
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ay, ptr %0, align 4, !tbaa !11
  store i32 %i.bf, ptr %i.f, align 4, !tbaa !11
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = icmp slt i32 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %0, align 4, !tbaa !11
  store i32 %i.ay, ptr %0, align 4, !tbaa !11
  store i32 %i.bh, ptr %i.f, align 4, !tbaa !11
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp slt i32 %i.az, %i.bb
  %i.bj = load i32, ptr %0, align 4, !tbaa !11    ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.bb, ptr %0, align 4, !tbaa !11
  store i32 %i.bj, ptr %i.ax, align 4, !tbaa !11
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.az, ptr %0, align 4, !tbaa !11
  store i32 %i.bj, ptr %i.aw, align 4, !tbaa !11
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !11    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !11 ; 2 uses
end_hunk_0
