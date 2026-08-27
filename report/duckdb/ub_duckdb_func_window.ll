Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNSt10unique_ptrIN6duckdb4SortESt14default_deleteIS1_EED2Ev:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !843    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb4SortEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb4SortEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb4SortD2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %i.a) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb4SortEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !843    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !193

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZNK6duckdb4Sort18GetGlobalSinkStateERNS_13ClientContextE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.230") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13MergeSortTreeISt5tupleIJmmEEmSt4lessIS2_ELm32ELm32EE8AllocateEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.613", align 8    ; 11 uses
  %3 = alloca %"class.duckdb::vector.602", align 16 ; 12 uses
  %4 = alloca %"class.duckdb::vector.251", align 8 ; 10 uses
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %.noexc, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.b = shl nuw nsw i64 %1, 4                    ; 3 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #32 ; 4 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %i.b, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.b
  br label %_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit

_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.sroa.062.0 = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 2 uses
  %.sink.i.i = phi ptr [ %i.d, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %.sroa.062.0, ptr %2, align 8, !tbaa !853
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !850
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink.i.i, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !845  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !860
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.b, label %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS9_EEEvDpOT_.exit.thread

_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS9_EEEvDpOT_.exit.thread: ; preds = %_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit
  store ptr %.sroa.062.0, ptr %i.i, align 8, !tbaa !853
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !850
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sink.i.i, ptr %i.m, align 8, !tbaa !859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.o, ptr %i.h, align 8, !tbaa !845
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

bb.b:                                             ; preds = %_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit
  invoke void @_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS9_EEEvDpOT_.exit unwind label %_ZNSt6vectorImSaImEED2Ev.exit32

_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS9_EEEvDpOT_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !353  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS9_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS9_EEEvDpOT_.exit.thread, %bb.c, %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS9_EEEvDpOT_.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !853    ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.p) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.q = icmp samesign ugt i64 %1, 1
  br i1 %i.q, label %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i.lr.ph, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit46

_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i.lr.ph: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.r = add nsw i64 %1, -1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = shl nuw nsw i64 %1, 4                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit46:   ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i64 1, ptr %i.x seq_cst, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic i64 0, ptr %i.y seq_cst, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.z, align 8, !tbaa !861
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 32, ptr %i.aa, align 8, !tbaa !869
  %i.ab = add nuw nsw i64 %1, 31
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !870
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef 0)
  ret ptr %i.ae

_ZNSt6vectorImSaImEED2Ev.exit32:                  ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS3_EEENS1_ImLb1ESaImEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit48

_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i.lr.ph, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit
  %.067 = phi i64 [ 1, %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i.lr.ph ], [ %i.ag, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit ] ; 2 uses
  %i.ag = shl i64 %.067, 5                        ; 5 uses
  %i.ah = add i64 %i.r, %i.ag
  %i.ai = call range(i64 5, 65) i64 @llvm.cttz.i64(i64 %i.ag, i1 true)
  %i.aj = lshr i64 %i.ah, %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #32
          to label %.noexc52 unwind label %bb.h   ; 3 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ak, i8 0, i64 %i.u, i1 false)
  store ptr %i.ak, ptr %3, align 16, !tbaa !853
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %1 ; 2 uses
  store ptr %i.al, ptr %i.s, align 8, !tbaa !850
  store ptr %i.al, ptr %i.t, align 16, !tbaa !859
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.am = icmp ugt i64 %i.ag, 32
  br i1 %i.am, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.e:                                             ; preds = %.noexc52
  %i.an = shl nuw i64 %i.aj, 5
  %i.ao = and i64 %.067, 576460752303423457
  %i.ap = or disjoint i64 %i.ao, 2
  %i.aq = mul i64 %i.an, %i.ap                    ; 5 uses
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp ugt i64 %i.aq, 1152921504606846975
  br i1 %i.ar, label %bb.g, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #31
          to label %.noexc57 unwind label %.loopexit.split-lp

.noexc57:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.f
  %i.as = shl nuw nsw i64 %i.aq, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #32
          to label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i unwind label %.loopexit ; 5 uses

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.at, align 8, !tbaa !252
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = shl nuw nsw i64 %i.aq, 3
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.av, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !252
  store ptr %i.at, ptr %4, align 8, !tbaa !353
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aq ; 3 uses
  store ptr %i.aw, ptr %i.v, align 8, !tbaa !356
  store ptr %i.aw, ptr %i.w, align 8, !tbaa !357
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.h:                                             ; preds = %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.e, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, %.noexc52
  %i.ay = phi ptr [ null, %.noexc52 ], [ %i.aw, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ null, %bb.e ] ; 2 uses
  %i.az = phi ptr [ null, %.noexc52 ], [ %i.at, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ null, %bb.e ]
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !845 ; 8 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !860
  %.not.i36 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i36, label %bb.i, label %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS6_S8_EEEvDpOT_.exit.thread

_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS6_S8_EEEvDpOT_.exit.thread: ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.bc = load <2 x ptr>, ptr %3, align 16, !tbaa !871
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !871
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = load ptr, ptr %i.t, align 16, !tbaa !859
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !353
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !356
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %i.ay, ptr %i.bh, align 8, !tbaa !357
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr %i.bi, ptr %i.h, align 8, !tbaa !845
  br label %_ZNSt6vectorImSaImEED2Ev.exit39

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  invoke void @_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE17_M_realloc_insertIJS6_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS6_S8_EEEvDpOT_.exit unwind label %bb.l

_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS6_S8_EEEvDpOT_.exit: ; preds = %bb.i
  %.pr66 = load ptr, ptr %4, align 8, !tbaa !353  ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.pr66, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorImSaImEED2Ev.exit39, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS6_S8_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr66) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit39

_ZNSt6vectorImSaImEED2Ev.exit39:                  ; preds = %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS6_S8_EEEvDpOT_.exit.thread, %_ZNSt6vectorISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEESaIS9_EE12emplace_backIJS6_S8_EEEvDpOT_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bj = load ptr, ptr %3, align 16, !tbaa !853  ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit39
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #30
  br label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit

_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit:     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit39, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.bk = icmp ult i64 %i.ag, %1
  br i1 %i.bk, label %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit46, !llvm.loop !872

bb.l:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bm = load ptr, ptr %4, align 8, !tbaa !353   ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorImSaImEED2Ev.exit42, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit42

_ZNSt6vectorImSaImEED2Ev.exit42:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit42, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit42 ], [ %i.ax, %bb.h ]
  %i.bn = load ptr, ptr %3, align 16, !tbaa !853  ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit44, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #30
  br label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit44

_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit44:   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit48

_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit48:   ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit44, %_ZNSt6vectorImSaImEED2Ev.exit32
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %_ZNSt6vectorImSaImEED2Ev.exit32 ], [ %.pn.pn, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit44 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !850
  %i.e = load ptr, ptr %0, align 8, !tbaa !853    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !252
  store i64 %i.i, ptr %i.b, align 8, !tbaa !252
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EE3getILb1EEERS2_m.exit, label %bb.b, !prof !257

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
end_hunk_0
