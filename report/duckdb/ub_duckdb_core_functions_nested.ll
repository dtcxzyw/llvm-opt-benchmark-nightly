inline.NumInlined: 12414
inline.NumDeleted: 4971
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_118ListUpdateFunctionEPNS_6VectorERNS_18AggregateInputDataEmRS1_m:bb.a
._crit_edge:                                      ; preds = %bb.ag, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.u, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !40
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !120
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.p:                                             ; preds = %bb.n
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.q ], [ %i.ah, %bb.r ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.s, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.o, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.al, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !40
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #25, !inline_history !121
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.x:                                             ; preds = %bb.v
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ao, %bb.w ], [ %i.ay, %bb.x ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.az, label %bb.y, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.z:                                             ; preds = %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aa:                                            ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ab:                                            ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %.lr.ph, %bb.ag
  %storemerge24 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.ag ] ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !122
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !123 ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %storemerge24
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.ae, %bb.ad
  %i.bj = phi i64 [ %i.bi, %bb.ae ], [ %storemerge24, %bb.ad ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !124
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !126, !nonnull !130, !align !131
  invoke void @_ZN6duckdb14ArenaAllocator9AlignNextEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bm)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !126, !nonnull !130, !align !131
  invoke void @_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !47
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !47
  %i.bq = icmp ult i64 %i.bp, %4
  br i1 %i.bq, label %bb.ad, label %._crit_edge, !llvm.loop !132

bb.ah:                                            ; preds = %bb.af, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ah, %bb.ac, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.ab ], [ %i.bd, %bb.ac ], [ %i.br, %bb.ah ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.bb, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.z
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ai ], [ %i.ba, %bb.z ]
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119ListCombineFunctionERNS_6VectorES2_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %13 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %15 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %17 = alloca %"struct.duckdb::RecursiveUnifiedVectorFormat", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !133
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %12)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.c unwind label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !100
  %i.m = icmp eq i8 %i.l, 8
  br i1 %i.m, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i8 8, ptr %i.f, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.k)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.q = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.q) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i.i.i.i, label %bb.h, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i.i.i.i, label %bb.h, label %.body.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #25
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !117
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !134
  %i.w = icmp eq i8 %i.v, 8
  br i1 %i.w, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112ListAggStateEEEPT_RNS_6VectorE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i31.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i8 8, ptr %i.d, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.y = load i8, ptr %i.u, align 1, !tbaa !134
  store i8 %i.y, ptr %i.e, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.p unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i31.i: ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i33.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ab = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ab) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0.i.i.i33.i, label %bb.o, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0.i.i.i33.i, label %bb.o, label %.body.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i31.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i31.i ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i ]
  call void @__cxa_free_exception(ptr %i.x) #25
  br label %.body.i

bb.p:                                             ; preds = %bb.m
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112ListAggStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i36.i = load ptr, ptr %i.ae, align 8, !tbaa !135
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112ListAggStateEEEPT_RNS_6VectorE.exit.i
  %.pre2.i = load ptr, ptr %12, align 8, !tbaa !122
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ah, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_112ListAggStateEEEPT_RNS_6VectorE.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ah, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !40
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #25, !inline_history !142
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #25, !inline_history !142
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.t ], [ %i.au, %bb.u ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.v, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !42

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.r, %._crit_edge.i
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb12_GLOBAL__N_118ListAbsorbFunctionERNS_6VectorES2_RNS_18AggregateInputDataEm.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ay, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !40
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !143
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !143
  br label %_ZN6duckdb12_GLOBAL__N_118ListAbsorbFunctionERNS_6VectorES2_RNS_18AggregateInputDataEm.exit

bb.y:                                             ; preds = %bb.w
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.bb, %bb.z ], [ %i.bl, %bb.aa ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.bm, label %bb.ab, label %_ZN6duckdb12_GLOBAL__N_118ListAbsorbFunctionERNS_6VectorES2_RNS_18AggregateInputDataEm.exit, !prof !42

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25
  br label %_ZN6duckdb12_GLOBAL__N_118ListAbsorbFunctionERNS_6VectorES2_RNS_18AggregateInputDataEm.exit

bb.ac:                                            ; preds = %bb.b
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.preheader.i
  %18 = phi ptr [ %19, %bb.ah ], [ %.pre2.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0241.i = phi i64 [ %i.cj, %bb.ah ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.bo = load ptr, ptr %18, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.0241.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.ad, %.lr.ph.i
  %i.bs = phi i64 [ %i.br, %bb.ad ], [ %.0241.i, %.lr.ph.i ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !124 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !144 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i36.i, i64 %.0241.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !124 ; 4 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !144 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !tbaa.struct !148
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !122
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !150
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !151
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !152
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !151
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !151
  %i.ci = add i64 %i.bz, %i.bv
  store i64 %i.ci, ptr %i.by, align 8, !tbaa !144
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %19 = phi ptr [ %18, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %18, %bb.ag ], [ %.pre.i, %bb.af ]
  %i.cj = add nuw i64 %.0241.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cj, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !155

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %.body.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.ac, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.bn, %bb.ac ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn9.i.i.i.i, %bb.h ], [ %.pn10.i.i.i.i, %bb.o ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_118ListAbsorbFunctionERNS_6VectorES2_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ch

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %13)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %13)
          to label %bb.aj unwind label %bb.bm

bb.aj:                                            ; preds = %bb.ai
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !100
  %i.cm = icmp eq i8 %i.cl, 8
  br i1 %i.cm, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 8, ptr %i.c, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.ck)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ap unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.ak
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i.i.i = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cq = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.cq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.0.i.i.i, label %bb.ao, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.0.i.i.i, label %bb.ao, label %.body

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cn) #25
  br label %.body

bb.ap:                                            ; preds = %bb.am
  unreachable

bb.aq:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.val.i.i = load ptr, ptr %i.ct, align 8, !tbaa !117
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !134
  %i.cw = icmp eq i8 %i.cv, 8
  br i1 %i.cw, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cx = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.as unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i49

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !134
  store i8 %i.cy, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.aw unwind label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i49: ; preds = %bb.ar
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.i.i.i51 = phi i1 [ false, %bb.at ], [ true, %bb.as ] ; 2 uses
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.db = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.db) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0.i.i.i51, label %bb.av, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i53: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0.i.i.i51, label %bb.av, label %.body

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i49
  %.pn10.i.i.i = phi { ptr, i32 } [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i49 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i53 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52 ]
  call void @__cxa_free_exception(ptr %i.cx) #25
  br label %.body

bb.aw:                                            ; preds = %bb.at
  unreachable

bb.ax:                                            ; preds = %bb.aq
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i54 = load ptr, ptr %i.de, align 8, !tbaa !135
  invoke void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ay unwind label %bb.bn

bb.ay:                                            ; preds = %bb.ax
  %i.df = load ptr, ptr %2, align 8, !tbaa !118   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %bb.az unwind label %bb.bo

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %.preheader unwind label %bb.bo

.preheader:                                       ; preds = %bb.az
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.bp

._crit_edge65:                                    ; preds = %._crit_edge, %.preheader
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge65
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.do, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !40
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #25, !inline_history !120
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEtEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hv, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !40
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = add nsw i32 %i.hy, -1
  store i32 %i.ih, ptr %i.hv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.ii = atomicrmw volatile add ptr %i.hv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hy, %bb.bh ], [ %i.ii, %bb.bi ]
  %i.ij = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ij, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.ik, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateItEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateItEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateItEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateItEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateItEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateItEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateItEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateItEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !652  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !654  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !665  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i.i.i

_ZNSt6vectorItSaItEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !654
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !661  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateItEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !661
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateItEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateItEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateItEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !679

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateItEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateItEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateItEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateItE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !654
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !654   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 4611686018427387903
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !680
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !665 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !663
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 1
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.at, ptr align 2 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit.thread

_ZNSt6vectorItSaItEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !665
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !663
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !680
  br label %.lr.ph

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit.thread, %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit, %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !654   ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !658 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !658 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 1
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !654 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !663
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !665
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 3 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bm = phi ptr [ %.pre.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit_crit_edge ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.bp, 2
  br i1 %i.bq, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %.lr.ph14

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.v:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorItSaItEE9push_backEOt.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.bw = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bx = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bx, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.cb = phi i64 [ %i.ca, %bb.y ], [ %i.bw, %bb.x ] ; 2 uses
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.cc, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cd = lshr i64 %i.cb, 6
  %i.ce = and i64 %i.cb, 63
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = shl nuw i64 1, %i.ce
  %i.ci = and i64 %i.cg, %i.ch
  %.not11 = icmp eq i64 %i.ci, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.cj) #25
  br label %bb.bt

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cp = load ptr, ptr %0, align 8, !tbaa !654   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cr = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.bw
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cw = phi i64 [ %i.cv, %bb.ae ], [ %i.bw, %.noexc76 ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !657 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !663 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !680
  %.not.i.i77 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i16 %i.cy, ptr %i.da, align 2, !tbaa !657
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !663
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.ah:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !665 ; 4 uses
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775806
  br i1 %i.di, label %bb.ai, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dj = ashr exact i64 %i.dh, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 4611686018427387903)
  %i.dn = select i1 %i.dl, i64 4611686018427387903, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 1
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store i16 %i.cy, ptr %i.dq, align 2, !tbaa !657
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.aj, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dp, ptr align 2 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cr, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !665
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !663
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dt, ptr %i.db, align 8, !tbaa !680
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.cr, %bb.ag ]
  %i.du = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !681

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

._crit_edge15:                                    ; preds = %bb.au, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !661 ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !575 ; 2 uses
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !571 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.ed
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ee = sub nuw nsw i64 %i.dw, %i.ed
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.ee)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ef = icmp ult i64 %i.dw, %i.ed
  br i1 %i.ef, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.eg, ptr %i.dx, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.au
  %.pre2024 = phi ptr [ %.pre2025, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 4 uses
  %.pre1921 = phi ptr [ %.pre1922, %bb.au ], [ %i.bm, %.lr.ph14.preheader ] ; 4 uses
  %i.eh = phi ptr [ %i.fa, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 3 uses
  %i.ei = phi ptr [ %i.fb, %bb.au ], [ %i.bm, %.lr.ph14.preheader ]
  %i.ej = phi i64 [ %i.ff, %bb.au ], [ %i.bn, %.lr.ph14.preheader ]
  %i.ek = phi ptr [ %i.fe, %bb.au ], [ %i.bl, %.lr.ph14.preheader ] ; 4 uses
  %i.el = phi ptr [ %i.fd, %bb.au ], [ %i.br, %.lr.ph14.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.fc, %bb.au ], [ 1, %.lr.ph14.preheader ] ; 3 uses
  %i.em = add i64 %.013, -1                       ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %.013 ; 4 uses
  %i.ep = load i16, ptr %i.en, align 2, !tbaa !657
  %i.eq = load i16, ptr %i.eo, align 2, !tbaa !657
  %i.er = icmp eq i16 %i.ep, %i.eq
  br i1 %i.er, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %.lr.ph14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 2 ; 4 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.es, %i.ek
  br i1 %.not.i.i.i.i82, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.ej, %i.et                    ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 2
  br i1 %i.ev, label %bb.aq, label %bb.ar, !prof !402

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.eo, ptr nonnull align 2 %i.es, i64 %i.eu, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !663
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !654 ; 2 uses
  %.pre20.pre = load ptr, ptr %.pre19.pre, align 8, !tbaa !665
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ew = icmp eq i64 %i.eu, 2
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i16, ptr %i.es, align 2, !tbaa !657
  store i16 %i.ex, ptr %i.eo, align 2, !tbaa !657
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.pre20 = phi ptr [ %.pre2024, %bb.as ], [ %.pre2024, %bb.ar ], [ %.pre20.pre, %bb.aq ], [ %.pre2024, %bb.ao ] ; 2 uses
  %.pre19 = phi ptr [ %.pre1921, %bb.as ], [ %.pre1921, %bb.ar ], [ %.pre19.pre, %bb.aq ], [ %.pre1921, %bb.ao ] ; 2 uses
  %i.ey = phi ptr [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ], [ %.pre.i.i.i.i, %bb.aq ], [ %i.ek, %bb.ao ]
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -2
  store ptr %i.ez, ptr %i.el, align 8, !tbaa !663
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph14, %bb.at
  %.pre2025 = phi ptr [ %.pre20, %bb.at ], [ %.pre2024, %.lr.ph14 ]
  %.pre1922 = phi ptr [ %.pre19, %bb.at ], [ %.pre1921, %.lr.ph14 ]
  %i.fa = phi ptr [ %.pre20, %bb.at ], [ %i.eh, %.lr.ph14 ] ; 2 uses
  %i.fb = phi ptr [ %.pre19, %bb.at ], [ %i.ei, %.lr.ph14 ] ; 2 uses
  %.1 = phi i64 [ %i.em, %bb.at ], [ %.013, %.lr.ph14 ]
  %i.fc = add i64 %.1, 1                          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !663 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 1
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.lr.ph14, label %._crit_edge15, !llvm.loop !682

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fm, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.ay ], [ %i.fz, %bb.az ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.ba, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aw, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gd, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !40
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEjEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hv, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !40
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = add nsw i32 %i.hy, -1
  store i32 %i.ih, ptr %i.hv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.ii = atomicrmw volatile add ptr %i.hv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hy, %bb.bh ], [ %i.ii, %bb.bi ]
  %i.ij = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ij, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.ik, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateIjEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIjEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIjEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIjEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIjEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIjEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIjEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIjEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !694  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !696  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !705  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !696
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !701  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIjEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !701
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIjEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIjEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIjEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !719

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIjEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIjEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIjEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIjE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !696
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !696   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 2305843009213693951
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !720
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !705 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !703
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread

_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !705
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !703
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !720
  br label %.lr.ph

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !696   ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !699 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !699 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !696 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !703
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !705
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 3 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bm = phi ptr [ %.pre.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit_crit_edge ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.bp, 4
  br i1 %i.bq, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %.lr.ph14

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.v:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.bw = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bx = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bx, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.cb = phi i64 [ %i.ca, %bb.y ], [ %i.bw, %bb.x ] ; 2 uses
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.cc, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cd = lshr i64 %i.cb, 6
  %i.ce = and i64 %i.cb, 63
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = shl nuw i64 1, %i.ce
  %i.ci = and i64 %i.cg, %i.ch
  %.not11 = icmp eq i64 %i.ci, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.cj) #25
  br label %bb.bt

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cp = load ptr, ptr %0, align 8, !tbaa !696   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cr = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.bw
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cw = phi i64 [ %i.cv, %bb.ae ], [ %i.bw, %.noexc76 ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !703 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !720
  %.not.i.i77 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !703
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.ah:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !705 ; 4 uses
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775804
  br i1 %i.di, label %bb.ai, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dj = ashr exact i64 %i.dh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 2305843009213693951)
  %i.dn = select i1 %i.dl, i64 2305843009213693951, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 2
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store i32 %i.cy, ptr %i.dq, align 4, !tbaa !3
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.aj, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr align 4 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cr, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !705
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !703
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dt, ptr %i.db, align 8, !tbaa !720
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.cr, %bb.ag ]
  %i.du = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !721

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

._crit_edge15:                                    ; preds = %bb.au, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !701 ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !575 ; 2 uses
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !571 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.ed
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ee = sub nuw nsw i64 %i.dw, %i.ed
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.ee)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ef = icmp ult i64 %i.dw, %i.ed
  br i1 %i.ef, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.eg, ptr %i.dx, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.au
  %.pre2024 = phi ptr [ %.pre2025, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 4 uses
  %.pre1921 = phi ptr [ %.pre1922, %bb.au ], [ %i.bm, %.lr.ph14.preheader ] ; 4 uses
  %i.eh = phi ptr [ %i.fa, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 3 uses
  %i.ei = phi ptr [ %i.fb, %bb.au ], [ %i.bm, %.lr.ph14.preheader ]
  %i.ej = phi i64 [ %i.ff, %bb.au ], [ %i.bn, %.lr.ph14.preheader ]
  %i.ek = phi ptr [ %i.fe, %bb.au ], [ %i.bl, %.lr.ph14.preheader ] ; 4 uses
  %i.el = phi ptr [ %i.fd, %bb.au ], [ %i.br, %.lr.ph14.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.fc, %bb.au ], [ 1, %.lr.ph14.preheader ] ; 3 uses
  %i.em = add i64 %.013, -1                       ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.013 ; 4 uses
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !3
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %.lr.ph14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 4 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.es, %i.ek
  br i1 %.not.i.i.i.i82, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.ej, %i.et                    ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 4
  br i1 %i.ev, label %bb.aq, label %bb.ar, !prof !402

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr nonnull align 4 %i.es, i64 %i.eu, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !703
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !696 ; 2 uses
  %.pre20.pre = load ptr, ptr %.pre19.pre, align 8, !tbaa !705
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ew = icmp eq i64 %i.eu, 4
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i32, ptr %i.es, align 4, !tbaa !3
  store i32 %i.ex, ptr %i.eo, align 4, !tbaa !3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.pre20 = phi ptr [ %.pre2024, %bb.as ], [ %.pre2024, %bb.ar ], [ %.pre20.pre, %bb.aq ], [ %.pre2024, %bb.ao ] ; 2 uses
  %.pre19 = phi ptr [ %.pre1921, %bb.as ], [ %.pre1921, %bb.ar ], [ %.pre19.pre, %bb.aq ], [ %.pre1921, %bb.ao ] ; 2 uses
  %i.ey = phi ptr [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ], [ %.pre.i.i.i.i, %bb.aq ], [ %i.ek, %bb.ao ]
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store ptr %i.ez, ptr %i.el, align 8, !tbaa !703
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph14, %bb.at
  %.pre2025 = phi ptr [ %.pre20, %bb.at ], [ %.pre2024, %.lr.ph14 ]
  %.pre1922 = phi ptr [ %.pre19, %bb.at ], [ %.pre1921, %.lr.ph14 ]
  %i.fa = phi ptr [ %.pre20, %bb.at ], [ %i.eh, %.lr.ph14 ] ; 2 uses
  %i.fb = phi ptr [ %.pre19, %bb.at ], [ %i.ei, %.lr.ph14 ] ; 2 uses
  %.1 = phi i64 [ %i.em, %bb.at ], [ %.013, %.lr.ph14 ]
  %i.fc = add i64 %.1, 1                          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !703 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 2
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.lr.ph14, label %._crit_edge15, !llvm.loop !722

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fm, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.ay ], [ %i.fz, %bb.az ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.ba, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aw, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gd, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !40
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEmEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hy, align 8, !tbaa !38
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !40
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #25, !inline_history !121
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !35
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ib, %bb.bh ], [ %i.il, %bb.bi ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.im, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.in, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateImEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateImEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateImEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateImEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateImEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateImEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateImEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateImEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !734  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !736  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !736
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !739  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateImEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit4.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit4.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit4.i.i.i:             ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !739
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateImEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateImEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateImEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !754

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateImEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateImEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateImEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateImE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !736
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !739
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !736   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 1152921504606846975
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !612
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !571 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !575
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.thread

_ZNSt6vectorImSaImEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !571
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !575
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !612
  br label %.lr.ph

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.thread, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !736   ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !476 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !476 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !736 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !575
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !571
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 3 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bm = phi ptr [ %.pre.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit_crit_edge ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.bp, 8
  br i1 %i.bq, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %.lr.ph14

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.v:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.bw = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bx = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bx, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.cb = phi i64 [ %i.ca, %bb.y ], [ %i.bw, %bb.x ] ; 2 uses
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.cc, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cd = lshr i64 %i.cb, 6
  %i.ce = and i64 %i.cb, 63
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = shl nuw i64 1, %i.ce
  %i.ci = and i64 %i.cg, %i.ch
  %.not11 = icmp eq i64 %i.ci, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.cj) #25
  br label %bb.bt

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cp = load ptr, ptr %0, align 8, !tbaa !736   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cr = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.bw
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cw = phi i64 [ %i.cv, %bb.ae ], [ %i.bw, %.noexc76 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !47 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !575 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !612
  %.not.i.i77 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ah:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !571 ; 4 uses
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.ai, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store i64 %i.cy, ptr %i.dq, align 8, !tbaa !47
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.aj, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cr, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !571
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !575
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dt, ptr %i.db, align 8, !tbaa !612
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.cr, %bb.ag ]
  %i.du = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !755

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

._crit_edge15:                                    ; preds = %bb.au, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !739 ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !575 ; 2 uses
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !571 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.ed
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ee = sub nuw nsw i64 %i.dw, %i.ed
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.ee)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ef = icmp ult i64 %i.dw, %i.ed
  br i1 %i.ef, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.eg, ptr %i.dx, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.au
  %.pre2024 = phi ptr [ %.pre2025, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 4 uses
  %.pre1921 = phi ptr [ %.pre1922, %bb.au ], [ %i.bm, %.lr.ph14.preheader ] ; 4 uses
  %i.eh = phi ptr [ %i.fa, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 3 uses
  %i.ei = phi ptr [ %i.fb, %bb.au ], [ %i.bm, %.lr.ph14.preheader ]
  %i.ej = phi i64 [ %i.ff, %bb.au ], [ %i.bn, %.lr.ph14.preheader ]
  %i.ek = phi ptr [ %i.fe, %bb.au ], [ %i.bl, %.lr.ph14.preheader ] ; 4 uses
  %i.el = phi ptr [ %i.fd, %bb.au ], [ %i.br, %.lr.ph14.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.fc, %bb.au ], [ 1, %.lr.ph14.preheader ] ; 3 uses
  %i.em = add i64 %.013, -1                       ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.013 ; 4 uses
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !47
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !47
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %.lr.ph14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.es, %i.ek
  br i1 %.not.i.i.i.i82, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.ej, %i.et                    ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 8
  br i1 %i.ev, label %bb.aq, label %bb.ar, !prof !402

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr nonnull align 8 %i.es, i64 %i.eu, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !575
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !736 ; 2 uses
  %.pre20.pre = load ptr, ptr %.pre19.pre, align 8, !tbaa !571
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ew = icmp eq i64 %i.eu, 8
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i64, ptr %i.es, align 8, !tbaa !47
  store i64 %i.ex, ptr %i.eo, align 8, !tbaa !47
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.pre20 = phi ptr [ %.pre2024, %bb.as ], [ %.pre2024, %bb.ar ], [ %.pre20.pre, %bb.aq ], [ %.pre2024, %bb.ao ] ; 2 uses
  %.pre19 = phi ptr [ %.pre1921, %bb.as ], [ %.pre1921, %bb.ar ], [ %.pre19.pre, %bb.aq ], [ %.pre1921, %bb.ao ] ; 2 uses
  %i.ey = phi ptr [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ], [ %.pre.i.i.i.i, %bb.aq ], [ %i.ek, %bb.ao ]
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -8
  store ptr %i.ez, ptr %i.el, align 8, !tbaa !575
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph14, %bb.at
  %.pre2025 = phi ptr [ %.pre20, %bb.at ], [ %.pre2024, %.lr.ph14 ]
  %.pre1922 = phi ptr [ %.pre19, %bb.at ], [ %.pre1921, %.lr.ph14 ]
  %i.fa = phi ptr [ %.pre20, %bb.at ], [ %i.eh, %.lr.ph14 ] ; 2 uses
  %i.fb = phi ptr [ %.pre19, %bb.at ], [ %i.ei, %.lr.ph14 ] ; 2 uses
  %.1 = phi i64 [ %i.em, %bb.at ], [ %.013, %.lr.ph14 ]
  %i.fc = add i64 %.1, 1                          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !575 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.lr.ph14, label %._crit_edge15, !llvm.loop !756

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fm, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.ay ], [ %i.fz, %bb.az ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.ba, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aw, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gd, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !40
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEsEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hv, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !40
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = add nsw i32 %i.hy, -1
  store i32 %i.ih, ptr %i.hv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.ii = atomicrmw volatile add ptr %i.hv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hy, %bb.bh ], [ %i.ii, %bb.bi ]
  %i.ij = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ij, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.ik, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateIsEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIsEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIsEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIsEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIsEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIsEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIsEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIsEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !806  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !808  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !816  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIsSaIsEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit.i.i.i

_ZNSt6vectorIsSaIsEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !808
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIsSaIsEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !812  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIsEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !812
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIsEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIsEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIsEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !830

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIsEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIsEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIsEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIsE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !808
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !812
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !808   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 4611686018427387903
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !831
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !816 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIsSaIsEE7reserveEm.exit

_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !814
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 1
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.at, ptr align 2 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIsSaIsEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorIsSaIsEE7reserveEm.exit.thread

_ZNSt6vectorIsSaIsEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !816
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !814
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !831
  br label %.lr.ph

_ZNSt6vectorIsSaIsEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIsSaIsEE7reserveEm.exit.thread, %_ZNSt6vectorIsSaIsEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIsSaIsEE9push_backEOs.exit, %_ZNSt6vectorIsSaIsEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !808   ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !658 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !658 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 1
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !808 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !814
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !816
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 3 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bm = phi ptr [ %.pre.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit_crit_edge ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.bp, 2
  br i1 %i.bq, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %.lr.ph14

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.v:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIsSaIsEE9push_backEOs.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorIsSaIsEE9push_backEOs.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNSt6vectorIsSaIsEE9push_backEOs.exit ] ; 2 uses
  %i.bw = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bx = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bx, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.cb = phi i64 [ %i.ca, %bb.y ], [ %i.bw, %bb.x ] ; 2 uses
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.cc, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cd = lshr i64 %i.cb, 6
  %i.ce = and i64 %i.cb, 63
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = shl nuw i64 1, %i.ce
  %i.ci = and i64 %i.cg, %i.ch
  %.not11 = icmp eq i64 %i.ci, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.cj) #25
  br label %bb.bt

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cp = load ptr, ptr %0, align 8, !tbaa !808   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cr = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.bw
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cw = phi i64 [ %i.cv, %bb.ae ], [ %i.bw, %.noexc76 ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !657 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !814 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !831
  %.not.i.i77 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i16 %i.cy, ptr %i.da, align 2, !tbaa !657
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !814
  br label %_ZNSt6vectorIsSaIsEE9push_backEOs.exit

bb.ah:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !816 ; 4 uses
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775806
  br i1 %i.di, label %bb.ai, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dj = ashr exact i64 %i.dh, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 4611686018427387903)
  %i.dn = select i1 %i.dl, i64 4611686018427387903, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 1
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store i16 %i.cy, ptr %i.dq, align 2, !tbaa !657
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.aj, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dp, ptr align 2 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cr, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !816
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !814
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dt, ptr %i.db, align 8, !tbaa !831
  br label %_ZNSt6vectorIsSaIsEE9push_backEOs.exit

_ZNSt6vectorIsSaIsEE9push_backEOs.exit:           ; preds = %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i ], [ %i.cr, %bb.ag ]
  %i.du = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !832

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

._crit_edge15:                                    ; preds = %bb.au, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEvT_S7_.exit
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !812 ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !575 ; 2 uses
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !571 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.ed
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ee = sub nuw nsw i64 %i.dw, %i.ed
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.ee)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ef = icmp ult i64 %i.dw, %i.ed
  br i1 %i.ef, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.eg, ptr %i.dx, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.au
  %.pre2024 = phi ptr [ %.pre2025, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 4 uses
  %.pre1921 = phi ptr [ %.pre1922, %bb.au ], [ %i.bm, %.lr.ph14.preheader ] ; 4 uses
  %i.eh = phi ptr [ %i.fa, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 3 uses
  %i.ei = phi ptr [ %i.fb, %bb.au ], [ %i.bm, %.lr.ph14.preheader ]
  %i.ej = phi i64 [ %i.ff, %bb.au ], [ %i.bn, %.lr.ph14.preheader ]
  %i.ek = phi ptr [ %i.fe, %bb.au ], [ %i.bl, %.lr.ph14.preheader ] ; 4 uses
  %i.el = phi ptr [ %i.fd, %bb.au ], [ %i.br, %.lr.ph14.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.fc, %bb.au ], [ 1, %.lr.ph14.preheader ] ; 3 uses
  %i.em = add i64 %.013, -1                       ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %.013 ; 4 uses
  %i.ep = load i16, ptr %i.en, align 2, !tbaa !657
  %i.eq = load i16, ptr %i.eo, align 2, !tbaa !657
  %i.er = icmp eq i16 %i.ep, %i.eq
  br i1 %i.er, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %.lr.ph14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 2 ; 4 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.es, %i.ek
  br i1 %.not.i.i.i.i82, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.ej, %i.et                    ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 2
  br i1 %i.ev, label %bb.aq, label %bb.ar, !prof !402

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.eo, ptr nonnull align 2 %i.es, i64 %i.eu, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !814
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !808 ; 2 uses
  %.pre20.pre = load ptr, ptr %.pre19.pre, align 8, !tbaa !816
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ew = icmp eq i64 %i.eu, 2
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i16, ptr %i.es, align 2, !tbaa !657
  store i16 %i.ex, ptr %i.eo, align 2, !tbaa !657
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.pre20 = phi ptr [ %.pre2024, %bb.as ], [ %.pre2024, %bb.ar ], [ %.pre20.pre, %bb.aq ], [ %.pre2024, %bb.ao ] ; 2 uses
  %.pre19 = phi ptr [ %.pre1921, %bb.as ], [ %.pre1921, %bb.ar ], [ %.pre19.pre, %bb.aq ], [ %.pre1921, %bb.ao ] ; 2 uses
  %i.ey = phi ptr [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ], [ %.pre.i.i.i.i, %bb.aq ], [ %i.ek, %bb.ao ]
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -2
  store ptr %i.ez, ptr %i.el, align 8, !tbaa !814
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph14, %bb.at
  %.pre2025 = phi ptr [ %.pre20, %bb.at ], [ %.pre2024, %.lr.ph14 ]
  %.pre1922 = phi ptr [ %.pre19, %bb.at ], [ %.pre1921, %.lr.ph14 ]
  %i.fa = phi ptr [ %.pre20, %bb.at ], [ %i.eh, %.lr.ph14 ] ; 2 uses
  %i.fb = phi ptr [ %.pre19, %bb.at ], [ %i.ei, %.lr.ph14 ] ; 2 uses
  %.1 = phi i64 [ %i.em, %bb.at ], [ %.013, %.lr.ph14 ]
  %i.fc = add i64 %.1, 1                          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !814 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 1
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.lr.ph14, label %._crit_edge15, !llvm.loop !833

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fm, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.ay ], [ %i.fz, %bb.az ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.ba, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aw, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gd, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !40
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_4
begin_hunk_5_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEiEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hv, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !40
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = add nsw i32 %i.hy, -1
  store i32 %i.ih, ptr %i.hv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.ii = atomicrmw volatile add ptr %i.hv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hy, %bb.bh ], [ %i.ii, %bb.bi ]
  %i.ij = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ij, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.ik, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateIiEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIiEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIiEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIiEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIiEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIiEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIiEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIiEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !845  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !847  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !855  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !847
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !851  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIiEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !851
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIiEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIiEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIiEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !869

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIiEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIiEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIiEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIiE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !847
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !851
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !847   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 2305843009213693951
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !870
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !855 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !853
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread

_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !855
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !853
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !870
  br label %.lr.ph

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !847   ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !699 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !699 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !847 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !853
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !855
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 3 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bm = phi ptr [ %.pre.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.bp, 4
  br i1 %i.bq, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %.lr.ph14

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.v:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.bw = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bx = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bx, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.cb = phi i64 [ %i.ca, %bb.y ], [ %i.bw, %bb.x ] ; 2 uses
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.cc, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cd = lshr i64 %i.cb, 6
  %i.ce = and i64 %i.cb, 63
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = shl nuw i64 1, %i.ce
  %i.ci = and i64 %i.cg, %i.ch
  %.not11 = icmp eq i64 %i.ci, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.cj) #25
  br label %bb.bt

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cp = load ptr, ptr %0, align 8, !tbaa !847   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cr = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.bw
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cw = phi i64 [ %i.cv, %bb.ae ], [ %i.bw, %.noexc76 ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !853 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !870
  %.not.i.i77 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !853
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ah:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !855 ; 4 uses
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775804
  br i1 %i.di, label %bb.ai, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dj = ashr exact i64 %i.dh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 2305843009213693951)
  %i.dn = select i1 %i.dl, i64 2305843009213693951, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 2
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store i32 %i.cy, ptr %i.dq, align 4, !tbaa !3
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr align 4 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cr, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !855
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !853
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dt, ptr %i.db, align 8, !tbaa !870
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cr, %bb.ag ]
  %i.du = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !871

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

._crit_edge15:                                    ; preds = %bb.au, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !851 ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !575 ; 2 uses
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !571 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.ed
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ee = sub nuw nsw i64 %i.dw, %i.ed
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.ee)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ef = icmp ult i64 %i.dw, %i.ed
  br i1 %i.ef, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.eg, ptr %i.dx, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.au
  %.pre2024 = phi ptr [ %.pre2025, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 4 uses
  %.pre1921 = phi ptr [ %.pre1922, %bb.au ], [ %i.bm, %.lr.ph14.preheader ] ; 4 uses
  %i.eh = phi ptr [ %i.fa, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 3 uses
  %i.ei = phi ptr [ %i.fb, %bb.au ], [ %i.bm, %.lr.ph14.preheader ]
  %i.ej = phi i64 [ %i.ff, %bb.au ], [ %i.bn, %.lr.ph14.preheader ]
  %i.ek = phi ptr [ %i.fe, %bb.au ], [ %i.bl, %.lr.ph14.preheader ] ; 4 uses
  %i.el = phi ptr [ %i.fd, %bb.au ], [ %i.br, %.lr.ph14.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.fc, %bb.au ], [ 1, %.lr.ph14.preheader ] ; 3 uses
  %i.em = add i64 %.013, -1                       ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.013 ; 4 uses
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !3
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %.lr.ph14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 4 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.es, %i.ek
  br i1 %.not.i.i.i.i82, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.ej, %i.et                    ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 4
  br i1 %i.ev, label %bb.aq, label %bb.ar, !prof !402

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr nonnull align 4 %i.es, i64 %i.eu, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !853
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !847 ; 2 uses
  %.pre20.pre = load ptr, ptr %.pre19.pre, align 8, !tbaa !855
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ew = icmp eq i64 %i.eu, 4
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i32, ptr %i.es, align 4, !tbaa !3
  store i32 %i.ex, ptr %i.eo, align 4, !tbaa !3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.pre20 = phi ptr [ %.pre2024, %bb.as ], [ %.pre2024, %bb.ar ], [ %.pre20.pre, %bb.aq ], [ %.pre2024, %bb.ao ] ; 2 uses
  %.pre19 = phi ptr [ %.pre1921, %bb.as ], [ %.pre1921, %bb.ar ], [ %.pre19.pre, %bb.aq ], [ %.pre1921, %bb.ao ] ; 2 uses
  %i.ey = phi ptr [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ], [ %.pre.i.i.i.i, %bb.aq ], [ %i.ek, %bb.ao ]
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store ptr %i.ez, ptr %i.el, align 8, !tbaa !853
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph14, %bb.at
  %.pre2025 = phi ptr [ %.pre20, %bb.at ], [ %.pre2024, %.lr.ph14 ]
  %.pre1922 = phi ptr [ %.pre19, %bb.at ], [ %.pre1921, %.lr.ph14 ]
  %i.fa = phi ptr [ %.pre20, %bb.at ], [ %i.eh, %.lr.ph14 ] ; 2 uses
  %i.fb = phi ptr [ %.pre19, %bb.at ], [ %i.ei, %.lr.ph14 ] ; 2 uses
  %.1 = phi i64 [ %i.em, %bb.at ], [ %.013, %.lr.ph14 ]
  %i.fc = add i64 %.1, 1                          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !853 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 2
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.lr.ph14, label %._crit_edge15, !llvm.loop !872

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fm, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.ay ], [ %i.fz, %bb.az ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.ba, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aw, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gd, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !40
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_5
begin_hunk_6_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorElEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hy, align 8, !tbaa !38
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !40
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #25, !inline_history !121
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !35
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ib, %bb.bh ], [ %i.il, %bb.bi ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.im, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.in, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateIlEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIlEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIlEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIlEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIlEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIlEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIlEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIlEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !884  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !894  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !886
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !890  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIlEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !890
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIlEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIlEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIlEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !908

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIlEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIlEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIlEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIlE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !886
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !890
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bv

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !886   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 1152921504606846975
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !909
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !894 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !892
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit.thread

_ZNSt6vectorIlSaIlEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !894
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !892
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !909
  br label %.lr.ph

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit.thread, %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !886   ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !476 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !476 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !886 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !892
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !894
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 3 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bm = phi ptr [ %.pre.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit_crit_edge ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.bp, 8
  br i1 %i.bq, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %.lr.ph14

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.v:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 2 uses
  %i.bw = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bx = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bx, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.cb = phi i64 [ %i.ca, %bb.y ], [ %i.bw, %bb.x ] ; 2 uses
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.cc, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cd = lshr i64 %i.cb, 6
  %i.ce = and i64 %i.cb, 63
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = shl nuw i64 1, %i.ce
  %i.ci = and i64 %i.cg, %i.ch
  %.not11 = icmp eq i64 %i.ci, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bw unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bt

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.cj) #25
  br label %bb.bt

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cp = load ptr, ptr %0, align 8, !tbaa !886   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cr = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.bw
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cw = phi i64 [ %i.cv, %bb.ae ], [ %i.bw, %.noexc76 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !47 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !892 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !909
  %.not.i.i77 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !892
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.ah:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !894 ; 4 uses
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.ai, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store i64 %i.cy, ptr %i.dq, align 8, !tbaa !47
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.aj, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cr, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !894
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !892
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dt, ptr %i.db, align 8, !tbaa !909
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %i.cr, %bb.ag ]
  %i.du = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !910

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

._crit_edge15:                                    ; preds = %bb.au, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !890 ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !575 ; 2 uses
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !571 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.ed
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ee = sub nuw nsw i64 %i.dw, %i.ed
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.ee)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ef = icmp ult i64 %i.dw, %i.ed
  br i1 %i.ef, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dy, %i.eg
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.eg, ptr %i.dx, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.au
  %.pre2024 = phi ptr [ %.pre2025, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 4 uses
  %.pre1921 = phi ptr [ %.pre1922, %bb.au ], [ %i.bm, %.lr.ph14.preheader ] ; 4 uses
  %i.eh = phi ptr [ %i.fa, %bb.au ], [ %i.bk, %.lr.ph14.preheader ] ; 3 uses
  %i.ei = phi ptr [ %i.fb, %bb.au ], [ %i.bm, %.lr.ph14.preheader ]
  %i.ej = phi i64 [ %i.ff, %bb.au ], [ %i.bn, %.lr.ph14.preheader ]
  %i.ek = phi ptr [ %i.fe, %bb.au ], [ %i.bl, %.lr.ph14.preheader ] ; 4 uses
  %i.el = phi ptr [ %i.fd, %bb.au ], [ %i.br, %.lr.ph14.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.fc, %bb.au ], [ 1, %.lr.ph14.preheader ] ; 3 uses
  %i.em = add i64 %.013, -1                       ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.013 ; 4 uses
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !47
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !47
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %.lr.ph14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.es, %i.ek
  br i1 %.not.i.i.i.i82, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.ej, %i.et                    ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 8
  br i1 %i.ev, label %bb.aq, label %bb.ar, !prof !402

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr nonnull align 8 %i.es, i64 %i.eu, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !892
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !886 ; 2 uses
  %.pre20.pre = load ptr, ptr %.pre19.pre, align 8, !tbaa !894
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ew = icmp eq i64 %i.eu, 8
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i64, ptr %i.es, align 8, !tbaa !47
  store i64 %i.ex, ptr %i.eo, align 8, !tbaa !47
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.pre20 = phi ptr [ %.pre2024, %bb.as ], [ %.pre2024, %bb.ar ], [ %.pre20.pre, %bb.aq ], [ %.pre2024, %bb.ao ] ; 2 uses
  %.pre19 = phi ptr [ %.pre1921, %bb.as ], [ %.pre1921, %bb.ar ], [ %.pre19.pre, %bb.aq ], [ %.pre1921, %bb.ao ] ; 2 uses
  %i.ey = phi ptr [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ], [ %.pre.i.i.i.i, %bb.aq ], [ %i.ek, %bb.ao ]
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -8
  store ptr %i.ez, ptr %i.el, align 8, !tbaa !892
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph14, %bb.at
  %.pre2025 = phi ptr [ %.pre20, %bb.at ], [ %.pre2024, %.lr.ph14 ]
  %.pre1922 = phi ptr [ %.pre19, %bb.at ], [ %.pre1921, %.lr.ph14 ]
  %i.fa = phi ptr [ %.pre20, %bb.at ], [ %i.eh, %.lr.ph14 ] ; 2 uses
  %i.fb = phi ptr [ %.pre19, %bb.at ], [ %i.ei, %.lr.ph14 ] ; 2 uses
  %.1 = phi i64 [ %i.em, %bb.at ], [ %.013, %.lr.ph14 ]
  %i.fc = add i64 %.1, 1                          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !892 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.lr.ph14, label %._crit_edge15, !llvm.loop !911

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fm, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.ay ], [ %i.fz, %bb.az ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.ba, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aw, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gd, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !40
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_6
begin_hunk_7_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEfEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hv, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !40
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ig = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = add nsw i32 %i.hy, -1
  store i32 %i.ih, ptr %i.hv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.ii = atomicrmw volatile add ptr %i.hv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hy, %bb.bh ], [ %i.ii, %bb.bi ]
  %i.ij = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ij, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.ik, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateIfEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIfEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIfEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIfEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIfEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIfEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIfEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIfEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !923  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !925  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !937  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !925
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !933  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIfEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !933
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIfEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIfEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIfEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !952

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIfEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIfEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIfEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIfE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !925
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !933
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.by unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bx

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bx

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !925   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 2305843009213693951
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !953
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !937 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !935
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread

_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !937
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !935
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !953
  br label %.lr.ph

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !925   ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !930 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !930 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !925 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !935
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !937
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ]
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ugt i64 %i.bo, 4
  br i1 %i.bp, label %.lr.ph14, label %._crit_edge15

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.u:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.v:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 2 uses
  %i.bu = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bv, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.bz = phi i64 [ %i.by, %bb.y ], [ %i.bu, %bb.x ] ; 2 uses
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.ca, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cb = lshr i64 %i.bz, 6
  %i.cc = and i64 %i.bz, 63
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !47
  %i.cf = shl nuw i64 1, %i.cc
  %i.cg = and i64 %i.ce, %i.cf
  %.not11 = icmp eq i64 %i.cg, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.by unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ck = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.ck) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bv

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.ch) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cn = load ptr, ptr %0, align 8, !tbaa !925   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.co = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cp = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bu
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cu = phi i64 [ %i.ct, %bb.ae ], [ %i.bu, %.noexc76 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !928 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !935 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !953
  %.not.i.i77 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store float %i.cw, ptr %i.cy, align 4, !tbaa !928
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !935
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.ah:                                            ; preds = %bb.af
  %i.dc = load ptr, ptr %i.cn, align 8, !tbaa !937 ; 4 uses
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 5 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775804
  br i1 %i.dg, label %bb.ai, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dh = ashr exact i64 %i.df, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 2305843009213693951)
  %i.dl = select i1 %i.dj, i64 2305843009213693951, i64 %i.dk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.df ; 2 uses
  store float %i.cw, ptr %i.do, align 4, !tbaa !928
  %i.dp = icmp sgt i64 %i.df, 0
  br i1 %i.dp, label %bb.aj, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr align 4 %i.dc, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cp, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dn, ptr %i.cn, align 8, !tbaa !937
  store ptr %i.dq, ptr %i.cx, align 8, !tbaa !935
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.dr, ptr %i.cz, align 8, !tbaa !953
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.cp, %bb.ag ]
  %i.ds = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !954

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

._crit_edge15:                                    ; preds = %bb.aw, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !933 ; 3 uses
  %i.du = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !575 ; 2 uses
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !571 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.eb
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ec = sub nuw nsw i64 %i.du, %i.eb
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 noundef %i.ec)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ed = icmp ult i64 %i.du, %i.eb
  br i1 %i.ed, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.du ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dw, %i.ee
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.ee, ptr %i.dv, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit, %bb.aw
  %i.ef = phi ptr [ %i.fc, %bb.aw ], [ %i.bk, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit ] ; 2 uses
  %.013 = phi i64 [ %i.ez, %bb.aw ], [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit ] ; 4 uses
  %i.eg = add i64 %.013, -1                       ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.013
  %i.ej = invoke noundef zeroext i1 @_ZN6duckdb6Equals9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.eh, ptr noundef nonnull align 4 dereferenceable(4) %i.ei)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %.lr.ph14
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !925 ; 6 uses
  br i1 %i.ej, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.ek = load ptr, ptr %.pre20, align 8, !tbaa !930
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %.013 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.pre20, i64 8 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !930 ; 5 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.em, %i.eo
  br i1 %.not.i.i.i.i82, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp sgt i64 %i.er, 4
  br i1 %i.es, label %bb.ar, label %bb.as, !prof !402

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.el, ptr nonnull align 4 %i.em, i64 %i.er, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.en, align 8, !tbaa !935
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !925
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.et = icmp eq i64 %i.er, 4
  br i1 %i.et, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eu = load float, ptr %i.em, align 4, !tbaa !928
  store float %i.eu, ptr %i.el, align 4, !tbaa !928
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.pre19 = phi ptr [ %.pre20, %bb.at ], [ %.pre20, %bb.as ], [ %.pre19.pre, %bb.ar ], [ %.pre20, %bb.ap ]
  %i.ev = phi ptr [ %i.eo, %bb.at ], [ %i.eo, %bb.as ], [ %.pre.i.i.i.i, %bb.ar ], [ %i.eo, %bb.ap ]
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  store ptr %i.ew, ptr %i.en, align 8, !tbaa !935
  br label %bb.aw

bb.av:                                            ; preds = %.lr.ph14
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aw:                                            ; preds = %bb.ao, %bb.au
  %i.ey = phi ptr [ %.pre19, %bb.au ], [ %.pre20, %bb.ao ] ; 2 uses
  %.1 = phi i64 [ %i.eg, %bb.au ], [ %.013, %bb.ao ]
  %i.ez = add i64 %.1, 1                          ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !935
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !937 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2
  %i.fh = icmp ult i64 %i.ez, %i.fg
  br i1 %i.fh, label %.lr.ph14, label %._crit_edge15, !llvm.loop !955

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.fk, align 8, !tbaa !38
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !40
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #25, !inline_history !120
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fn, %bb.ba ], [ %i.fx, %bb.bb ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fy, label %bb.bc, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ay, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 4 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 4294967297
  %i.ge = trunc i64 %i.gc to i32                  ; 2 uses
  br i1 %i.gd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.gb, align 8, !tbaa !38
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !40
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !35
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25, !inline_history !121
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gn = add nsw i32 %i.ge, -1
  store i32 %i.gn, ptr %i.gb, align 8, !tbaa !3
end_hunk_7
begin_hunk_8_@_ZN6duckdb12_GLOBAL__N_128HistogramBinFinalizeFunctionINS_16HistogramFunctorEdEEvRNS_6VectorERNS_18AggregateInputDataES4_mm:bb.a
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hu, align 8, !tbaa !38
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !40
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !35
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #25, !inline_history !121
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !35
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bi:                                            ; preds = %bb.bg
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hx, %bb.bh ], [ %i.ih, %bb.bi ]
  %i.ii = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ii, label %bb.bj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !42

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.bk:                                            ; preds = %bb.aw, %._crit_edge133
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %bb.y, %bb.aa, %bb.bk, %bb.at, %bb.ag, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.o
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %bb.at ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %.pn10.i, %bb.am ], [ %i.ax, %bb.r ], [ %i.cl, %bb.y ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.ij, %bb.bk ], [ %i.dj, %bb.ag ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.g ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateDestroyINS_12_GLOBAL__N_117HistogramBinStateIdEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIdEEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn10.i.i.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn9.i.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIdEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIdEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIdEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIdEEEEvRT_RNS_18AggregateInputDataE.exit.i
  %.01.i = phi i64 [ %i.u, %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIdEEEEvRT_RNS_18AggregateInputDataE.exit.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIdEEEEPT_RNS_6VectorE.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !967  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !969  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !981  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i:              ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  store ptr null, ptr %i.o, align 8, !tbaa !969
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !977  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIdEEEEvRT_RNS_18AggregateInputDataE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.m, %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  store ptr null, ptr %i.r, align 8, !tbaa !977
  br label %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIdEEEEvRT_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIdEEEEvRT_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, %bb.k
  %i.u = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIdEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !996

_ZN6duckdb17AggregateExecutor7DestroyINS_12_GLOBAL__N_117HistogramBinStateIdEENS2_20HistogramBinFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120HistogramBinFunction7DestroyINS0_17HistogramBinStateIdEEEEvRT_RNS_18AggregateInputDataE.exit.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_117HistogramBinStateIdEEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIdE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !969
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !977
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %4, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.j, %bb.d ], [ %3, %bb.c ]   ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.l, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %.not.i63 = icmp eq ptr %i.n, null
  br i1 %.not.i63, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.o = lshr i64 %i.k, 6
  %i.p = and i64 %i.k, 63
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = shl nuw i64 1, %i.p
  %i.t = and i64 %i.r, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.by unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.047 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.047, label %bb.k, label %bb.bx

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #25
  br label %bb.bx

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ad = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.w

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !969   ; 4 uses
  %i.af = icmp ugt i64 %.sroa.6.0.copyload, 1152921504606846975
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !997
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !981 ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ult i64 %i.am, %.sroa.6.0.copyload
  br i1 %i.an, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !979
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = shl nuw nsw i64 %.sroa.6.0.copyload, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc64 unwind label %bb.w   ; 4 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit.thread

_ZNSt6vectorIdSaIdEE7reserveEm.exit.thread:       ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !981
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !979
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !997
  br label %.lr.ph

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %bb.p
  %.not16 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit.thread, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17 = load ptr, ptr %7, align 8, !tbaa !122
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !969   ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !974 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !974 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = xor i64 %i.bi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %i.bj)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ba, ptr %i.bc)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc65
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !969 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8
  %.pre17.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !979
  %.pre18 = load ptr, ptr %.pre.a, align 8, !tbaa !981
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge, %._crit_edge
  %i.bk = phi ptr [ %.pre18, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.bl = phi ptr [ %.pre17.a, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge ], [ %i.ba, %._crit_edge ]
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ugt i64 %i.bo, 8
  br i1 %i.bp, label %.lr.ph14, label %._crit_edge15

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.u:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.v:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.w:                                             ; preds = %bb.al, %.noexc65, %bb.s, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %10 = phi ptr [ %.pre17, %.lr.ph ], [ %12, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ]
  %.04912 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %i.bu = add i64 %.04912, %.sroa.016.0.copyload  ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !123  ; 2 uses
  %.not.i67 = icmp eq ptr %i.bv, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.bz = phi i64 [ %i.by, %bb.y ], [ %i.bu, %bb.x ] ; 2 uses
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.ca, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cb = lshr i64 %i.bz, 6
  %i.cc = and i64 %i.bz, 63
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !47
  %i.cf = shl nuw i64 1, %i.cc
  %i.cg = and i64 %i.ce, %i.cf
  %.not11 = icmp eq i64 %i.cg, 0
  br i1 %.not11, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.by unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ck = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.ck) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.045, label %bb.ad, label %bb.bv

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn519 = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.ch) #25
  br label %bb.bv

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cn = load ptr, ptr %0, align 8, !tbaa !969   ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.co = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.cp = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bu
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc76
  %i.cu = phi i64 [ %i.ct, %bb.ae ], [ %i.bu, %.noexc76 ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !972 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !979 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !997
  %.not.i.i77 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store double %i.cw, ptr %i.cy, align 8, !tbaa !972
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !979
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.ah:                                            ; preds = %bb.af
  %i.dc = load ptr, ptr %i.cn, align 8, !tbaa !981 ; 4 uses
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 5 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.ai, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #26
          to label %.noexc79 unwind label %.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.df ; 2 uses
  store double %i.cw, ptr %i.do, align 8, !tbaa !972
  %i.dp = icmp sgt i64 %i.df, 0
  br i1 %i.dp, label %bb.aj, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.dc, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc79
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !122
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %11 = phi ptr [ %.pre, %bb.ak ], [ %i.cp, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.dn, ptr %i.cn, align 8, !tbaa !981
  store ptr %i.dq, ptr %i.cx, align 8, !tbaa !979
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.dr, ptr %i.cz, align 8, !tbaa !997
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.ag
  %12 = phi ptr [ %11, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.cp, %bb.ag ]
  %i.ds = add nuw i64 %.04912, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !998

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

._crit_edge15:                                    ; preds = %bb.aw, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !977 ; 3 uses
  %i.du = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !575 ; 2 uses
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !571 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.not10 = icmp ult i64 %.sroa.6.0.copyload, %i.eb
  br i1 %.not10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge15
  %i.ec = sub nuw nsw i64 %i.du, %i.eb
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 noundef %i.ec)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.am:                                            ; preds = %._crit_edge15
  %i.ed = icmp ult i64 %i.du, %i.eb
  br i1 %i.ed, label %bb.an, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.du ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.dw, %i.ee
  br i1 %.not.i.i80, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.an
  store ptr %i.ee, ptr %i.dv, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph14:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, %bb.aw
  %i.ef = phi ptr [ %i.fc, %bb.aw ], [ %i.bk, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ] ; 2 uses
  %.013 = phi i64 [ %i.ez, %bb.aw ], [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ] ; 4 uses
  %i.eg = add i64 %.013, -1                       ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.013
  %i.ej = invoke noundef zeroext i1 @_ZN6duckdb6Equals9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %.lr.ph14
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !969 ; 6 uses
  br i1 %i.ej, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.ek = load ptr, ptr %.pre20, align 8, !tbaa !974
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %.013 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.pre20, i64 8 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !974 ; 5 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.em, %i.eo
  br i1 %.not.i.i.i.i82, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp sgt i64 %i.er, 8
  br i1 %i.es, label %bb.ar, label %bb.as, !prof !402

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.el, ptr nonnull align 8 %i.em, i64 %i.er, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.en, align 8, !tbaa !979
  %.pre19.pre = load ptr, ptr %0, align 8, !tbaa !969
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.et = icmp eq i64 %i.er, 8
  br i1 %i.et, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eu = load double, ptr %i.em, align 8, !tbaa !972
  store double %i.eu, ptr %i.el, align 8, !tbaa !972
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.pre19 = phi ptr [ %.pre20, %bb.at ], [ %.pre20, %bb.as ], [ %.pre19.pre, %bb.ar ], [ %.pre20, %bb.ap ]
  %i.ev = phi ptr [ %i.eo, %bb.at ], [ %i.eo, %bb.as ], [ %.pre.i.i.i.i, %bb.ar ], [ %i.eo, %bb.ap ]
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8
  store ptr %i.ew, ptr %i.en, align 8, !tbaa !979
  br label %bb.aw

bb.av:                                            ; preds = %.lr.ph14
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aw:                                            ; preds = %bb.ao, %bb.au
  %i.ey = phi ptr [ %.pre19, %bb.au ], [ %.pre20, %bb.ao ] ; 2 uses
  %.1 = phi i64 [ %i.eg, %bb.au ], [ %.013, %bb.ao ]
  %i.ez = add i64 %.1, 1                          ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !979
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !981 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3
  %i.fh = icmp ult i64 %i.ez, %i.fg
  br i1 %i.fh, label %.lr.ph14, label %._crit_edge15, !llvm.loop !999

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.an, %bb.am, %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.fk, align 8, !tbaa !38
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !40
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #25, !inline_history !120
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fn, %bb.ba ], [ %i.fx, %bb.bb ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fy, label %bb.bc, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !42

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ay, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 4 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 4294967297
  %i.ge = trunc i64 %i.gc to i32                  ; 2 uses
  br i1 %i.gd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.gb, align 8, !tbaa !38
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !40
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !35
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25, !inline_history !121
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25, !inline_history !121
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gn = add nsw i32 %i.ge, -1
  store i32 %i.gn, ptr %i.gb, align 8, !tbaa !3
end_hunk_8
