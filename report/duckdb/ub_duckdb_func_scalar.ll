Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_scalar?download=true
inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6duckdbL21DecodeSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.ae:                                            ; preds = %bb.ac
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ew, %bb.af ], [ %i.fg, %bb.ag ]
  %i.fh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fh, label %bb.ah, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !128

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ad, %bb.ab
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !122 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fk, align 8, !tbaa !124
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !125
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !127
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #29, !inline_history !3
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !127
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #29, !inline_history !3
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.am:                                            ; preds = %bb.ak
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fn, %bb.al ], [ %i.fx, %bb.am ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fy, label %bb.an, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !128

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #29
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %bb.j
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %.pn75, %bb.y ], [ %lpad.loopexit.split-lp137, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %bb.g
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn, %.loopexit.split-lp ], [ %i.r, %bb.g ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn80.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117DecodeSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %6 = alloca %"class.duckdb::vector.64", align 16 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::ColumnList", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"struct.duckdb::ParserOptions", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %30 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %36 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %37 = alloca %"class.duckdb::vector.64", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = load ptr, ptr %3, align 8, !tbaa !201
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = and i64 %i.f, 8
  %.not103.not = icmp eq i64 %i.g, 0
  br i1 %.not103.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.86, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dr unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.065 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.065, label %bb.f, label %bb.dq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.065, label %bb.f, label %bb.dq

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn147236 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #29
  br label %bb.dq

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %_ZN6duckdb9make_uniqINS_12_GLOBAL__N_115SortKeyBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.h, !inline_history !5 ; 8 uses

_ZN6duckdb9make_uniqINS_12_GLOBAL__N_115SortKeyBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_115SortKeyBindDataE, i64 16), ptr %i.n, align 8, !tbaa !127, !noalias !437
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !noalias !437
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.q = load ptr, ptr %3, align 8, !tbaa !201
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.t, 8
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6duckdb9make_uniqINS_12_GLOBAL__N_115SortKeyBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 72
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %_ZN6duckdb10ColumnListD2Ev.exit
  %38 = trunc nuw i8 %.164 to i1
  %39 = icmp ult i64 %.162, 9
  %40 = select i1 %38, i1 %39, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb9make_uniqINS_12_GLOBAL__N_115SortKeyBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %.063.lcssa = phi i1 [ true, %_ZN6duckdb9make_uniqINS_12_GLOBAL__N_115SortKeyBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ], [ %40, %._crit_edge.loopexit ] ; 2 uses
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.i:                                             ; preds = %.lr.ph, %_ZN6duckdb10ColumnListD2Ev.exit
  %.060354 = phi i64 [ 1, %.lr.ph ], [ %i.hj, %_ZN6duckdb10ColumnListD2Ev.exit ] ; 3 uses
  %.061353 = phi i64 [ 0, %.lr.ph ], [ %.162, %_ZN6duckdb10ColumnListD2Ev.exit ] ; 2 uses
  %.063352 = phi i8 [ 1, %.lr.ph ], [ %.164, %_ZN6duckdb10ColumnListD2Ev.exit ]
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.060354)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.an = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !127
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(88) %i.an)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  br i1 %i.ar, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.87, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !127
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dr unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread: ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  %.057 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.ay) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.bb = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread: ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.bf = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread
  call void @_ZdlPv(ptr noundef %i.bf) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  call void @_ZdlPv(ptr noundef %i.bb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.057, label %bb.r, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.057, label %bb.r, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.thread
  %.pn116.pn239.ph = phi { ptr, i32 } [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.thread ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %.pn116.pn239 = phi { ptr, i32 } [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.pn116.pn239.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.as) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  store i8 1, ptr %13, align 8, !tbaa !442
  store i64 1000, ptr %i.v, align 8, !tbaa !443
  store i8 0, ptr %i.w, align 8, !tbaa !444
  invoke void @_ZN6duckdb6Parser15ParseColumnListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParserOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnList") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull byval(%"struct.duckdb::ParserOptions") align 8 %13)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bi = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.x
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.bl = load ptr, ptr %11, align 8, !tbaa !220
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %.not.a = icmp eq i64 %i.bo, 216
  br i1 %.not.a, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.bp = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.88, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dr unwind label %bb.ac

bb.z:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.aa:                                            ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.ab:                                            ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.x
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.aa
  %.pn119 = phi { ptr, i32 } [ %i.br, %bb.aa ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.bs, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread: ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.x
  %.055 = phi i1 [ false, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.bw = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117DecodeSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.fx = load ptr, ptr %i.ah, align 8, !tbaa !228
  %i.fy = load i64, ptr %i.aj, align 8, !tbaa !229
  %i.fz = shl i64 %i.fy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fx, i8 0, i64 %i.fz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ga = load ptr, ptr %i.ah, align 8, !tbaa !228 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ak
  br i1 %i.gb, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ga) #30
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %bb.bv, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.gc = load ptr, ptr %11, align 8, !tbaa !220  ; 3 uses
  %i.gd = load ptr, ptr %i.y, align 8, !tbaa !219 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gc, %i.gd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, %_ZN6duckdb16ColumnDefinitionD2Ev.exit
  %.05.i.i.i.i = phi ptr [ %i.hh, %_ZN6duckdb16ColumnDefinitionD2Ev.exit ], [ %i.gc, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 10 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 176 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !231 ; 2 uses
  %.not5.i.i.i.i.i221 = icmp eq ptr %i.gg, null
  br i1 %.not5.i.i.i.i.i221, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i222

.lr.ph.i.i.i.i.i222:                              ; preds = %.lr.ph.i.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i223 = phi ptr [ %i.gh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.gg, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.gh = load ptr, ptr %.06.i.i.i.i.i223, align 8, !tbaa !227 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !33 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 56
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i224: ; preds = %.lr.ph.i.i.i.i.i222
  call void @_ZdlPv(ptr noundef %i.gk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i224
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !33 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 24
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gn) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i223) #30
  %.not.i.i.i.i.i225 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i225, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i222, !llvm.loop !9

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gq = load ptr, ptr %i.ge, align 8, !tbaa !232
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 168
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !233
  %i.gt = shl i64 %i.gs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gq, i8 0, i64 %i.gt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i8 0, i64 16, i1 false)
  %i.gu = load ptr, ptr %i.ge, align 8, !tbaa !232 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.gu) #30
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.bw, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gx) #29
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !235 ; 3 uses
  %.not.i.i226 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i226, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !127
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(56) %i.gz) #29, !inline_history !435
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hd) #29
  %i.he = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZN6duckdb16ColumnDefinitionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.he) #30
  br label %_ZN6duckdb16ColumnDefinitionD2Ev.exit

_ZN6duckdb16ColumnDefinitionD2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.hh, %i.gd
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZN6duckdb16ColumnDefinitionD2Ev.exit
  %.pr.i.i = load ptr, ptr %11, align 8, !tbaa !220
  br label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.hi = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.gc, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb10ColumnListD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.hi) #30
  br label %_ZN6duckdb10ColumnListD2Ev.exit

_ZN6duckdb10ColumnListD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.hj = add i64 %.060354, 2                     ; 2 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.hl = load ptr, ptr %3, align 8, !tbaa !201
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 3
  %i.hq = icmp ult i64 %i.hj, %i.hp
  br i1 %i.hq, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !436

bb.by:                                            ; preds = %bb.bm
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

.loopexit.split-lp292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.bo, %bb.bs
  %lpad.loopexit.split-lp540 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %26, align 8, !tbaa !33   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.ae
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %.loopexit.split-lp292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.hs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %.loopexit.split-lp292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.by
  %.pn127.pn = phi { ptr, i32 } [ %i.hr, %bb.by ], [ %lpad.loopexit.split-lp540, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %lpad.loopexit.split-lp540, %.loopexit.split-lp292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %.pn130.pn = phi { ptr, i32 } [ %.pn130266, %bb.bl ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.pn127.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #29
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bj
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn130.pn, %bb.bz ], [ %i.dp, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.bb, %bb.ca, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pn130.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.bb ], [ %.pn130.pn.pn, %bb.ca ], [ %.pn124.pn254, %bb.bd ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ap
  %.pn130.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn.pn.pn, %bb.cb ], [ %.pn121.pn, %bb.ap ]
  %i.hu = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.af
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.cc
  call void @_ZdlPv(ptr noundef %i.hu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.ad
  %.pn139.pn = phi { ptr, i32 } [ %.pn139251, %bb.ad ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.cf, %bb.al ], [ %.pn130.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ]
  call void @_ZN6duckdb10ColumnListD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %11) #29
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.pn139.pn.pn = phi { ptr, i32 } [ %.pn139.pn, %bb.cd ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #29
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.z
  %.pn139.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn, %bb.ce ], [ %i.bq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.cg:                                            ; preds = %._crit_edge
  %i.hw = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 noundef zeroext 14)
          to label %bb.ci unwind label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.hy = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br i1 %i.hy, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  br i1 %.063.lcssa, label %bb.dl, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hz = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.cm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.thread

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  invoke void @__cxa_throw(ptr nonnull %i.hz, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dr unwind label %bb.cr

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.j, %bb.k, %bb.cg, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.co:                                            ; preds = %bb.ch
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ci
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #29
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn = phi { ptr, i32 } [ %i.ib, %bb.cp ], [ %i.ia, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.thread: ; preds = %bb.cl
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn, %bb.cm
  %.048 = phi i1 [ false, %bb.cn ], [ true, %bb.cm ] ; 2 uses
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ie = load ptr, ptr %28, align 8, !tbaa !33   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.ie) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  br i1 %.048, label %bb.cs, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  br i1 %.048, label %bb.cs, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %.pn113269 = phi { ptr, i32 } [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.thread ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ]
  call void @__cxa_free_exception(ptr %i.hz) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.ct:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 noundef zeroext 26)
          to label %bb.cu unwind label %bb.da

bb.cu:                                            ; preds = %bb.ct
  %i.ih = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.cv unwind label %bb.db

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br i1 %i.ih, label %bb.cw, label %bb.df

bb.cw:                                            ; preds = %bb.cv
  br i1 %.063.lcssa, label %bb.cx, label %bb.dl

bb.cx:                                            ; preds = %bb.cw
  %i.ii = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.cy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  invoke void @__cxa_throw(ptr nonnull %i.ii, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dr unwind label %bb.dd

bb.da:                                            ; preds = %bb.ct
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cu
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #29
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn105 = phi { ptr, i32 } [ %i.ik, %bb.db ], [ %i.ij, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread: ; preds = %bb.cx
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz, %bb.cy
  %.046 = phi i1 [ false, %bb.cz ], [ true, %bb.cy ] ; 2 uses
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.in = load ptr, ptr %31, align 8, !tbaa !33   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.dd
  call void @_ZdlPv(ptr noundef %i.in) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br i1 %.046, label %bb.de, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br i1 %.046, label %bb.de, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %.pn110272 = phi { ptr, i32 } [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread ], [ %i.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ]
  call void @__cxa_free_exception(ptr %i.ii) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.df:                                            ; preds = %bb.cv
  %i.iq = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.dg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.thread

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %bb.dh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  invoke void @__cxa_throw(ptr nonnull %i.iq, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dr unwind label %bb.dj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.thread: ; preds = %bb.df
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split487

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.0 = phi i1 [ false, %bb.di ], [ true, %bb.dh ] ; 2 uses
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.it = load ptr, ptr %35, align 8, !tbaa !33   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.dj
  call void @_ZdlPv(ptr noundef %i.it) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %i.iw = load ptr, ptr %33, align 8, !tbaa !33   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread: ; preds = %bb.dg
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %i.ja = load ptr, ptr %33, align 8, !tbaa !33   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %.sink.split487, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread
  call void @_ZdlPv(ptr noundef %i.ja) #30
  br label %.sink.split487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  call void @_ZdlPv(ptr noundef %i.iw) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br i1 %.0, label %bb.dk, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br i1 %.0, label %bb.dk, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

.sink.split487:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.thread
  %.pn107.pn275.ph = phi { ptr, i32 } [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.thread ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.thread ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %bb.dk

bb.dk:                                            ; preds = %.sink.split487, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %.pn107.pn275 = phi { ptr, i32 } [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn107.pn275.ph, %.sink.split487 ]
  call void @__cxa_free_exception(ptr %i.iq) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit220

bb.dl:                                            ; preds = %bb.cw, %bb.ck
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.je = load <2 x ptr>, ptr %6, align 16, !tbaa !151
  store <2 x ptr> %i.je, ptr %37, align 16, !tbaa !151
  %i.jf = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jh = load ptr, ptr %i.jg, align 16, !tbaa !214
  store ptr %i.jh, ptr %i.jf, align 16, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11LogicalType6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %36, ptr noundef nonnull %37)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.do

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.dl
  %i.ji = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.jk = load i8, ptr %36, align 8, !tbaa !84
  store i8 %i.jk, ptr %i.jj, align 8, !tbaa !84
  %i.jl = getelementptr inbounds nuw i8, ptr %36, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !83
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !83
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.jq = load <2 x ptr>, ptr %i.jp, align 8, !tbaa !171
  %i.jr = load <2 x ptr>, ptr %i.jo, align 8, !tbaa !171
  store <2 x ptr> %i.jq, ptr %i.jo, align 8, !tbaa !171
  store <2 x ptr> %i.jr, ptr %i.jp, align 8, !tbaa !171
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #29
  %i.js = load ptr, ptr %37, align 16, !tbaa !213 ; 3 uses
  %i.jt = load ptr, ptr %i.ji, align 8, !tbaa !215 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.js, %i.jt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jy, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.js, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ju) #29
  %i.jv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.jv) #30
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jy, %i.jt
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %37, align 16, !tbaa !213
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
end_hunk_1
