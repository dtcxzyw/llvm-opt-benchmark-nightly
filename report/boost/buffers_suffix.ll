Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffers_suffix?download=true
inline.NumInlined: 1321
inline.NumDeleted: 529
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5boost5beast17buffers_to_stringINS0_14buffers_suffixINS0_14buffers_tripleEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  br i1 %.not.i.peel.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_14buffers_tripleEEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  %.010.i.i.i = phi i64 [ %i.i, %.lr.ph.split.i.i.i ], [ %i.g, %.lr.ph.i.i.i ]
  %.sroa.03.09.i.i.i = phi ptr [ %i.j, %.lr.ph.split.i.i.i ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !18
  %i.i = add i64 %.sroa.4.0.copyload.i.i.i.i, %.010.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_14buffers_tripleEEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !1

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_14buffers_tripleEEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i, %bb.a, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph.i.i.i ], [ %i.i, %.lr.ph.split.i.i.i ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.lcssa.i.i.i)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_14buffers_tripleEEEvEEmRKT_.exit
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not23 = icmp eq ptr %i.k, %i.c
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.sroa.017.024 = phi ptr [ %i.k, %.lr.ph ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ] ; 4 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.n = icmp eq ptr %.sroa.017.024, %i.m
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %.sroa.017.024, align 8, !tbaa !42 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.024, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !18 ; 3 uses
  br i1 %i.n, label %bb.d, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_14buffers_tripleEEEE14const_iteratordeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.l, align 8, !tbaa !71
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.q = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_14buffers_tripleEEEE14const_iteratordeEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_14buffers_tripleEEEE14const_iteratordeEv.exit: ; preds = %bb.c, %bb.d
  %.pn3.i.i = phi ptr [ %i.p, %bb.d ], [ %.sroa.0.0.copyload1.i.i, %bb.c ]
  %.pn.i.i = phi i64 [ %i.q, %bb.d ], [ %.sroa.4.0.copyload.i.i, %bb.c ] ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !22
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %.pn.i.i
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_14buffers_tripleEEEE14const_iteratordeEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_14buffers_tripleEEEE14const_iteratordeEv.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.pn3.i.i, i64 noundef %.pn.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.024, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.c
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_14buffers_tripleEEEvEEmRKT_.exit, %bb.e
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.y = load i64, ptr %i.a, align 8, !tbaa !21
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp32
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast17buffers_to_stringINS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEvEEmRKT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !18
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.f) ; 2 uses
  %.not.i.peel.i.i = icmp eq ptr %i.d, %1
  br i1 %.not.i.peel.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  %.09.i.i.i = phi i64 [ %i.h, %.lr.ph.split.i.i.i ], [ %i.g, %.lr.ph.i.i.i ]
  %.sroa.02.08.i.pn.i.i = phi ptr [ %.sroa.02.08.i.i.i, %.lr.ph.split.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.02.08.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !18
  %i.h = add i64 %.sroa.4.0.copyload.i.i.i.i, %.09.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.02.08.i.i.i, %1
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !267

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i, %bb.a, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph.i.i.i ], [ %i.h, %.lr.ph.split.i.i.i ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.lcssa.i.i.i)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEvEEmRKT_.exit
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not23 = icmp eq ptr %i.i, %i.c
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.sroa.017.024 = phi ptr [ %i.i, %.lr.ph ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ] ; 5 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.l = icmp eq ptr %.sroa.017.024, %i.k
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %.sroa.017.024, align 8, !tbaa !42 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.024, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !18 ; 3 uses
  br i1 %i.l, label %bb.d, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEE14const_iteratordeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.j, align 8, !tbaa !87
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.o = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEE14const_iteratordeEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEE14const_iteratordeEv.exit: ; preds = %bb.c, %bb.d
  %.pn3.i.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.0.0.copyload1.i.i, %bb.c ]
  %.pn.i.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.4.0.copyload.i.i, %bb.c ] ; 2 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !22
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %.pn.i.i
  br i1 %i.r, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEE14const_iteratordeEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEE14const_iteratordeEv.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.pn3.i.i, i64 noundef %.pn.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.024, i64 16
  %.not = icmp eq ptr %.sroa.017.024, %1
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixIZNS0_19buffers_suffix_test11testSpecialEvE11test_bufferEEvEEmRKT_.exit, %bb.e
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.w = load i64, ptr %i.a, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp31
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast17buffers_to_stringINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 12 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %7 = alloca %"class.boost::beast::detail::buffers_range_adaptor<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94, !noalias !284 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !116, !noalias !284 ; 2 uses
  switch i8 %i.g, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %5, align 8, !tbaa !94, !alias.scope !284
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_EEEEEvEEmRKT_.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %8 = load ptr, ptr %i.e, align 8, !tbaa !95, !noalias !284
  store ptr %i.d, ptr %5, align 8, !tbaa !94, !alias.scope !284
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %9, align 8, !tbaa !95, !alias.scope !284
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_EEEEEvEEmRKT_.exit

bb.d:                                             ; preds = %bb.a
  %10 = load ptr, ptr %i.e, align 8, !tbaa !95, !noalias !284
  store ptr %i.d, ptr %5, align 8, !tbaa !94, !alias.scope !284
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %10, ptr %11, align 8, !tbaa !95, !alias.scope !284
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_EEEEEvEEmRKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.e, align 8, !tbaa !21, !noalias !284
  store ptr %i.d, ptr %5, align 8, !tbaa !94, !alias.scope !284
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.h, ptr %i.i, align 8, !tbaa !21, !alias.scope !284
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_EEEEEvEEmRKT_.exit

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_EEEEEvEEmRKT_.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i.i, %bb.c, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.g, ptr %i.j, align 8, !tbaa !116, !alias.scope !284
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.k, align 8, !tbaa !119, !alias.scope !284
  store ptr %1, ptr %6, align 8, !tbaa !94, !alias.scope !285
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.l, align 8, !tbaa !21, !alias.scope !285
  store i8 3, ptr %i.m, align 8, !tbaa !116, !alias.scope !285
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.n, align 8, !tbaa !119, !alias.scope !285
  %i.o = call noundef i64 @_ZN5boost4asio6detail11buffer_sizeINS_5beast14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES6_EEEE14const_iteratorEEEmNS1_16multiple_buffersET_SB_(ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_EEEEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !94, !noalias !287 ; 5 uses
  %i.q = load i8, ptr %i.f, align 8, !tbaa !116, !noalias !287 ; 3 uses
  switch i8 %i.q, label %bb.g [
    i8 0, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread
    i8 1, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread34
    i8 2, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread34
    i8 3, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit
  ]

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread: ; preds = %bb.f
  store ptr %i.p, ptr %7, align 8, !tbaa !94, !alias.scope !286
  br label %.lr.ph.sink.split

bb.g:                                             ; preds = %bb.f
  unreachable

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread34: ; preds = %bb.f, %bb.f
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !95, !noalias !287
  store ptr %i.p, ptr %7, align 8, !tbaa !94, !alias.scope !286
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !95, !alias.scope !286
  br label %.lr.ph.sink.split

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit: ; preds = %bb.f
  %i.t = load i8, ptr %i.e, align 8, !tbaa !21, !noalias !287
  store ptr %i.p, ptr %7, align 8, !tbaa !94, !alias.scope !286
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.t, ptr %i.u, align 8, !tbaa !21, !alias.scope !286
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %i.q, ptr %i.v, align 8, !tbaa !116, !alias.scope !286
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %1, ptr %i.w, align 8, !tbaa !119, !alias.scope !286
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = icmp eq ptr %i.p, %1
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph.sink.split:                                ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread34
  %.sink = phi i8 [ %i.q, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread34 ], [ 0, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit.thread ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %.sink, ptr %i.z, align 8, !tbaa !116, !alias.scope !286
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %1, ptr %i.aa, align 8, !tbaa !119, !alias.scope !286
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.sink.split, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit
  %i.ac = phi ptr [ %i.x, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit ], [ %i.ab, %.lr.ph.sink.split ] ; 2 uses
  %i.ad = phi ptr [ %i.w, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit ], [ %i.aa, %.lr.ph.sink.split ] ; 2 uses
  %i.ae = phi i8 [ 3, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit ], [ %.sink, %.lr.ph.sink.split ]
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratorppEv.exit, %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.h:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_EEEEEvEEmRKT_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph, %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratorppEv.exit
  %i.ah = phi i8 [ %i.ae, %.lr.ph ], [ %i.br, %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratorppEv.exit ] ; 4 uses
  %i.ai = phi ptr [ %i.p, %.lr.ph ], [ %i.bp, %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratorppEv.exit ]
  %i.aj = phi ptr [ %1, %.lr.ph ], [ %i.bn, %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratorppEv.exit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !94
  %i.am = icmp eq ptr %i.ai, %i.al
  br i1 %i.am, label %bb.j, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !116
  %.not.i.i.i.i = icmp eq i8 %i.ah, %i.ap
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.aq = add i8 %i.ah, -1
  %switch.i.i.i.i.i.i = icmp ult i8 %i.aq, 2
  br i1 %switch.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread2.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.i.i: ; preds = %bb.k
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !95
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread2.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread2.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.i.i, %bb.k
  %i.au = zext i8 %i.ah to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %7, ptr %4, align 8, !tbaa !121
  %i.av = invoke { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !119
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !102
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ax) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %spec.select.i.i.i
  %i.bc = sub i64 %i.ax, %spec.select.i.i.i
  %.fca.0.insert.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.bb, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i, i64 %i.bc, 1
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread.i.i: ; preds = %bb.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.i.i, %bb.j
  %i.bd = zext i8 %i.ah to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %7, ptr %3, align 8, !tbaa !121
  %i.be = invoke { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratordeEv.exit: ; preds = %.noexc12, %.noexc
  %.pn.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i, %.noexc ], [ %i.be, %.noexc12 ] ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %.pn.i.i, 1   ; 2 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !22
  %i.bh = sub i64 4611686018427387903, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.l:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratordeEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratordeEv.exit
  %i.bj = extractvalue { ptr, i64 } %.pn.i.i, 0
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bj, i64 noundef %i.bf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bl = load i8, ptr %i.ac, align 8, !tbaa !116
  %i.bm = zext i8 %i.bl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %7, ptr %2, align 8, !tbaa !121
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratorppEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_EEEEEE14const_iteratorppEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bn = load ptr, ptr %i.ad, align 8, !tbaa !119 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %1
  %i.bp = load ptr, ptr %7, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %1
  %or.cond = select i1 %i.bo, i1 %i.bq, i1 false
  %i.br = load i8, ptr %i.ac, align 8             ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.br, 3
  %or.cond23 = select i1 %or.cond, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond23, label %._crit_edge, label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_EE14const_iteratoreqERKS5_.exit.thread2.i.i, %bb.l
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bs = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.a
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !21
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn.pn
}

end_hunk_0
