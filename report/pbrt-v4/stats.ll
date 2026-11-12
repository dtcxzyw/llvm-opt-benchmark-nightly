Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stats?download=true
inline.NumInlined: 3402
inline.NumDeleted: 941
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@__cxx_global_var_init.2:bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #26
  %i.g = ptrtoint ptr %i.f to i64
  store i64 %i.g, ptr %i.e, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = ptrtoint ptr %i.b to i64                 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i64 %i.j, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.j, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.j, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.o, i8 0, i64 120, i1 false)
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL16threadStatsStateE, i64 24), align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN4pbrt17ReportThreadStatsEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4pbrt17ReportThreadStatsEvE5mutex) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN4pbrtL9statFuncsE, align 8, !tbaa !52 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %.not7.i = icmp eq ptr %i.c, %i.e
  br i1 %.not7.i, label %_ZN4pbrt14StatRegisterer13CallCallbacksERNS_16StatsAccumulatorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.noexc
  %.sroa.04.08.i = phi ptr [ %i.g, %.noexc ], [ %i.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !55
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4pbrtL16statsAccumulatorE)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

.noexc:                                           ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i, label %_ZN4pbrt14StatRegisterer13CallCallbacksERNS_16StatsAccumulatorE.exit, label %.lr.ph.i

_ZN4pbrt14StatRegisterer13CallCallbacksERNS_16StatsAccumulatorE.exit: ; preds = %.noexc, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = load i8, ptr @_ZN4pbrt17pixelStatsEnabledE, align 1, !tbaa !57, !range !58, !noundef !59
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN4pbrt14StatRegisterer13CallCallbacksERNS_16StatsAccumulatorE.exit
  %i.j = load i8, ptr @__tls_guard, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZTWN4pbrtL16threadStatsStateE.exit, !prof !60

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr @__tls_guard, align 1
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.2()
  br label %_ZTWN4pbrtL16threadStatsStateE.exit

_ZTWN4pbrtL16threadStatsStateE.exit:              ; preds = %bb.c, %bb.d
  %i.m = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16threadStatsStateE)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  invoke void @_ZN4pbrt16StatsAccumulator20AccumulatePixelStatsERKNS_21PixelStatsAccumulatorE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4pbrtL16statsAccumulatorE, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZTWN4pbrtL16threadStatsStateE.exit
  %i.o = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #25
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #26
  store i32 0, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #26
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %i.s, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.x = ptrtoint ptr %i.p to i64                 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store i64 %i.x, ptr %i.w, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %i.x, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ac, i8 0, i64 120, i1 false)
  %i.ad = load i8, ptr @__tls_guard, align 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZTWN4pbrtL16threadStatsStateE.exit4, !prof !60

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr @__tls_guard, align 1
  %i.af = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.2()
  br label %_ZTWN4pbrtL16threadStatsStateE.exit4

_ZTWN4pbrtL16threadStatsStateE.exit4:             ; preds = %bb.f, %bb.g
  %i.ag = ptrtoint ptr %i.o to i64
  store i64 %i.ag, ptr %i.n, align 8, !tbaa !189
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %_ZTWN4pbrtL16threadStatsStateE.exit, %bb.e
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4pbrt17ReportThreadStatsEvE5mutex) #26 ; 0 uses
  resume { ptr, i32 } %lpad.loopexit.split-lp11

bb.h:                                             ; preds = %_ZTWN4pbrtL16threadStatsStateE.exit4, %_ZN4pbrt14StatRegisterer13CallCallbacksERNS_16StatsAccumulatorE.exit
  %i.ai = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4pbrt17ReportThreadStatsEvE5mutex) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt14StatRegisterer13CallCallbacksERNS_16StatsAccumulatorE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN4pbrtL9statFuncsE, align 8, !tbaa !52 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !55
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt16StatsAccumulator20AccumulatePixelStatsERKNS_21PixelStatsAccumulatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %i.i = alloca float, align 4                    ; 6 uses
  %i.j = alloca float, align 4                    ; 6 uses
  %i.k = alloca float, align 4                    ; 6 uses
  %i.l = alloca float, align 4                    ; 6 uses
  %2 = alloca %"class.pbrt::Image", align 8       ; 12 uses
  %3 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %4 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %5 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %6 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %7 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %8 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %9 = alloca %"class.pbrt::Image", align 8       ; 12 uses
  %10 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %11 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %12 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %13 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %14 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN4pbrtL11imageBoundsE, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL11imageBoundsE, i64 8), align 8, !tbaa !45
  %i.n = sub nsw i32 %i.m, %.sroa.0.0.extract.trunc.i.i ; 2 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL11imageBoundsE, i64 12), align 4, !tbaa !46
  %i.p = sub nsw i32 %i.o, %.sroa.2.0.extract.trunc.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.n to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 340
  %.sroa.0.0.copyload.i170 = load i64, ptr %i.r, align 4 ; 5 uses
  %i.s = icmp eq i64 %.sroa.0.0.copyload.i170, 0
  br i1 %i.s, label %._crit_edge.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !65
  store i16 29549, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.u, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.v, align 2, !tbaa !68
  store i64 0, ptr %4, align 8, !tbaa !69
  %i.w = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #26
  %i.x = ptrtoint ptr %i.w to i64
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %2, i32 noundef 2, i64 %.sroa.0.0.insert.insert.i.i, ptr nonnull %3, i64 1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 %i.x)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !63     ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.z, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 352
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %.noexc171 unwind label %bb.d  ; 0 uses

.noexc171:                                        ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 384
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 392
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %.noexc172 unwind label %bb.d  ; 0 uses

.noexc172:                                        ; preds = %.noexc171
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 424
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %.noexc173 unwind label %bb.d  ; 0 uses

.noexc173:                                        ; preds = %.noexc172
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 456
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZN4pbrt5ImageaSEOS0_.exit unwind label %bb.d ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit:                       ; preds = %.noexc173
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %2) #26
  %i.ap = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !68
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pre = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 340
  %.sroa.0.0.copyload.i182.pre = load i64, ptr %.phi.trans.insert, align 4 ; 3 uses
  %i.au = trunc i64 %.sroa.0.0.copyload.i182.pre to i32
  %.pre1129.a = lshr i64 %.sroa.0.0.copyload.i182.pre, 32
  %.pre1131.a = trunc nuw i64 %.pre1129.a to i32
  br label %bb.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.noexc173, %.noexc172, %.noexc171, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %2) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.d ], [ %i.av, %bb.c ]
  %i.ax = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.e
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !68
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.el

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %.sroa.0.0.copyload.i170, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %6, align 8
  %15 = trunc i64 %.sroa.0.0.copyload.i170 to i32 ; 2 uses
  %i.bc = icmp eq i32 %i.n, %15
  %i.bd = lshr i64 %.sroa.0.0.copyload.i170, 32
  %i.be = trunc nuw i64 %i.bd to i32              ; 2 uses
  %i.bf = icmp eq i32 %i.p, %i.be
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4pbrt8LogFatalIJRA30_KcRA4_S1_S3_RNS_6Point2IiEES5_S8_EEEvNS_8LogLevelEPS1_iSA_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(30) @.str.15, ptr noundef nonnull align 1 dereferenceable(4) @.str.16, ptr noundef nonnull align 1 dereferenceable(30) @.str.15, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(4) @.str.16, ptr noundef nonnull align 4 dereferenceable(8) %6) #27
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pre-phi1132 = phi i32 [ %.pre1131.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.be, %bb.h ]
  %i.bh = phi i32 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %15, %bb.h ]
  %.sroa.0.0.copyload.i1871061 = phi i64 [ %.sroa.0.0.copyload.i182.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0.0.copyload.i170, %bb.h ]
  %i.bi = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %.sroa.0.0.copyload.i1871061, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bj = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.sroa.0.0.copyload.i183 = load i64, ptr %i.bk, align 4 ; 3 uses
  store i64 %.sroa.0.0.copyload.i183, ptr %8, align 8
  %.sroa.0.0.extract.trunc.i184 = trunc i64 %.sroa.0.0.copyload.i183 to i32
  %i.bl = icmp eq i32 %i.bh, %.sroa.0.0.extract.trunc.i184
  %.sroa.2.0.extract.shift.i185 = lshr i64 %.sroa.0.0.copyload.i183, 32
  %.sroa.2.0.extract.trunc.i186 = trunc nuw i64 %.sroa.2.0.extract.shift.i185 to i32
  %i.bm = icmp eq i32 %.pre-phi1132, %.sroa.2.0.extract.trunc.i186
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4pbrt8LogFatalIJRA30_KcRA31_S1_S3_RNS_6Point2IiEES5_S8_EEEvNS_8LogLevelEPS1_iSA_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(30) @.str.15, ptr noundef nonnull align 1 dereferenceable(31) @.str.17, ptr noundef nonnull align 1 dereferenceable(30) @.str.15, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.17, ptr noundef nonnull align 4 dereferenceable(8) %8) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %16 = getelementptr i8, ptr %i.bi, i64 344
  %.sroa.3104.0.extract.trunc1061 = load i32, ptr %16, align 4
  %i.bo = icmp sgt i32 %.sroa.3104.0.extract.trunc1061, 0
  br i1 %i.bo, label %.preheader1054, label %._crit_edge1065

.preheader1054:                                   ; preds = %bb.k, %._crit_edge
  %17 = phi ptr [ %19, %._crit_edge ], [ %i.bi, %bb.k ] ; 3 uses
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %._crit_edge ], [ 0, %bb.k ] ; 5 uses
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 340 ; 2 uses
  %.sroa.0.0.copyload.i1881057 = load i64, ptr %18, align 4 ; 2 uses
  %.sroa.096.0.extract.trunc1058 = trunc i64 %.sroa.0.0.copyload.i1881057 to i32 ; 2 uses
  %i.bp = icmp sgt i32 %.sroa.096.0.extract.trunc1058, 0
  br i1 %i.bp, label %.preheader.preheader.i.lr.ph, label %._crit_edge

.preheader.preheader.i.lr.ph:                     ; preds = %.preheader1054
  %.sroa.2820.0.insert.shift = shl nuw nsw i64 %indvars.iv1089, 32
  %i.bq = trunc nuw nsw i64 %indvars.iv1089 to i32 ; 4 uses
  br label %.preheader.preheader.i

._crit_edge1065.loopexit:                         ; preds = %._crit_edge
  %.pre1110 = load ptr, ptr %1, align 8, !tbaa !50
  br label %._crit_edge1065

._crit_edge1065:                                  ; preds = %._crit_edge1065.loopexit, %bb.k
  %i.br = phi ptr [ %i.bj, %bb.k ], [ %.pre1110, %._crit_edge1065.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.bi, %bb.k ], [ %19, %._crit_edge1065.loopexit ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa, i64 512 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa, i64 520
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !73
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 152               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 176
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 184
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !73
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !74
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 152               ; 2 uses
  %i.ci = icmp ult i64 %i.bz, %i.ch
  br i1 %i.ci, label %_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

._crit_edge:                                      ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213, %.preheader1054
  %19 = phi ptr [ %17, %.preheader1054 ], [ %i.hr, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213 ] ; 3 uses
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1 ; 2 uses
  %20 = getelementptr i8, ptr %19, i64 344
  %.sroa.3104.0.extract.trunc = load i32, ptr %20, align 4
  %21 = sext i32 %.sroa.3104.0.extract.trunc to i64
  %i.cj = icmp slt i64 %indvars.iv.next1090, %21
  br i1 %i.cj, label %.preheader1054, label %._crit_edge1065.loopexit, !llvm.loop !190

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.lr.ph, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213
  %i.ck = phi i32 [ %.sroa.096.0.extract.trunc1058, %.preheader.preheader.i.lr.ph ], [ %.sroa.096.0.extract.trunc, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.i.lr.ph ], [ %indvars.iv.next, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213 ] ; 6 uses
  %.sroa.0.0.copyload.i1881060 = phi i64 [ %.sroa.0.0.copyload.i1881057, %.preheader.preheader.i.lr.ph ], [ %.sroa.0.0.copyload.i188, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213 ] ; 2 uses
  %i.cl = phi ptr [ %18, %.preheader.preheader.i.lr.ph ], [ %i.hs, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213 ]
  %i.cm = phi ptr [ %17, %.preheader.preheader.i.lr.ph ], [ %i.hr, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213 ] ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 336 ; 2 uses
  %.sroa.0819.0.insert.insert = or disjoint i64 %.sroa.2820.0.insert.shift, %indvars.iv
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i1881060, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32
  %i.co = ashr i64 %.sroa.0.0.copyload.i1881060, 32
  %i.cp = icmp slt i64 %indvars.iv1089, %i.co
  %i.cq = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.cq)
  %.sroa.14.2 = select i1 %i.cp, i32 %i.bq, i32 %..i.1.i ; 3 uses
  %i.cr = load i32, ptr %i.cn, align 8, !tbaa !44
  switch i32 %i.cr, label %bb.t [
    i32 0, label %bb.l
    i32 1, label %bb.o
    i32 2, label %bb.s
  ]

bb.l:                                             ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 384
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 376
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !76
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = load i32, ptr %i.cl, align 4, !tbaa !45
  %i.cx = mul nsw i32 %i.cw, %.sroa.14.2
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cz = add nsw i32 %i.cx, %i.cy
  %i.da = mul nsw i32 %i.cz, %i.cv
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 400
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !77
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.db  ; 3 uses
  %i.df = load i64, ptr %i.cs, align 8, !tbaa !69 ; 2 uses
  %i.dg = and i64 %i.df, 144115188075855871
  %i.dh = inttoptr i64 %i.dg to ptr               ; 2 uses
  %i.di = lshr i64 %i.df, 57
  %i.dj = trunc nuw nsw i64 %i.di to i32
  switch i32 %i.dj, label %bb.n [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.m
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !68
  %i.dl = uitofp i8 %i.dk to float
  %i.dm = fdiv float %i.dl, 2.550000e+02
  store float %i.dm, ptr %i.l, align 4, !tbaa !79
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.m:                                             ; preds = %bb.l
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dh, ptr %i.de, i64 1, ptr nonnull %i.l, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.n:                                             ; preds = %bb.l
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.dh, ptr %i.de, i64 1, ptr nonnull %i.l, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.i.i.i.i
  %i.dn = load float, ptr %i.l, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %.preheader.preheader.i500

bb.o:                                             ; preds = %.preheader.preheader.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.cm, i64 376
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !76
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = mul nsw i32 %i.ck, %.sroa.14.2
  %i.ds = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dt = add nsw i32 %i.dr, %i.ds
  %i.du = mul nsw i32 %i.dt, %i.dq
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cm, i64 432
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !80
  %i.dy = getelementptr [2 x i8], ptr %i.dx, i64 %i.dv
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !83 ; 2 uses
  %i.ea = zext i16 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 13               ; 4 uses
  %i.ec = and i32 %i.eb, 260046848                ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 260046848
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = or i32 %i.eb, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ef = and i32 %i.eb, 268427264
  %i.eg = add nuw nsw i32 %i.ef, 939524096
  %i.eh = icmp eq i32 %i.ec, 0
  br i1 %i.eh, label %bb.r, label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ei = or i32 %i.eb, 947912704
  %i.ej = bitcast i32 %i.ei to float
  %i.ek = fadd float %i.ej, f0xB8800000
  %i.el = bitcast float %i.ek to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

_ZNK4pbrt4HalfcvfEv.exit.i:                       ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i = phi i32 [ %i.ee, %bb.p ], [ %i.el, %bb.r ], [ %i.eg, %bb.q ]
  %.signext.i.i = sext i16 %i.dz to i32
  %i.em = and i32 %.signext.i.i, -2147483648
  %i.en = or i32 %.sroa.0.0.i.i, %i.em
  %i.eo = bitcast i32 %i.en to float
  br label %.preheader.preheader.i500

bb.s:                                             ; preds = %.preheader.preheader.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cm, i64 376
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !76
  %i.er = trunc i64 %i.eq to i32
  %i.es = mul nsw i32 %i.ck, %.sroa.14.2
  %i.et = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.eu = add nsw i32 %i.es, %i.et
  %i.ev = mul nsw i32 %i.eu, %i.er
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cm, i64 464
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !84
  %i.ez = getelementptr [4 x i8], ptr %i.ey, i64 %i.ew
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !79
  br label %.preheader.preheader.i500

bb.t:                                             ; preds = %.preheader.preheader.i
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef 273, ptr noundef nonnull @.str.46) #27
  unreachable

.preheader.preheader.i500:                        ; preds = %bb.s, %_ZNK4pbrt4HalfcvfEv.exit.i, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i
  %.pre-phi1133 = phi i32 [ %i.et, %bb.s ], [ %i.ds, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.cy, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ] ; 2 uses
  %.0.i = phi float [ %i.fa, %bb.s ], [ %i.eo, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.dn, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ]
  %i.fb = load ptr, ptr %1, align 8, !tbaa !50    ; 9 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %.sroa.04.0.copyload.i194 = load i64, ptr %i.fc, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i494 = trunc i64 %.sroa.04.0.copyload.i194 to i32 ; 3 uses
  %.sroa.9.0.extract.shift.i495 = lshr i64 %.sroa.04.0.copyload.i194, 32
  %.sroa.9.0.extract.trunc.i496 = trunc nuw i64 %.sroa.9.0.extract.shift.i495 to i32
  %sext = shl i64 %.sroa.04.0.copyload.i194, 32
  %i.fd = ashr exact i64 %sext, 32
  %i.fe = icmp slt i64 %indvars.iv, %i.fd
  %i.ff = add nsw i32 %.sroa.0.0.extract.trunc.i494, -1
  %..i.i503 = call i32 @llvm.smin.i32(i32 %.pre-phi1133, i32 %i.ff)
  %.sroa.0851.0 = select i1 %i.fe, i32 %.pre-phi1133, i32 %..i.i503 ; 3 uses
  %i.fg = ashr i64 %.sroa.04.0.copyload.i194, 32
  %i.fh = icmp slt i64 %indvars.iv1089, %i.fg
  %i.fi = add nsw i32 %.sroa.9.0.extract.trunc.i496, -1
  %..i.1.i509 = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.fi)
  %.sroa.14859.2 = select i1 %i.fh, i32 %i.bq, i32 %..i.1.i509 ; 3 uses
  %i.fj = load i32, ptr %i.fb, align 8, !tbaa !44
  switch i32 %i.fj, label %bb.ac [
    i32 0, label %bb.u
    i32 1, label %bb.x
    i32 2, label %bb.ab
  ]

bb.u:                                             ; preds = %.preheader.preheader.i500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !76
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = load i32, ptr %i.fc, align 4, !tbaa !45
  %i.fp = mul nsw i32 %i.fo, %.sroa.14859.2
  %i.fq = add nsw i32 %i.fp, %.sroa.0851.0
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !77
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.fs  ; 3 uses
  %i.fw = load i64, ptr %i.fk, align 8, !tbaa !69 ; 2 uses
  %i.fx = and i64 %i.fw, 144115188075855871
  %i.fy = inttoptr i64 %i.fx to ptr               ; 2 uses
  %i.fz = lshr i64 %i.fw, 57
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  switch i32 %i.ga, label %bb.w [
    i32 1, label %.lr.ph.i.i.i.i.i.i212
    i32 2, label %bb.v
  ]

.lr.ph.i.i.i.i.i.i212:                            ; preds = %bb.u
  %i.gb = load i8, ptr %i.fv, align 1, !tbaa !68
  %i.gc = uitofp i8 %i.gb to float
  %i.gd = fdiv float %i.gc, 2.550000e+02
  store float %i.gd, ptr %i.k, align 4, !tbaa !79
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i211

bb.v:                                             ; preds = %bb.u
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fy, ptr %i.fv, i64 1, ptr nonnull %i.k, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i211

bb.w:                                             ; preds = %bb.u
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.fy, ptr %i.fv, i64 1, ptr nonnull %i.k, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i211

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i211: ; preds = %bb.w, %bb.v, %.lr.ph.i.i.i.i.i.i212
  %i.ge = load float, ptr %i.k, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213

bb.x:                                             ; preds = %.preheader.preheader.i500
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !76
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = mul nsw i32 %.sroa.14859.2, %.sroa.0.0.extract.trunc.i494
  %i.gj = add nsw i32 %i.gi, %.sroa.0851.0
  %i.gk = mul nsw i32 %i.gj, %i.gh
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !80
  %i.go = getelementptr [2 x i8], ptr %i.gn, i64 %i.gl
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !83 ; 2 uses
  %i.gq = zext i16 %i.gp to i32
  %i.gr = shl nuw nsw i32 %i.gq, 13               ; 4 uses
  %i.gs = and i32 %i.gr, 260046848                ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 260046848
  br i1 %i.gt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gu = or i32 %i.gr, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i204

bb.z:                                             ; preds = %bb.x
  %i.gv = and i32 %i.gr, 268427264
  %i.gw = add nuw nsw i32 %i.gv, 939524096
  %i.gx = icmp eq i32 %i.gs, 0
  br i1 %i.gx, label %bb.aa, label %_ZNK4pbrt4HalfcvfEv.exit.i204

bb.aa:                                            ; preds = %bb.z
  %i.gy = or i32 %i.gr, 947912704
  %i.gz = bitcast i32 %i.gy to float
  %i.ha = fadd float %i.gz, f0xB8800000
  %i.hb = bitcast float %i.ha to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i204

_ZNK4pbrt4HalfcvfEv.exit.i204:                    ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.i.i205 = phi i32 [ %i.gu, %bb.y ], [ %i.hb, %bb.aa ], [ %i.gw, %bb.z ]
  %.signext.i.i206 = sext i16 %i.gp to i32
  %i.hc = and i32 %.signext.i.i206, -2147483648
  %i.hd = or i32 %.sroa.0.0.i.i205, %i.hc
  %i.he = bitcast i32 %i.hd to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213

bb.ab:                                            ; preds = %.preheader.preheader.i500
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !76
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = mul nsw i32 %.sroa.14859.2, %.sroa.0.0.extract.trunc.i494
  %i.hj = add nsw i32 %i.hi, %.sroa.0851.0
  %i.hk = mul nsw i32 %i.hj, %i.hh
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fb, i64 128
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !84
  %i.ho = getelementptr [4 x i8], ptr %i.hn, i64 %i.hl
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !79
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213

bb.ac:                                            ; preds = %.preheader.preheader.i500
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef 273, ptr noundef nonnull @.str.46) #27
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit213: ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i211, %_ZNK4pbrt4HalfcvfEv.exit.i204, %bb.ab
  %.0.i195 = phi float [ %i.ge, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i211 ], [ %i.he, %_ZNK4pbrt4HalfcvfEv.exit.i204 ], [ %i.hp, %bb.ab ]
  %i.hq = fadd float %.0.i, %.0.i195
  call void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %i.cn, i64 %.sroa.0819.0.insert.insert, i32 noundef 0, float noundef %i.hq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load ptr, ptr %0, align 8, !tbaa !63    ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 340 ; 2 uses
  %.sroa.0.0.copyload.i188 = load i64, ptr %i.hs, align 4 ; 3 uses
  %.sroa.096.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i188 to i32
  %sext1206.a = shl i64 %.sroa.0.0.copyload.i188, 32
  %i.ht = ashr exact i64 %sext1206.a, 32
  %i.hu = icmp slt i64 %indvars.iv.next, %i.ht
  br i1 %i.hu, label %.preheader.preheader.i, label %._crit_edge, !llvm.loop !191

_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit: ; preds = %._crit_edge1065
  %i.hv = sub nuw nsw i64 %i.ch, %i.bz
  call void @_ZNSt6vectorIN4pbrt5ImageESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.hv)
  %i.hw = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 488 ; 2 uses
  %i.hy = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 152
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 160
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !86
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !87
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = ashr exact i64 %i.if, 5                 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 496 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !86 ; 3 uses
  %i.ij = load ptr, ptr %i.hx, align 8, !tbaa !87 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 5                 ; 3 uses
  %i.io = icmp ugt i64 %i.ig, %i.in
  br i1 %i.io, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit
  %i.ip = sub nuw nsw i64 %i.ig, %i.in
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 noundef %i.ip)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit
  %i.iq = icmp ult i64 %i.ig, %i.in
  br i1 %i.iq, label %bb.af, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.af:                                            ; preds = %bb.ae
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.if ; 3 uses
  %.not.i.i214 = icmp eq ptr %i.ii, %i.ir
  br i1 %.not.i.i214, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i215

.lr.ph.i.i.i.i215:                                ; preds = %bb.af, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i216 = phi ptr [ %i.ix, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ir, %bb.af ] ; 3 uses
  %i.is = load ptr, ptr %.05.i.i.i.i216, align 8, !tbaa !70 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i216, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i215
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !68
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i216, i64 32 ; 2 uses
  %.not.i.i.i.i217 = icmp eq ptr %i.ix, %i.ii
  br i1 %.not.i.i.i.i217, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i215, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.ir, ptr %i.ih, align 8, !tbaa !86
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.af, %bb.ae, %bb.ad, %._crit_edge1065
  %i.iy = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 560 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 568
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !73
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !74
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 152               ; 2 uses
  %i.jh = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 224
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 232
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !73
  %i.jl = load ptr, ptr %i.ji, align 8, !tbaa !74
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = sdiv exact i64 %i.jo, 152               ; 2 uses
  %i.jq = icmp ult i64 %i.jg, %i.jp
  br i1 %i.jq, label %_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit223, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232

_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit223: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.jr = sub nuw nsw i64 %i.jp, %i.jg
  call void @_ZNSt6vectorIN4pbrt5ImageESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i64 noundef %i.jr)
  %i.js = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 536 ; 2 uses
  %i.ju = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 200
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 208
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !86
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !87
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 2 uses
  %i.kc = ashr exact i64 %i.kb, 5                 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 544 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !86 ; 3 uses
  %i.kf = load ptr, ptr %i.jt, align 8, !tbaa !87 ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = ashr exact i64 %i.ki, 5                 ; 3 uses
  %i.kk = icmp ugt i64 %i.kc, %i.kj
  br i1 %i.kk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit223
  %i.kl = sub nuw nsw i64 %i.kc, %i.kj
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 noundef %i.kl)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232

bb.ah:                                            ; preds = %_ZNSt6vectorIN4pbrt5ImageESaIS1_EE6resizeEm.exit223
  %i.km = icmp ult i64 %i.kc, %i.kj
  br i1 %i.km, label %bb.ai, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232

bb.ai:                                            ; preds = %bb.ah
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kb ; 3 uses
  %.not.i.i224 = icmp eq ptr %i.ke, %i.kn
  br i1 %.not.i.i224, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232, label %.lr.ph.i.i.i.i225

.lr.ph.i.i.i.i225:                                ; preds = %bb.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i228
  %.05.i.i.i.i226 = phi ptr [ %i.kt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i228 ], [ %i.kn, %bb.ai ] ; 3 uses
  %i.ko = load ptr, ptr %.05.i.i.i.i226, align 8, !tbaa !70 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i226, i64 16 ; 2 uses
  %i.kq = icmp eq ptr %i.ko, %i.kp
  br i1 %i.kq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i227: ; preds = %.lr.ph.i.i.i.i225
  %i.kr = load i64, ptr %i.kp, align 8, !tbaa !68
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.ks) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i228

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i228: ; preds = %.lr.ph.i.i.i.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i227
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i226, i64 32 ; 2 uses
  %.not.i.i.i.i229 = icmp eq ptr %i.kt, %i.ke
  br i1 %.not.i.i.i.i229, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i230, label %.lr.ph.i.i.i.i225, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i230: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i228
  store ptr %i.kn, ptr %i.kd, align 8, !tbaa !86
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i230, %bb.ai, %bb.ah, %bb.ag, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ku = load ptr, ptr %1, align 8, !tbaa !50    ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 176
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 184
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !73
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !74
  %.not = icmp eq ptr %i.kx, %i.ky
  br i1 %.not, label %.preheader1051, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.le = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.lf = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.lg = getelementptr inbounds nuw i8, ptr %10, i64 21
  %i.lh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.aj

.preheader1051:                                   ; preds = %.loopexit1053, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232
  %i.li = phi ptr [ %i.ku, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit232 ], [ %i.tn, %.loopexit1053 ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 224
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 232
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !73
  %i.lm = load ptr, ptr %i.lj, align 8, !tbaa !74
  %.not1088 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not1088, label %._crit_edge1086, label %.lr.ph1085

.lr.ph1085:                                       ; preds = %.preheader1051
  %i.ln = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.lq = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ls = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.lv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lw = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.lx = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.lz = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.ma = getelementptr inbounds nuw i8, ptr %13, i64 25
  %i.mb = getelementptr inbounds nuw i8, ptr %13, i64 59
  %i.mc = getelementptr inbounds nuw i8, ptr %13, i64 85
  %i.md = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.bk
end_hunk_0
