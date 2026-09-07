Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MemoryPool?download=true
inline.NumInlined: 5368
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedB5cxx11Ev:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.g = load i64, ptr %i.f, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.h = load ptr, ptr %1, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(561) %1)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 noundef %i.k, i32 noundef 2)
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !837
  store i64 %i.g, ptr %3, align 16, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %6, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  store ptr %i.m, ptr %i.l, align 16, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !52
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.118, i64 41, i64 212, ptr nonnull %3)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !837
  %i.q = load ptr, ptr %5, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.r ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.u = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !52
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = load ptr, ptr %6, align 8, !tbaa !50     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !270
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 1, ptr %i.af, align 8, !tbaa !271
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.0102.0137 = load ptr, ptr %i.aj, align 8, !tbaa !143 ; 2 uses
  %i.ak = icmp eq ptr %.sroa.0102.0137, null
  br i1 %i.ak, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit.thread

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.s

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.val.pre = load ptr, ptr %i.ag, align 8, !tbaa !272 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ao = icmp eq ptr %.val.pre, null
  br i1 %i.ao, label %.loopexit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.03.04.i.i.i = phi ptr [ %.val.i.i.i.i.i, %.lr.ph.i.i.i ], [ %.val.pre, %._crit_edge ]
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.03.04.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.ap = add nuw nsw i64 %.05.i.i.i, 1           ; 4 uses
  %i.aq = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.aq, label %_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !827

_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ar = icmp samesign ugt i64 %.05.i.i.i, 192153584101141161
  br i1 %i.ar, label %bb.f, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EE11_M_allocateEm.exit.i.i

bb.f:                                             ; preds = %_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.179) #45
          to label %.noexc.i unwind label %.body.i.thread

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_St18input_iterator_tag.exit.i.i
  %i.as = mul nuw nsw i64 %i.ap, 48
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #46
          to label %.noexc6.i unwind label %.body.i.thread ; 12 uses

.noexc6.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EE11_M_allocateEm.exit.i.i
  store ptr %i.at, ptr %9, align 8, !tbaa !275
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.ap ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !276
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.noexc6.i
  %.019.i.i.i.i.i.i.idx = phi i64 [ %.019.i.i.i.i.i.i.add, %bb.k ], [ 0, %.noexc6.i ] ; 3 uses
  %.sroa.012.018.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i, %bb.k ], [ %.val.pre, %.noexc6.i ] ; 4 uses
  %.019.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.at, i64 %.019.i.i.i.i.i.i.idx ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i.i.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i.ptr, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.019.i.i.i.i.i.i.ptr, align 8, !tbaa !56
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i.i.i.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51 ; 8 uses
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bc = icmp slt i64 %i.ba, 0
  br i1 %i.bc, label %.noexc.i.i.i.i.i.i.i.i.i, label %bb.h

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #45
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bd = add nuw i64 %i.ba, 1                    ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %.noexc6.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, !prof !57

.noexc6.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i

.noexc10.i.i.i.i.i.i:                             ; preds = %.noexc6.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #46
          to label %.noexc11.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i ; 2 uses

.noexc11.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bf, ptr %.019.i.i.i.i.i.i.ptr, align 8, !tbaa !50
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bg = phi ptr [ %i.bf, %.noexc11.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  switch i64 %i.ba, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bh = load i8, ptr %i.ay, align 1, !tbaa !52
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !52
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i.ptr, i64 8
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i.ptr, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !277
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.012.018.i.i.i.i.i.i, align 8, !tbaa !143 ; 2 uses
  %.019.i.i.i.i.i.i.add = add nuw nsw i64 %.019.i.i.i.i.i.i.idx, 48 ; 4 uses
  %i.bm = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %i.bm, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !828

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.noexc6.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  %i.bn = extractvalue { ptr, i32 } %lpad.phi.i.i.i.i.i.i, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvT_SE_(ptr noundef nonnull %i.at, ptr noundef nonnull %.019.i.i.i.i.i.i.ptr)
  invoke void @__cxa_rethrow() #45
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #47
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable

.body.i.thread:                                   ; preds = %bb.f, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EE11_M_allocateEm.exit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.i:                                          ; preds = %bb.m
  %.idx = mul nuw nsw i64 %i.ap, 48
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %.idx) #44
  br label %.body

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.q:                                             ; preds = %.noexc40
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.r:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.r
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !52
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.q ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.bv, %bb.r ] ; 2 uses
  %i.cb = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !52
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ba

bb.s:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.sroa.0102.0138 = phi ptr [ %.sroa.0102.0137, %.lr.ph ], [ %.sroa.0102.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0102.0138, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0102.0138, i64 24
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8facebook5velox7process10StackTrace8toStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.ch)
          to label %bb.t unwind label %.loopexit119 ; 2 uses

bb.t:                                             ; preds = %bb.s
  store ptr %i.al, ptr %8, align 8, !tbaa !56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !51 ; 8 uses
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %bb.u, label %._crit_edge.i.i

bb.u:                                             ; preds = %bb.t
  %i.cn = icmp slt i64 %i.cl, 0
  br i1 %i.cn, label %.noexc.i64, label %bb.v

.noexc.i64:                                       ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #45
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %.noexc.i64
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.co = add nuw i64 %i.cl, 1                    ; 2 uses
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %.noexc6.i63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !57

.noexc6.i63:                                      ; preds = %bb.v
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc66 unwind label %.loopexit.split-lp

.noexc66:                                         ; preds = %.noexc6.i63
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.v
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #46
          to label %.noexc67 unwind label %.loopexit119 ; 2 uses

.noexc67:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.cq, ptr %8, align 8, !tbaa !50
  store i64 %i.cl, ptr %i.al, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc67, %bb.t
  %i.cr = phi ptr [ %i.cq, %.noexc67 ], [ %i.al, %bb.t ] ; 3 uses
  switch i64 %i.cl, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.cs = load i8, ptr %i.cj, align 1, !tbaa !52
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !52
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr align 1 %i.cj, i64 %i.cl, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i
  store i64 %i.cl, ptr %i.am, align 8, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cl
  store i8 0, ptr %i.ct, align 1, !tbaa !52
  %.val7.i.i.i = load i64, ptr %i.an, align 8, !tbaa !278
  %.not.i.i.i68 = icmp ugt i64 %.val7.i.i.i, 20
  br i1 %.not.i.i.i68, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.020.028.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !143 ; 3 uses
  %i.cu = icmp eq ptr %.sroa.020.028.i.i.i, null
  br i1 %i.cu, label %.loopexit112, label %.lr.ph.i.i.i69

.lr.ph.i.i.i69:                                   ; preds = %bb.z
  %.val9.i.i.i = load ptr, ptr %8, align 8
  %.val10.i.i.i = load i64, ptr %i.am, align 8, !tbaa !51
  %.val10.fr.i.i.i = freeze i64 %.val10.i.i.i     ; 3 uses
  %i.cv = icmp eq i64 %.val10.fr.i.i.i, 0
  br i1 %i.cv, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i69, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i.i
  %.sroa.020.029.us.i.i.i = phi ptr [ %.sroa.020.0.us.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i.i ], [ %.sroa.020.028.i.i.i, %.lr.ph.i.i.i69 ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.sroa.020.029.us.i.i.i, i64 16
  %.val12.us.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !51
  %i.cx = icmp eq i64 %.val12.us.i.i.i, 0
  br i1 %i.cx, label %.loopexit111, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.020.0.us.i.i.i = load ptr, ptr %.sroa.020.029.us.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.cy = icmp eq ptr %.sroa.020.0.us.i.i.i, null
  br i1 %i.cy, label %.loopexit112, label %.lr.ph.split.us.i.i.i, !llvm.loop !829

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i69, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i.i
  %.sroa.020.029.i.i.i = phi ptr [ %.sroa.020.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i.i ], [ %.sroa.020.028.i.i.i, %.lr.ph.i.i.i69 ] ; 3 uses
  %i.cz = getelementptr i8, ptr %.sroa.020.029.i.i.i, i64 16
  %.val12.i.i.i = load i64, ptr %i.cz, align 8, !tbaa !51
  %i.da = icmp eq i64 %.val10.fr.i.i.i, %.val12.i.i.i
  br i1 %i.da, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i.i.i, i64 8
  %.val11.i.i.i = load ptr, ptr %i.db, align 8
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val9.i.i.i, ptr readonly %.val11.i.i.i, i64 %.val10.fr.i.i.i)
  %i.dc = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dc, label %.loopexit111, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.020.0.i.i.i = load ptr, ptr %.sroa.020.029.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.dd = icmp eq ptr %.sroa.020.0.i.i.i, null
  br i1 %i.dd, label %.loopexit112, label %.lr.ph.split.i.i.i, !llvm.loop !829

bb.aa:                                            ; preds = %bb.y
  %.val13.i.i.i = load ptr, ptr %8, align 8, !tbaa !50
  %.val14.i.i.i = load i64, ptr %i.am, align 8, !tbaa !51
  %i.de = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val13.i.i.i, i64 noundef %.val14.i.i.i, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i unwind label %bb.ab ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #47
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i: ; preds = %bb.aa
  %.val15.i.i.i = load i64, ptr %i.af, align 8, !tbaa !271 ; 3 uses
  %i.dh = urem i64 %i.de, %.val15.i.i.i           ; 3 uses
  %.val16.i.i.i = load ptr, ptr %7, align 8, !tbaa !270
  %.val18.i.i.i = load ptr, ptr %8, align 8
  %.val19.i.i.i = load i64, ptr %i.am, align 8
  %.8.val4.fr.i.i.i.i.i = freeze i64 %.val19.i.i.i ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val16.i.i.i, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i, label %.loopexit112, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !143 ; 3 uses
  %i.dl = icmp eq i64 %.8.val4.fr.i.i.i.i.i, 0
  %.phi.trans.insert11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %.val7.i.us.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert11.i.i.i.i.i, align 8, !tbaa !280 ; 2 uses
  br i1 %i.dl, label %.split.us.i.i.i.i.i, label %.split.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %bb.ac, %bb.ae
  %.val7.i.us.i.i.i.i.i = phi i64 [ %.val23.us.i.i.i.i.i, %bb.ae ], [ %.val7.i.us.pre.i.i.i.i.i, %bb.ac ]
  %.0.us.i.i.i.i.i = phi ptr [ %i.dp, %bb.ae ], [ %i.dk, %bb.ac ] ; 2 uses
  %i.dm = icmp eq i64 %i.de, %.val7.i.us.i.i.i.i.i
  br i1 %i.dm, label %bb.ad, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i

bb.ad:                                            ; preds = %.split.us.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i.i, i64 16
  %.val6.i.us.i.i.i.i.i = load i64, ptr %i.dn, align 8, !tbaa !51
  %i.do = icmp eq i64 %.val6.i.us.i.i.i.i.i, 0
  br i1 %i.do, label %.loopexit111, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i: ; preds = %bb.ad, %.split.us.i.i.i.i.i
  %i.dp = load ptr, ptr %.0.us.i.i.i.i.i, align 8, !tbaa !143 ; 3 uses
  %.not18.us.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not18.us.i.i.i.i.i, label %.loopexit112, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 56
  %.val23.us.i.i.i.i.i = load i64, ptr %i.dq, align 8, !tbaa !280 ; 2 uses
  %i.dr = urem i64 %.val23.us.i.i.i.i.i, %.val15.i.i.i
  %.not19.us.i.i.i.i.i = icmp eq i64 %i.dr, %i.dh
  br i1 %.not19.us.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %.loopexit112, !llvm.loop !13

.split.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.ag
  %.val7.i.i.i.i.i.i = phi i64 [ %.val23.i.i.i.i.i, %bb.ag ], [ %.val7.i.us.pre.i.i.i.i.i, %bb.ac ]
  %.0.i.i.i.i.i = phi ptr [ %i.dx, %bb.ag ], [ %i.dk, %bb.ac ] ; 3 uses
  %i.ds = icmp eq i64 %i.de, %.val7.i.i.i.i.i.i
  br i1 %i.ds, label %bb.af, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i

bb.af:                                            ; preds = %.split.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %.val6.i.i.i.i.i.i = load i64, ptr %i.dt, align 8, !tbaa !51
  %i.du = icmp eq i64 %.8.val4.fr.i.i.i.i.i, %.val6.i.i.i.i.i.i
  br i1 %i.du, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.dv, align 8
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val18.i.i.i, ptr readonly %.val5.i.i.i.i.i.i, i64 %.8.val4.fr.i.i.i.i.i)
  %i.dw = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dw, label %.loopexit111, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i, %bb.af, %.split.i.i.i.i.i
  %i.dx = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !143 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit112, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 56
  %.val23.i.i.i.i.i = load i64, ptr %i.dy, align 8, !tbaa !280 ; 2 uses
  %i.dz = urem i64 %.val23.i.i.i.i.i, %.val15.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.dz, %i.dh
  br i1 %.not19.i.i.i.i.i, label %.split.i.i.i.i.i, label %.loopexit112, !llvm.loop !13

.loopexit112:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i, %bb.ag, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i, %bb.ae, %bb.z, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i
  %i.ea = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %.loopexit112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 0, i64 16, i1 false)
  br label %.loopexit111

.loopexit119:                                     ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

.loopexit.split-lp:                               ; preds = %.noexc.i64, %.noexc6.i63
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.ai:                                            ; preds = %bb.ak, %.loopexit111
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %.loopexit112
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit111:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i, %.lr.ph.split.us.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i, %bb.ad, %bb.ah
  %i.ed = load i64, ptr %i.cg, align 8, !tbaa !213
  %i.ee = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ak unwind label %bb.ai     ; 2 uses

bb.ak:                                            ; preds = %.loopexit111
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !838
  %i.eg = add i64 %i.ef, %i.ed
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !838
  %i.eh = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %bb.ak
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !839
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !839
  %i.el = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.al
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.al
  %i.en = load i64, ptr %i.al, align 8, !tbaa !52
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.sroa.0102.0 = load ptr, ptr %.sroa.0102.0138, align 8, !tbaa !143 ; 2 uses
  %i.ep = icmp eq ptr %.sroa.0102.0, null
  br i1 %i.ep, label %._crit_edge, label %bb.s

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %.pn35 = phi { ptr, i32 } [ %i.eb, %bb.ai ], [ %i.ec, %bb.aj ] ; 2 uses
  %i.eq = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.al
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.am
  %i.es = load i64, ptr %i.al, align 8, !tbaa !52
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.am, %.loopexit119, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit119 ], [ %.pn35, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.az

.loopexit.thread:                                 ; preds = %._crit_edge, %._crit_edge.thread
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.eu, align 8, !tbaa !282
  br label %._crit_edge141

.loopexit:                                        ; preds = %bb.k
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.at, i64 %.019.i.i.i.i.i.i.add ; 6 uses
  %i.ev = ptrtoint ptr %i.au to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.ptr.le, ptr %i.ew, align 8, !tbaa !282
  %i.ex = udiv exact i64 %.019.i.i.i.i.i.i.add, 48
  %i.ey = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ex, i1 true)
  %i.ez = shl nuw nsw i64 %i.ey, 1
  %i.fa = xor i64 %i.ez, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_"(ptr nonnull %i.at, ptr nonnull %.ptr.le, i64 noundef %i.fa)
  %i.fb = icmp samesign ugt i64 %.019.i.i.i.i.i.i.idx, 720
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.at, i64 768 ; 2 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_"(ptr nonnull %i.at, ptr nonnull %i.fc)
  %12 = icmp eq i64 %.019.i.i.i.i.i.i.add, 768
  br i1 %12, label %.lr.ph140, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i ], [ %i.fc, %bb.an ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops14_Val_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 48 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %.ptr.le
  br i1 %i.fe, label %.lr.ph140, label %.lr.ph.i.i.i.i, !llvm.loop !830

bb.ao:                                            ; preds = %.loopexit
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_"(ptr nonnull %i.at, ptr nonnull %.ptr.le)
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph.i.i.i.i, %bb.ao, %bb.an
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  br label %bb.as

._crit_edge141:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %.loopexit.thread
  %.val1.i204215 = phi i64 [ 0, %.loopexit.thread ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  %.val47205213 = phi ptr [ null, %.loopexit.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i206211 = phi ptr [ null, %.loopexit.thread ], [ %.ptr.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  %i.fn = phi i1 [ true, %.loopexit.thread ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fo, ptr %0, align 8, !tbaa !56, !alias.scope !842
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fp, align 8, !tbaa !51, !alias.scope !842
  store i8 0, ptr %i.fo, align 8, !tbaa !52, !alias.scope !842
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !244, !noalias !842 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fr, null
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !842 ; 2 uses
  %i.fu = icmp ugt ptr %i.fr, %i.ft
  %.08.i.i.i = select i1 %i.fu, ptr %i.fr, ptr %i.ft ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i76 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i76, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge141
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !245, !noalias !842 ; 2 uses
  %i.fx = ptrtoint ptr %.08.i.i.i to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fw, i64 noundef %i.fz)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = load ptr, ptr %0, align 8, !tbaa !50, !alias.scope !842 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fo
  br i1 %i.gd, label %.body77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aq
  %i.ge = load i64, ptr %i.fo, align 8, !tbaa !52, !alias.scope !842
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #44
  br label %.body77

bb.ar:                                            ; preds = %._crit_edge141
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gg)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aq

bb.as:                                            ; preds = %.lr.ph140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.sroa.099.0139 = phi ptr [ %i.at, %.lr.ph140 ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !284
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 noundef %i.gi, i32 noundef 2)
          to label %.noexc44 unwind label %bb.au

.noexc44:                                         ; preds = %bb.as
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !843
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !53, !noalias !843
  store i64 %i.gk, ptr %2, align 16, !tbaa !52
  %i.gl = load ptr, ptr %11, align 8, !tbaa !50
  %i.gm = load i64, ptr %i.fg, align 8, !tbaa !51
  store ptr %i.gl, ptr %i.ff, align 16, !tbaa !52
  store i64 %i.gm, ptr %i.fh, align 8, !tbaa !52
  %i.gn = load ptr, ptr %.sroa.099.0139, align 8, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !51
  store ptr %i.gn, ptr %i.fi, align 16, !tbaa !52
  store i64 %i.gp, ptr %i.fj, align 8, !tbaa !52
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.119, i64 53, i64 3540, ptr nonnull %2)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !843
  %i.gq = load ptr, ptr %10, align 8, !tbaa !50
  %i.gr = load i64, ptr %i.fk, align 8, !tbaa !51
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.gq, i64 noundef %i.gr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80 unwind label %bb.aw ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80: ; preds = %bb.at
  %i.gt = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.fl
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
  %i.gv = load i64, ptr %i.fl, align 8, !tbaa !52
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %i.gx = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fm
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.gz = load i64, ptr %i.fm, align 8, !tbaa !52
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 48 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %.ptr.le
  br i1 %i.hc, label %._crit_edge141, label %bb.as

bb.au:                                            ; preds = %bb.as
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.av:                                            ; preds = %.noexc44
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.aw:                                            ; preds = %bb.at
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fl
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aw
  %i.hi = load i64, ptr %i.fl, align 8, !tbaa !52
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.av
  %.pn30 = phi { ptr, i32 } [ %i.he, %bb.av ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.hf, %bb.aw ] ; 2 uses
  %i.hk = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.fm
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.hm = load i64, ptr %i.fm, align 8, !tbaa !52
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.au
  %.pn30.pn = phi { ptr, i32 } [ %i.hd, %bb.au ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.body77

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ar, %bb.ap
  br i1 %i.fn, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i, label %.lr.ph.i.i.i93

.lr.ph.i.i.i93:                                   ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i
  %.05.i.i.i94 = phi ptr [ %i.ht, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i ], [ %.val47205213, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 3 uses
  %i.ho = load ptr, ptr %.05.i.i.i94, align 8, !tbaa !50 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i93
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !52
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #44
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 48 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.ht, %.0.lcssa.i.i.i.i.i.i206211
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i, label %.lr.ph.i.i.i93, !llvm.loop !14

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.not.i.i2.i = icmp eq ptr %.val47205213, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i
  %i.hu = ptrtoint ptr %.val47205213 to i64
  %i.hv = sub i64 %.val1.i204215, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.val47205213, i64 noundef %i.hv) #44
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !272 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i98

end_hunk_0
