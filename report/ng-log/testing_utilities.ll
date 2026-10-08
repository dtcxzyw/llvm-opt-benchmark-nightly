Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/testing_utilities?download=true
inline.NumInlined: 1055
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5nglog12_GLOBAL__N_110SplitLinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
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
  %.pre267 = load ptr, ptr %1, align 8, !tbaa !49 ; 5 uses
  br i1 %i.t, label %.lr.ph, label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.s, ptr %i.e, align 8, !tbaa !51
  br label %._crit_edge.i.i

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 19
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = add i64 %i.s, -10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.e, %.lr.ph
  %i.ag = phi i64 [ 9, %.lr.ph ], [ %i.be, %bb.e ]
  %.048258 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.e ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ah = sub nuw i64 %i.s, %.048258              ; 3 uses
  %switch = icmp ult i64 %i.ah, 2
  br i1 %switch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 9) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre267, i64 %.048258
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 1 %i.ai, i64 %spec.select.i.i.i, i1 false)
  store i64 %spec.select.i.i.i, ptr %i.w, align 8, !tbaa !50, !alias.scope !167
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select.i.i.i
  store i8 0, ptr %i.aj, align 1, !tbaa !52
  %.not.i = icmp ugt i64 %i.ah, 8
  br i1 %.not.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ak = load i8, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = sext i8 %i.ak to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.43, i32 %i.am, i64 5)
  %.not13.i = icmp eq ptr %memchr.i, null
  br i1 %.not13.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.an = load i8, ptr %i.x, align 1, !tbaa !52   ; 2 uses
  %i.ao = add i8 %i.an, -48
  %isdigit.i = icmp ult i8 %i.ao, 10
  %.not14.i = icmp eq i8 %i.an, 89
  %or.cond.i = or i1 %.not14.i, %isdigit.i
  br i1 %or.cond.i, label %.preheader.1.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.ap = load i8, ptr %i.y, align 2, !tbaa !52   ; 2 uses
  %i.aq = add i8 %i.ap, -48
  %isdigit.1.i = icmp ult i8 %i.aq, 10
  %.not14.1.i = icmp eq i8 %i.ap, 69
  %or.cond2.i = or i1 %.not14.1.i, %isdigit.1.i
  br i1 %or.cond2.i, label %.preheader.2.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.ar = load i8, ptr %i.z, align 1, !tbaa !52   ; 2 uses
  %i.as = add i8 %i.ar, -48
  %isdigit.2.i = icmp ult i8 %i.as, 10
  %.not14.2.i = icmp eq i8 %i.ar, 65
  %or.cond3.i = or i1 %.not14.2.i, %isdigit.2.i
  br i1 %or.cond3.i, label %.preheader.3.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.at = load i8, ptr %i.aa, align 4, !tbaa !52  ; 2 uses
  %i.au = add i8 %i.at, -48
  %isdigit.3.i = icmp ult i8 %i.au, 10
  %.not14.3.i = icmp eq i8 %i.at, 82
  %or.cond4.i = or i1 %.not14.3.i, %isdigit.3.i
  br i1 %or.cond4.i, label %.preheader.4.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.av = load i8, ptr %i.ab, align 1, !tbaa !52  ; 2 uses
  %i.aw = add i8 %i.av, -48
  %isdigit.4.i = icmp ult i8 %i.aw, 10
  %.not14.4.i = icmp eq i8 %i.av, 68
  %or.cond5.i = or i1 %.not14.4.i, %isdigit.4.i
  br i1 %or.cond5.i, label %.preheader.5.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.ax = load i8, ptr %i.ac, align 2, !tbaa !52  ; 2 uses
  %i.ay = add i8 %i.ax, -48
  %isdigit.5.i = icmp ult i8 %i.ay, 10
  %.not14.5.i = icmp eq i8 %i.ax, 65
  %or.cond6.i = or i1 %.not14.5.i, %isdigit.5.i
  br i1 %or.cond6.i, label %.preheader.6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.az = load i8, ptr %i.ad, align 1, !tbaa !52  ; 2 uses
  %i.ba = add i8 %i.az, -48
  %isdigit.6.i = icmp ult i8 %i.ba, 10
  %.not14.6.i = icmp eq i8 %i.az, 84
  %or.cond7.i = or i1 %.not14.6.i, %isdigit.6.i
  br i1 %or.cond7.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, %bb.d, %bb.b, %bb.c, %.preheader.preheader.i, %.preheader.4.i, %.preheader.1.i, %.preheader.2.i, %.preheader.5.i, %.preheader.3.i, %.preheader.6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.preheader.6.i
  %i.bb = load i8, ptr %i.ae, align 8, !tbaa !52  ; 2 uses
  %i.bc = add i8 %i.bb, -48
  %isdigit.7.i = icmp ult i8 %i.bc, 10
  %.not14.7.i = icmp eq i8 %i.bb, 69
  %or.cond8.i = or i1 %.not14.7.i, %isdigit.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %or.cond8.i, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = add nuw i64 %.048258, 1
  %i.be = add nuw i64 %.048258, 10
  %exitcond.not = icmp eq i64 %.048258, %i.af
  br i1 %exitcond.not, label %thread-pre-split.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, !llvm.loop !145

thread-pre-split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp ult i64 %i.ag, %i.s
  br i1 %.not, label %bb.i, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e, %thread-pre-split
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.s, ptr %i.e, align 8, !tbaa !51
  %i.bg = icmp ugt i64 %i.s, 15
  br i1 %i.bg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %thread-pre-split.thread
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc75 unwind label %bb.h   ; 2 uses

.noexc75:                                         ; preds = %.noexc.i
  store ptr %i.bh, ptr %0, align 8, !tbaa !49
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !51
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %thread-pre-split.thread.thread, %.noexc75, %thread-pre-split.thread
  %i.bj = phi ptr [ %i.bh, %.noexc75 ], [ %i.bf, %thread-pre-split.thread ], [ %i.u, %thread-pre-split.thread.thread ] ; 2 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bk = load i8, ptr %.pre267, align 1, !tbaa !52
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %.pre267, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !51  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !50
  %i.bn = load ptr, ptr %0, align 8, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.de

bb.h:                                             ; preds = %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.i:                                             ; preds = %thread-pre-split
  %.not49 = icmp eq i64 %.048258, 0
  br i1 %.not49, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bq = add i64 %.048258, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.br, ptr %7, align 8, !tbaa !47, !alias.scope !168
  %spec.select.i.i.i77 = call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.s) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !168
  store i64 %spec.select.i.i.i77, ptr %i.d, align 8, !tbaa !51, !noalias !168
  %i.bs = icmp ugt i64 %spec.select.i.i.i77, 15
  br i1 %i.bs, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.j
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc78 unwind label %bb.s   ; 2 uses

.noexc78:                                         ; preds = %.noexc10.i.i
  store ptr %i.bt, ptr %7, align 8, !tbaa !49, !alias.scope !168
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !51, !noalias !168
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !52, !alias.scope !168
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78, %bb.j
  %i.bv = phi ptr [ %i.bt, %.noexc78 ], [ %i.br, %bb.j ] ; 2 uses
  switch i64 %spec.select.i.i.i77, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i8, ptr %.pre267, align 1, !tbaa !52
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !52
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %.pre267, i64 %spec.select.i.i.i77, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !51, !noalias !168 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !50, !alias.scope !168
  %i.bz = load ptr, ptr %7, align 8, !tbaa !49, !alias.scope !168
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !168
  %i.cb = load ptr, ptr %2, align 8, !tbaa !49    ; 6 uses
  %i.cc = icmp eq ptr %i.cb, %i.j
  %i.cd = load ptr, ptr %7, align 8, !tbaa !49    ; 5 uses
  %i.ce = icmp eq ptr %i.cd, %i.br                ; 2 uses
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.m
  br i1 %i.ce, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.m
  br i1 %i.ce, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cf = load i64, ptr %i.by, align 8, !tbaa !50 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  switch i64 %i.cf, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !52
  store i8 %i.ch, ptr %i.cb, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.ci = load i64, ptr %i.by, align 8, !tbaa !50 ; 2 uses
  store i64 %i.ci, ptr %i.k, align 8, !tbaa !50
  %i.cj = load ptr, ptr %2, align 8, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 0, ptr %i.ck, align 1, !tbaa !52
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cd, ptr %2, align 8, !tbaa !49
  %i.cl = load <2 x i64>, ptr %i.by, align 8, !tbaa !52
  store <2 x i64> %i.cl, ptr %i.k, align 8, !tbaa !52
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cm = load i64, ptr %i.j, align 8, !tbaa !52
  store ptr %i.cd, ptr %2, align 8, !tbaa !49
  %i.cn = load <2 x i64>, ptr %i.by, align 8, !tbaa !52
  store <2 x i64> %i.cn, ptr %i.k, align 8, !tbaa !52
  %.not.i80 = icmp eq ptr %i.cb, null
  br i1 %.not.i80, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cb, ptr %7, align 8, !tbaa !49
  store i64 %i.cm, ptr %i.br, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.br, ptr %7, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.co = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cb, %bb.q ], [ %i.br, %bb.r ]
  store i64 0, ptr %i.by, align 8, !tbaa !50
  store i8 0, ptr %i.co, align 1, !tbaa !52
  %i.cp = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.br
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cr = load i64, ptr %i.br, align 8, !tbaa !52
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.pre = load i64, ptr %i.r, align 8, !tbaa !50, !noalias !169
  br label %bb.t

bb.s:                                             ; preds = %.noexc10.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.df

bb.t:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.cu = phi i64 [ %i.s, %bb.i ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.cv = icmp ugt i64 %.048258, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i84

bb.u:                                             ; preds = %bb.t
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i64 noundef %.048258, i64 noundef %i.cu) #35
          to label %.noexc88 unwind label %bb.ag

.noexc88:                                         ; preds = %bb.u
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i84: ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.cw, ptr %9, align 8, !tbaa !47, !alias.scope !169
  %i.cx = load ptr, ptr %1, align 8, !tbaa !49, !noalias !169
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.048258 ; 2 uses
  %i.cz = sub nuw i64 %i.cu, %.048258             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31, !noalias !169
  store i64 %i.cz, ptr %i.c, align 8, !tbaa !51, !noalias !169
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.noexc10.i.i87, label %._crit_edge.i.i.i86

.noexc10.i.i87:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i84
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc89 unwind label %bb.ag  ; 2 uses

.noexc89:                                         ; preds = %.noexc10.i.i87
  store ptr %i.db, ptr %9, align 8, !tbaa !49, !alias.scope !169
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !51, !noalias !169
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !52, !alias.scope !169
  br label %._crit_edge.i.i.i86

._crit_edge.i.i.i86:                              ; preds = %.noexc89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i84
  %i.dd = phi ptr [ %i.db, %.noexc89 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i84 ] ; 2 uses
  switch i64 %i.cz, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i86
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !52
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !52
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.cy, i64 %i.cz, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i86
  %i.df = load i64, ptr %i.c, align 8, !tbaa !51, !noalias !169 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !50, !alias.scope !169
  %i.dh = load ptr, ptr %9, align 8, !tbaa !49, !alias.scope !169
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31, !noalias !169
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 8)
          to label %bb.y unwind label %bb.ah

bb.y:                                             ; preds = %bb.x
  %i.dj = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cw
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.y
  %i.dl = load i64, ptr %i.cw, align 8, !tbaa !52
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.z unwind label %bb.ai      ; 0 uses

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.do = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.aa unwind label %bb.ai     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.dp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ab unwind label %bb.ai     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load i64, ptr %i.q, align 8, !tbaa !50  ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.ac, label %.critedge, !prof !64

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZN5nglog15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull @.str.1, i32 noundef 285)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.36, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ae
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #35
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.ag:                                            ; preds = %.noexc10.i.i87, %bb.u
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ah:                                            ; preds = %bb.x
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.cw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ah
  %i.dy = load i64, ptr %i.cw, align 8, !tbaa !52
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.du, %bb.ag ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.dv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.dd

bb.ai:                                            ; preds = %bb.aa, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ac
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.dc

bb.ak:                                            ; preds = %bb.ae, %bb.ad
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.invoke

.critedge:                                        ; preds = %bb.ab
  %i.ed = load ptr, ptr %5, align 8, !tbaa !49
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dq
  %i.ef = getelementptr i8, ptr %i.ee, i64 -1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !52
  %.not51 = icmp eq i8 %i.eg, 93
  br i1 %.not51, label %bb.bl, label %bb.al

bb.al:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.eh, ptr %11, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !50
  store i8 0, ptr %i.eh, align 8, !tbaa !52
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.am unwind label %bb.ar     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !50 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.an, label %.critedge73, !prof !64

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZN5nglog15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.1, i32 noundef 290)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.37, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %bb.ap
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #35
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  unreachable

bb.ar:                                            ; preds = %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99, %bb.an
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.bk

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.invoke

.critedge73:                                      ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i8 93, ptr %i.f, align 1, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.er = load ptr, ptr %11, align 8, !tbaa !49
  %i.es = getelementptr i8, ptr %i.er, i64 %i.ek
  %i.et = getelementptr i8, ptr %i.es, i64 -1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !52  ; 2 uses
  store i8 %i.eu, ptr %i.g, align 1, !tbaa !52
  %i.ev = icmp eq i8 %i.eu, 93
end_hunk_0
