Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/ldb_cmd?download=true
inline.NumInlined: 11498
inline.NumDeleted: 3305
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_115WALFileIterator10GetNextWALB5cxx11Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc
  %i.s = phi ptr [ %.pre.i, %.noexc ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.h
  store i8 47, ptr %i.t, align 1, !tbaa !101
  store i64 %i.m, ptr %i.b, align 8, !tbaa !102
  %i.u = load ptr, ptr %0, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !101
  %.pre = load i64, ptr %i.b, align 8, !tbaa !102
  br label %bb.f

bb.e:                                             ; preds = %bb.l, %bb.g, %bb.d, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.z = load i64, ptr %i.a, align 8, !tbaa !101
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_.exit
  %i.ab = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_.exit ] ; 5 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !3286 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102 ; 6 uses
  %i.ag = sub i64 9223372036854775807, %i.ab
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.513) #35
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  %i.ai = add i64 %i.ab, %i.af                    ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !100   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.al = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !101
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.an = phi i64 [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ai, %i.an
  br i1 %.not.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not8.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.af, 1
  br i1 %cond.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.ad, align 1, !tbaa !101
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !101
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.af)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !102
  %i.aq = load ptr, ptr %0, align 8, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 0, ptr %i.ar, align 1, !tbaa !101
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !3286
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.c, align 8, !tbaa !3286
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_115WALFileIteratorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !101
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !111
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !101
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 3 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 3 uses
  %i.q = alloca i32, align 4                      ; 3 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 3 uses
  %i.u = alloca i32, align 4                      ; 3 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 3 uses
  %i.y = alloca i32, align 4                      ; 3 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 3 uses
  %i.ac = alloca i32, align 4                     ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.ad = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = ashr exact i64 %i.af, 5                 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, 16
  br i1 %i.ah, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.aj = icmp eq i64 %2, 0
  br i1 %i.aj, label %._crit_edge, label %.lr.ph96

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit"
  %i.ak = icmp eq i64 %i.ea, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph96, !llvm.loop !3287

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa90 = phi i64 [ %i.ag, %.lr.ph ], [ %i.gv, %bb.b ] ; 2 uses
  %storemerge35.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.al = add nsw i64 %.lcssa90, -2
  %i.am = lshr i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.am, %._crit_edge ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !100 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 7 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !102 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !100
  store i64 0, ptr %i.av, align 8, !tbaa !102
  store i8 0, ptr %i.at, align 8, !tbaa !101
  store ptr %i.ap, ptr %6, align 8, !tbaa !96
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.az = load i64, ptr %i.at, align 8, !tbaa !101 ; 2 uses
  store i64 %i.az, ptr %i.an, align 8, !tbaa !101
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !102 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !100
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !102
  store i8 0, ptr %i.at, align 8, !tbaa !101
  store ptr %i.ap, ptr %6, align 8, !tbaa !96
  %i.ba = icmp eq ptr %i.as, %i.an
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.bb = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.as, ptr %6, align 8, !tbaa !100
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.bd = phi i64 [ %i.bb, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !102
  store ptr %i.an, ptr %5, align 8, !tbaa !100
  store i64 0, ptr %i.ao, align 8, !tbaa !102
  store i8 0, ptr %i.an, align 8, !tbaa !101
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa90, ptr noundef align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ap
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.bg = load i64, ptr %i.ap, align 8, !tbaa !101
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bi = add nsw i64 %.010.i.i.i, -1
  %i.bj = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.an
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bl = load i64, ptr %i.an, align 8, !tbaa !101
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !3288

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ap
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.f
  %i.bq = load i64, ptr %i.ap, align 8, !tbaa !101
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  %i.bs = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.an
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !101
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph.i9.i.preheader:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.cc, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit" ], [ %storemerge35.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.bw, ptr %3, align 8, !tbaa !96
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !100 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i9.i
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !102 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.cd, ptr %3, align 8, !tbaa !100
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !101
  store i64 %i.ck, ptr %i.bw, align 8, !tbaa !101
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !102
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.cl = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ch, %bb.g ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.cl, ptr %i.bx, align 8, !tbaa !102
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !100
  store i64 0, ptr %i.cm, align 8, !tbaa !102
  store i8 0, ptr %i.ce, align 8, !tbaa !101
  %i.cn = load ptr, ptr %0, align 8, !tbaa !100   ; 5 uses
  %i.co = icmp eq ptr %i.cn, %i.by
  br i1 %i.co, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.cp = load i64, ptr %i.bz, align 8, !tbaa !102 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %.not21.i.i = icmp eq ptr %0, %i.cc
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.i, !prof !97

bb.i:                                             ; preds = %bb.h
  switch i64 %i.cp, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !101
  store i8 %i.cr, ptr %i.ce, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.cs = load i64, ptr %i.bz, align 8, !tbaa !102 ; 2 uses
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cs
  store i8 0, ptr %i.ct, align 1, !tbaa !101
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.cn, ptr %i.cc, align 8, !tbaa !100
  %i.cu = load i64, ptr %i.bz, align 8, !tbaa !102
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !102
  %i.cv = load i64, ptr %i.by, align 8, !tbaa !101
  store i64 %i.cv, ptr %i.ce, align 8, !tbaa !101
  store ptr %i.by, ptr %0, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h
  %i.cw = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.cn, %bb.h ], [ %i.by, %bb.l ]
  store i64 0, ptr %i.bz, align 8, !tbaa !102
  store i8 0, ptr %i.cw, align 1, !tbaa !101
  %i.cx = ptrtoint ptr %i.cc to i64
  %i.cy = sub i64 %i.cx, %i.ad                    ; 2 uses
  %i.cz = ashr exact i64 %i.cy, 5
  store ptr %i.ca, ptr %4, align 8, !tbaa !96
  %i.da = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bw
  br i1 %i.db, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.dc = load i64, ptr %i.bx, align 8, !tbaa !102 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.de, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.da, ptr %4, align 8, !tbaa !100
  %i.df = load i64, ptr %i.bw, align 8, !tbaa !101
  store i64 %i.df, ptr %i.ca, align 8, !tbaa !101
  %.pre5.i = load i64, ptr %i.bx, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.m
  %i.dg = phi i64 [ %i.dc, %bb.m ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.dg, ptr %i.cb, align 8, !tbaa !102
  store ptr %i.bw, ptr %3, align 8, !tbaa !100
  store i64 0, ptr %i.bx, align 8, !tbaa !102
  store i8 0, ptr %i.bw, align 8, !tbaa !101
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.cz, ptr noundef align 8 %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.dh = load ptr, ptr %4, align 8, !tbaa !100   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ca
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.dj = load i64, ptr %i.ca, align 8, !tbaa !101
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dl = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bw
  br i1 %i.dm, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dn = load i64, ptr %i.bw, align 8, !tbaa !101
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #38
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit"

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %4, align 8, !tbaa !100   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ca
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.o
  %i.ds = load i64, ptr %i.ca, align 8, !tbaa !101
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.du = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bw
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.dw = load i64, ptr %i.bw, align 8, !tbaa !101
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.dy = icmp sgt i64 %i.cy, 32
  br i1 %i.dy, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !3289

.lr.ph96:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3595 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03694 = phi i64 [ %i.ea, %bb.b ], [ %2, %.lr.ph ]
  %i.dz = phi i64 [ %i.gv, %bb.b ], [ %i.ag, %.lr.ph ]
  %i.ea = add nsw i64 %.03694, -1                 ; 3 uses
  %i.eb = lshr i64 %i.dz, 1
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.eb ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %storemerge3595, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #36
  store i64 0, ptr %i.z, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #36
  store i64 0, ptr %i.aa, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #36
  %i.ee = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ab, ptr noundef null) ; 0 uses
  %i.ef = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ac, ptr noundef null) ; 0 uses
  %i.eg = load i64, ptr %i.z, align 8, !tbaa !357
  %i.eh = load i64, ptr %i.aa, align 8, !tbaa !357
  %i.ei = icmp ult i64 %i.eg, %i.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #36
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #36
  %i.et = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef null) ; 0 uses
  %i.eu = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q, ptr noundef null) ; 0 uses
  %i.ev = load i64, ptr %i.n, align 8, !tbaa !357
  %i.ew = load i64, ptr %i.o, align 8, !tbaa !357
  %i.ex = icmp ult i64 %i.ev, %i.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #36
  br i1 %i.ex, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  store i64 0, ptr %i.j, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  store i64 0, ptr %i.k, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #36
  %i.ey = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef null) ; 0 uses
  %i.ez = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef null) ; 0 uses
  %i.fa = load i64, ptr %i.j, align 8, !tbaa !357
  %i.fb = load i64, ptr %i.k, align 8, !tbaa !357
  %i.fc = icmp ult i64 %i.fa, %i.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  %.26.i.i = select i1 %i.fc, ptr %i.ed, ptr %i.ec
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %i.ec, %bb.p ], [ %i.ai, %bb.r ], [ %.26.i.i, %bb.s ], [ %..i.i, %bb.q ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.ai, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i" ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3595, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit ], [ %i.fi, %bb.t ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i64 0, ptr %i.f, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store i64 0, ptr %i.g, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.fd = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef null) ; 0 uses
  %i.fe = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef null) ; 0 uses
  %i.ff = load i64, ptr %i.f, align 8, !tbaa !357
  %i.fg = load i64, ptr %i.g, align 8, !tbaa !357
  %i.fh = icmp ult i64 %i.ff, %i.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.fh, label %bb.t, label %.preheader.i.i, !llvm.loop !3290

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 6 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i64 0, ptr %i.b, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i64 0, ptr %i.c, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.fj = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef null) ; 0 uses
  %i.fk = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef null) ; 0 uses
  %i.fl = load i64, ptr %i.b, align 8, !tbaa !357
  %i.fm = load i64, ptr %i.c, align 8, !tbaa !357
  %i.fn = icmp ult i64 %i.fl, %i.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br i1 %i.fn, label %.preheader.i.i, label %bb.u, !llvm.loop !3291

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.fo = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !100 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 11 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 4 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !102 ; 5 uses
  %i.ft = icmp ult i64 %i.fs, 16
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !100 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 8 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.x:                                             ; preds = %bb.w
  %i.fx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 4 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !102 ; 4 uses
  %i.fz = icmp ult i64 %i.fy, 16
  call void @llvm.assume(i1 %i.fz)
  %.not.i = icmp eq i64 %i.fs, 0
  %.not38.i = icmp eq i64 %i.fy, 0                ; 2 uses
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ga = add nuw nsw i64 %i.fy, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.ga, i1 false)
  %i.gb = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %i.fp, i64 %i.gb, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ga, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  br i1 %.not38.i, label %bb.ab, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.z
  %i.gc = add nuw nsw i64 %i.fy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.gc, i1 false)
  %.pre52.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  %.pre51.i = load i64, ptr %i.fx, align 8, !tbaa !102
  store i64 %.pre51.i, ptr %i.fr, align 8, !tbaa !102
  store i64 0, ptr %i.fx, align 8, !tbaa !102
  store i8 0, ptr %.pre52.i, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.ab
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, !llvm.loop !3292

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i:       ; preds = %bb.y
  %i.gd = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %i.fp, i64 %i.gd, i1 false)
  %.pre50.i = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  %.pre.i17 = load i64, ptr %i.fr, align 8, !tbaa !102
  store i64 %.pre.i17, ptr %i.fx, align 8, !tbaa !102
  store i64 0, ptr %i.fr, align 8, !tbaa !102
  store i8 0, ptr %.pre50.i, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i:       ; preds = %bb.w
  %i.ge = load i64, ptr %i.fv, align 8, !tbaa !101
  %i.gf = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %i.fp, i64 %i.gf, i1 false)
  store ptr %i.fu, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  store ptr %i.fv, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  store i64 %i.ge, ptr %i.fp, align 8, !tbaa !101
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.v
  %i.gg = load i64, ptr %i.fp, align 8, !tbaa !101
  %i.gh = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !100 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 4 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !102 ; 2 uses
  %i.gm = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gm)
  %i.gn = add nuw nsw i64 %i.gl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 8 dereferenceable(1) %i.gi, i64 %i.gn, i1 false)
  store ptr %i.fo, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  store ptr %i.fp, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gh, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  store ptr %i.fo, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  %i.go = load i64, ptr %i.gi, align 8, !tbaa !101
  store i64 %i.go, ptr %i.fp, align 8, !tbaa !101
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i
  store i64 %i.gg, ptr %i.gi, align 8, !tbaa !101
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i, %bb.z, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !102
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !102
  store i64 %i.gs, ptr %i.gp, align 8, !tbaa !102
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit": ; preds = %bb.u
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge3595, i64 noundef %i.ea)
  %i.gt = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.gu = sub i64 %i.gt, %i.ad
  %i.gv = ashr exact i64 %i.gu, 5                 ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, 16
  br i1 %i.gw, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !3287

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_T0_SP_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.i = add nsw i64 %2, -1
  %i.j = sdiv i64 %i.i, 2                         ; 2 uses
  %i.k = icmp slt i64 %1, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.l = shl i64 %.051, 1                         ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  store i64 0, ptr %i.e, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i64 0, ptr %i.f, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  %i.q = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef null) ; 0 uses
  %i.r = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef null) ; 0 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !357
  %i.t = load i64, ptr %i.f, align 8, !tbaa !357
  %i.u = icmp ult i64 %i.s, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %spec.select = select i1 %i.u, i64 %i.o, i64 %i.m ; 5 uses
  %i.v = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %0, i64 %.051 ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !100 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab                ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.ac, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.ac, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !102 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %.not21.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !97

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ae, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !101
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !102 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !102
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !101
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !101
  store <2 x i64> %i.an, ptr %i.al, align 8, !tbaa !101
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !101
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !100
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !101
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %i.v, align 8, !tbaa !100
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.as = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.f ], [ %i.ab, %bb.g ], [ %i.aa, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !102
  store i8 0, ptr %i.as, align 1, !tbaa !101
  %i.au = icmp slt i64 %spec.select, %i.j
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !3293

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.av = and i64 %2, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.ax = add nsw i64 %2, -2
  %i.ay = ashr exact i64 %i.ax, 1
  %i.az = icmp eq i64 %.0.lcssa, %i.ay
  br i1 %i.az, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ba = shl nsw i64 %.0.lcssa, 1
  %i.bb = or disjoint i64 %i.ba, 1                ; 3 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bb ; 9 uses
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !100 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi                ; 2 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.bj, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.bj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !102 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %.not21.i28 = icmp eq i64 %i.bb, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !97

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bl, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !101
  store i8 %i.bn, ptr %i.be, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bh, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !102 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !102
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !101
  %.pre.i30 = load ptr, ptr %i.bc, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !100
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !tbaa !101
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !tbaa !101
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
end_hunk_1
