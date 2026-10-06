Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/testing_utilities?download=true
inline.NumInlined: 1055
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5nglog12_GLOBAL__N_110SplitLinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.loopexit

bb.k:                                             ; preds = %.noexc10.i.i, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.m
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.l
  %i.at = load i64, ptr %i.m, align 8, !tbaa !52
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.k
  %.pn23 = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.v

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.av = load i64, ptr %i.c, align 8, !tbaa !50, !noalias !142 ; 3 uses
  %i.aw = icmp ugt i64 %.01965, %i.av
  br i1 %i.aw, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i31

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i64 noundef %.01965, i64 noundef %i.av) #35
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i31: ; preds = %bb.m
  %i.ax = sub i64 %i.i, %.01965
  store ptr %i.e, ptr %3, align 8, !tbaa !47, !alias.scope !142
  %i.ay = load ptr, ptr %1, align 8, !tbaa !49, !noalias !142
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.01965 ; 2 uses
  %i.ba = sub nuw i64 %i.av, %.01965
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ba) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !142
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !51, !noalias !142
  %i.bb = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bb, label %.noexc10.i.i33, label %._crit_edge.i.i.i32

.noexc10.i.i33:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i31
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35 unwind label %.loopexit50 ; 2 uses

.noexc35:                                         ; preds = %.noexc10.i.i33
  store ptr %i.bc, ptr %3, align 8, !tbaa !49, !alias.scope !142
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !142
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !52, !alias.scope !142
  br label %._crit_edge.i.i.i32

._crit_edge.i.i.i32:                              ; preds = %.noexc35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i31
  %i.be = phi ptr [ %i.bc, %.noexc35 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i31 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i32
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !52
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !52
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.az, i64 %spec.select.i.i.i, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i32
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !142 ; 2 uses
  store i64 %i.bg, ptr %i.f, align 8, !tbaa !50, !alias.scope !142
  %i.bh = load ptr, ptr %3, align 8, !tbaa !49, !alias.scope !142
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !142
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !55  ; 6 uses
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !57
  %.not.i.i37 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i37, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !47
  %i.bm = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  br i1 %i.bn, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

bb.s:                                             ; preds = %bb.r
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !50  ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.r
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !49
  %i.br = load i64, ptr %i.e, align 8, !tbaa !52
  store i64 %i.br, ptr %i.bl, align 8, !tbaa !52
  %.pre = load i64, ptr %i.f, align 8, !tbaa !50
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38
  %i.bs = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38 ], [ %i.bo, %bb.s ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !50
  store ptr %i.e, ptr %3, align 8, !tbaa !49
  store i64 0, ptr %i.f, align 8, !tbaa !50
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43

bb.t:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41 unwind label %bb.u

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41: ; preds = %bb.t
  %.pre73 = load ptr, ptr %3, align 8, !tbaa !49  ; 2 uses
  %i.bw = icmp eq ptr %.pre73, %i.e
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !52
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %.pre73, i64 noundef %i.by) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bz = add nuw i64 %i.i, 1                     ; 2 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !50
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.b, label %.loopexit

.loopexit50:                                      ; preds = %.noexc10.i.i33
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.e
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.u
  %i.cf = load i64, ptr %i.e, align 8, !tbaa !52
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.u, %.loopexit50, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  %.pn = phi { ptr, i32 } [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit50 ], [ %i.cc, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #31
  resume { ptr, i32 } %.pn23.pn

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43, %bb.a, %.thread
  ret void
}

declare void @_ZN5nglog10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #1

declare void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5nglog12_GLOBAL__N_19MungeLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 22 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %13 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 6 uses
  %14 = alloca %"class.std::unique_ptr.31", align 8 ; 4 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %15 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 6 uses
  %18 = alloca %"class.std::unique_ptr.31", align 8 ; 4 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %19 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.k, align 8, !tbaa !50
  store i8 0, ptr %i.j, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !50
  store i8 0, ptr %i.l, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !50
  store i8 0, ptr %i.n, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  store i64 0, ptr %i.q, align 8, !tbaa !50
  store i8 0, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !50   ; 11 uses
  %i.t = icmp ugt i64 %i.s, 9
  br i1 %i.t, label %.lr.ph, label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !47
  %i.v = load ptr, ptr %1, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.s, ptr %i.e, align 8, !tbaa !51
  br label %._crit_edge.i.i

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !49, !noalias !167
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 19
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ah = add i64 %i.s, -10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.a: ; preds = %bb.e, %.lr.ph
  %i.ai = phi i64 [ 9, %.lr.ph ], [ %i.bf, %bb.e ]
  %.048258 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.e ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %27 = sub nuw i64 %i.s, %.048258                ; 3 uses
  %switch = icmp ult i64 %27, 2
  br i1 %switch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.a
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %27, i64 9) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.048258
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 1 %i.aj, i64 %spec.select.i.i.i, i1 false)
  store i64 %spec.select.i.i.i, ptr %i.y, align 8, !tbaa !50, !alias.scope !167
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ak, align 1, !tbaa !52
  %.not.i = icmp ugt i64 %27, 8
  br i1 %.not.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.al = load i8, ptr %i.w, align 8, !tbaa !52   ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i8 %i.al to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.43, i32 %i.an, i64 5)
  %.not13.i = icmp eq ptr %memchr.i, null
  br i1 %.not13.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.ao = load i8, ptr %i.z, align 1, !tbaa !52   ; 2 uses
  %i.ap = add i8 %i.ao, -48
  %isdigit.i = icmp ult i8 %i.ap, 10
  %.not14.i = icmp eq i8 %i.ao, 89
  %or.cond.i = or i1 %.not14.i, %isdigit.i
  br i1 %or.cond.i, label %.preheader.1.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.aq = load i8, ptr %i.aa, align 2, !tbaa !52  ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %isdigit.1.i = icmp ult i8 %i.ar, 10
  %.not14.1.i = icmp eq i8 %i.aq, 69
  %or.cond2.i = or i1 %.not14.1.i, %isdigit.1.i
  br i1 %or.cond2.i, label %.preheader.2.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.as = load i8, ptr %i.ab, align 1, !tbaa !52  ; 2 uses
  %i.at = add i8 %i.as, -48
  %isdigit.2.i = icmp ult i8 %i.at, 10
  %.not14.2.i = icmp eq i8 %i.as, 65
  %or.cond3.i = or i1 %.not14.2.i, %isdigit.2.i
  br i1 %or.cond3.i, label %.preheader.3.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.au = load i8, ptr %i.ac, align 4, !tbaa !52  ; 2 uses
  %i.av = add i8 %i.au, -48
  %isdigit.3.i = icmp ult i8 %i.av, 10
  %.not14.3.i = icmp eq i8 %i.au, 82
  %or.cond4.i = or i1 %.not14.3.i, %isdigit.3.i
  br i1 %or.cond4.i, label %.preheader.4.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.aw = load i8, ptr %i.ad, align 1, !tbaa !52  ; 2 uses
  %i.ax = add i8 %i.aw, -48
  %isdigit.4.i = icmp ult i8 %i.ax, 10
  %.not14.4.i = icmp eq i8 %i.aw, 68
  %or.cond5.i = or i1 %.not14.4.i, %isdigit.4.i
  br i1 %or.cond5.i, label %.preheader.5.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.ay = load i8, ptr %i.ae, align 2, !tbaa !52  ; 2 uses
  %i.az = add i8 %i.ay, -48
  %isdigit.5.i = icmp ult i8 %i.az, 10
  %.not14.5.i = icmp eq i8 %i.ay, 65
  %or.cond6.i = or i1 %.not14.5.i, %isdigit.5.i
  br i1 %or.cond6.i, label %.preheader.6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.ba = load i8, ptr %i.af, align 1, !tbaa !52  ; 2 uses
  %i.bb = add i8 %i.ba, -48
  %isdigit.6.i = icmp ult i8 %i.bb, 10
  %.not14.6.i = icmp eq i8 %i.ba, 84
  %or.cond7.i = or i1 %.not14.6.i, %isdigit.6.i
  br i1 %or.cond7.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.a, %bb.d, %bb.b, %bb.c, %.preheader.preheader.i, %.preheader.4.i, %.preheader.1.i, %.preheader.2.i, %.preheader.5.i, %.preheader.3.i, %.preheader.6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.preheader.6.i
  %i.bc = load i8, ptr %i.ag, align 8, !tbaa !52  ; 2 uses
  %i.bd = add i8 %i.bc, -48
  %isdigit.7.i = icmp ult i8 %i.bd, 10
  %.not14.7.i = icmp eq i8 %i.bc, 69
  %or.cond8.i = or i1 %.not14.7.i, %isdigit.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %or.cond8.i, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = add nuw i64 %.048258, 1
  %i.bf = add nuw i64 %.048258, 10
  %exitcond.not = icmp eq i64 %.048258, %i.ah
  br i1 %exitcond.not, label %thread-pre-split.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.a, !llvm.loop !145

thread-pre-split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp ult i64 %i.ai, %i.s
  br i1 %.not, label %bb.i, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e, %thread-pre-split
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !47
  %i.bh = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.s, ptr %i.e, align 8, !tbaa !51
  %i.bi = icmp ugt i64 %i.s, 15
  br i1 %i.bi, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %thread-pre-split.thread
  %i.bj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc75 unwind label %bb.h   ; 2 uses

.noexc75:                                         ; preds = %.noexc.i
  store ptr %i.bj, ptr %0, align 8, !tbaa !49
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !51
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %thread-pre-split.thread.thread, %.noexc75, %thread-pre-split.thread
  %i.bl = phi ptr [ %i.bh, %.noexc75 ], [ %i.bh, %thread-pre-split.thread ], [ %i.v, %thread-pre-split.thread.thread ] ; 2 uses
  %i.bm = phi ptr [ %i.bj, %.noexc75 ], [ %i.bg, %thread-pre-split.thread ], [ %i.u, %thread-pre-split.thread.thread ] ; 2 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !52
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bl, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !51  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !50
  %i.bq = load ptr, ptr %0, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.de

bb.h:                                             ; preds = %.noexc.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.i:                                             ; preds = %thread-pre-split
  %.not49 = icmp eq i64 %.048258, 0
  br i1 %.not49, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bt = add i64 %.048258, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.bu, ptr %7, align 8, !tbaa !47, !alias.scope !168
  %i.bv = load ptr, ptr %1, align 8, !tbaa !49, !noalias !168 ; 2 uses
  %spec.select.i.i.i77 = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.s) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !168
  store i64 %spec.select.i.i.i77, ptr %i.d, align 8, !tbaa !51, !noalias !168
  %i.bw = icmp ugt i64 %spec.select.i.i.i77, 15
  br i1 %i.bw, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.j
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc78 unwind label %bb.s   ; 2 uses

.noexc78:                                         ; preds = %.noexc10.i.i
  store ptr %i.bx, ptr %7, align 8, !tbaa !49, !alias.scope !168
  %i.by = load i64, ptr %i.d, align 8, !tbaa !51, !noalias !168
  store i64 %i.by, ptr %i.bu, align 8, !tbaa !52, !alias.scope !168
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78, %bb.j
  %i.bz = phi ptr [ %i.bx, %.noexc78 ], [ %i.bu, %bb.j ] ; 2 uses
  switch i64 %spec.select.i.i.i77, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !52
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !52
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bv, i64 %spec.select.i.i.i77, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !51, !noalias !168 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !50, !alias.scope !168
  %i.cd = load ptr, ptr %7, align 8, !tbaa !49, !alias.scope !168
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !168
  %i.cf = load ptr, ptr %2, align 8, !tbaa !49    ; 6 uses
  %i.cg = icmp eq ptr %i.cf, %i.j
  %i.ch = load ptr, ptr %7, align 8, !tbaa !49    ; 5 uses
  %i.ci = icmp eq ptr %i.ch, %i.bu                ; 2 uses
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.m
  br i1 %i.ci, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.m
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cj = load i64, ptr %i.cc, align 8, !tbaa !50 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  switch i64 %i.cj, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !52
  store i8 %i.cl, ptr %i.cf, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ch, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.cm = load i64, ptr %i.cc, align 8, !tbaa !50 ; 2 uses
  store i64 %i.cm, ptr %i.k, align 8, !tbaa !50
  %i.cn = load ptr, ptr %2, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !52
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ch, ptr %2, align 8, !tbaa !49
  %i.cp = load <2 x i64>, ptr %i.cc, align 8, !tbaa !52
  store <2 x i64> %i.cp, ptr %i.k, align 8, !tbaa !52
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cq = load i64, ptr %i.j, align 8, !tbaa !52
  store ptr %i.ch, ptr %2, align 8, !tbaa !49
  %i.cr = load <2 x i64>, ptr %i.cc, align 8, !tbaa !52
  store <2 x i64> %i.cr, ptr %i.k, align 8, !tbaa !52
  %.not.i80 = icmp eq ptr %i.cf, null
  br i1 %.not.i80, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cf, ptr %7, align 8, !tbaa !49
  store i64 %i.cq, ptr %i.bu, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bu, ptr %7, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.cs = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cf, %bb.q ], [ %i.bu, %bb.r ]
  store i64 0, ptr %i.cc, align 8, !tbaa !50
  store i8 0, ptr %i.cs, align 1, !tbaa !52
  %i.ct = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bu
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cv = load i64, ptr %i.bu, align 8, !tbaa !52
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.pre = load i64, ptr %i.r, align 8, !tbaa !50, !noalias !169
  br label %bb.t

bb.s:                                             ; preds = %.noexc10.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.df

bb.t:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
end_hunk_0
begin_hunk_1_@_ZN5nglog12_GLOBAL__N_19MungeLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.mr, align 8, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.my) #31
  %i.mz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.mz, ptr %8, align 8, !tbaa !12
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.nb = getelementptr i8, ptr %i.mz, i64 -24
  %i.nc = load i64, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds i8, ptr %8, i64 %i.nc
  store ptr %i.na, ptr %i.nd, align 8, !tbaa !12
  %i.ne = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ne, align 8, !tbaa !185
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.nf) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.de

bb.cu:                                            ; preds = %.noexc10.i.i136
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.by
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ni = load ptr, ptr %21, align 8, !tbaa !49   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.gz
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.cv
  %i.nk = load i64, ptr %i.gz, align 8, !tbaa !52
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.cu
  %.pn52 = phi { ptr, i32 } [ %i.ng, %bb.cu ], [ %i.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %i.nh, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %bb.dc

bb.cw:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc158, %bb.ci, %bb.cg
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i171, %bb.cm
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.cp
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.cz:                                            ; preds = %bb.cr
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

bb.da:                                            ; preds = %bb.cs
  %i.nq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nr = load ptr, ptr %26, align 8, !tbaa !49   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.da
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !52
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.cz
  %.pn54 = phi { ptr, i32 } [ %i.np, %bb.cz ], [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %i.nq, %bb.da ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  %i.nw = load ptr, ptr %23, align 8, !tbaa !49   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.lf
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.ny = load i64, ptr %i.lf, align 8, !tbaa !52
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.cy
  %.pn54.pn = phi { ptr, i32 } [ %i.no, %bb.cy ], [ %.pn54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ] ; 2 uses
  %i.oa = load ptr, ptr %24, align 8, !tbaa !49   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.kn
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.oc = load i64, ptr %i.kn, align 8, !tbaa !52
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %bb.cx
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.nn, %bb.cx ], [ %.pn54.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ], [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ] ; 2 uses
  %i.oe = load ptr, ptr %25, align 8, !tbaa !49   ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.jw
  br i1 %i.of, label %.body169, label %.body169.sink.split

.body169.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %bb.ck
  %.sink = phi ptr [ %i.kh, %bb.ck ], [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ]
  %.pn54.pn.pn.pn.ph = phi { ptr, i32 } [ %i.kg, %bb.ck ], [ %.pn54.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ]
  %i.og = load i64, ptr %i.jw, align 8, !tbaa !52
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.oh) #34
  br label %.body169

.body169:                                         ; preds = %.body169.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %bb.ck
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %i.kg, %bb.ck ], [ %.pn54.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %.pn54.pn.pn.pn.ph, %.body169.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.db

bb.db:                                            ; preds = %.body169, %bb.cw
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn, %.body169 ], [ %i.nm, %bb.cw ]
  %i.oi = load ptr, ptr %22, align 8, !tbaa !49   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.jb
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.db
  %i.ok = load i64, ptr %i.jb, align 8, !tbaa !52
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.dc

bb.dc:                                            ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.aj, %bb.ai
  %.pn67 = phi { ptr, i32 } [ %i.ef, %bb.aj ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.ee, %bb.ai ], [ %.pn60, %bb.bw ], [ %.pn54.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %8) #31
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %bb.dc ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.df

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.om = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.p
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %bb.de
  %i.oo = load i64, ptr %i.p, align 8, !tbaa !52
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.oq = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.n
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.os = load i64, ptr %i.n, align 8, !tbaa !52
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ou = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.l
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.ow = load i64, ptr %i.l, align 8, !tbaa !52
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.ox) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.oy = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.j
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.pa = load i64, ptr %i.j, align 8, !tbaa !52
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.df:                                            ; preds = %bb.dd, %bb.s, %bb.h
  %.pn70 = phi { ptr, i32 } [ %i.bs, %bb.h ], [ %.pn67.pn, %bb.dd ], [ %i.cx, %bb.s ]
  %i.pc = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.p
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.df
  %i.pe = load i64, ptr %i.p, align 8, !tbaa !52
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.pg = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.n
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.pi = load i64, ptr %i.n, align 8, !tbaa !52
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.pk = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.l
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.pm = load i64, ptr %i.l, align 8, !tbaa !52
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.po = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.j
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.pq = load i64, ptr %i.j, align 8, !tbaa !52
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn70

bb.dg:                                            ; preds = %.invoke
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #36
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN5nglog8StrErrorB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN5nglog15LogMessageFatalC1EPKciRKNS_8internal13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5nglog8internal13CheckOpStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !52
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !47
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !49
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !52
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !50
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store i64 0, ptr %i.ac, align 8, !tbaa !50
  store i8 0, ptr %i.v, align 8, !tbaa !52
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !49
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !47
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
end_hunk_1
