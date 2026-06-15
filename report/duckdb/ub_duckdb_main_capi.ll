inline.NumInlined: 10466
inline.NumDeleted: 4631
begin_hunk_0_@duckdb_register_aggregate_function:bb.a

bb.m:                                             ; preds = %bb.k
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i18 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.n ], [ %i.bf, %bb.o ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.p, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !24

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #36, !inline_history !153
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE11AddFunctionES1_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #36, !inline_history !153
  %i.bh = invoke i32 @duckdb_register_aggregate_function_set(ptr noundef nonnull %0, ptr noundef nonnull %2)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !154 ; 3 uses
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.q ] ; 3 uses
  %i.bl = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !11
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(368) %.05.i.i.i.i) #36, !inline_history !155
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 368 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.bn, %i.bk
  br i1 %.not.i.i.i.i19, label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !156

_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bi, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.q
  %i.bo = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bj, %bb.q ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #38
  br label %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit.i: ; preds = %bb.r, %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bp = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bp) #38
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev.exit

_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.e
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bt) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6duckdb17AggregateFunctionD2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.j, %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %4) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bw, %bb.u ]
  call void @_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bs, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn

bb.w:                                             ; preds = %bb.a, %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev.exit
  %.011 = phi i32 [ %i.bh, %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.011
}

declare void @_ZN6duckdb20AggregateFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !104
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !157
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !157
  br label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236) %0) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @duckdb_register_aggregate_function_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::function.129", align 8 ; 12 uses
  %i.e = icmp ne ptr %0, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !154
  %.not4052.not = icmp eq ptr %i.i, %i.j
  br i1 %.not4052.not, label %.critedge41, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader, %._crit_edge
  %.03153 = phi i64 [ %i.z, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.k = call noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_17AggregateFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.03153) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  %i.m = call noundef ptr @_ZNK6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.critedge, label %6

6:                                                ; preds = %.lr.ph54
  %7 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.critedge, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %.not38 = icmp eq ptr %11, null
  br i1 %.not38, label %.critedge, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %.not39 = icmp eq ptr %14, null
  br i1 %.not39, label %.critedge, label %bb.b

bb.b:                                             ; preds = %12
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.c, ptr %4, align 8, !tbaa !147
  %i.r = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.r, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 3, ptr %i.b, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.b, ptr %3, align 8, !tbaa !147
  %i.s = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159  ; 2 uses
  %.not4850 = icmp eq ptr %i.u, %i.w
  br i1 %.not4850, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.045.051, i64 24 ; 2 uses
  %.not48 = icmp eq ptr %i.x, %i.w
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.045.051 = phi ptr [ %i.x, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.a, ptr %2, align 8, !tbaa !147
  %i.y = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.045.051, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.y, label %.critedge, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.z = add nuw i64 %.03153, 1                   ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !154
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 368
  %.not40 = icmp ult i64 %i.z, %i.af
  br i1 %.not40, label %.lr.ph54, label %.critedge41, !llvm.loop !160

.critedge41:                                      ; preds = %._crit_edge, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store ptr %0, ptr %i.d, align 8, !tbaa !161
  %i.ag = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13ClientContextELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.critedge41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %5, align 8, !tbaa !163
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !166
  store ptr @"_ZNSt17_Function_handlerIFvvEZ38duckdb_register_aggregate_function_setE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ai, align 8, !tbaa !168
  store ptr @"_ZNSt17_Function_handlerIFvvEZ38duckdb_register_aggregate_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.ah, align 8, !tbaa !171
  invoke void @_ZN6duckdb13ClientContext24RunFunctionInTransactionERKSt8functionIFvvEEb(ptr noundef nonnull align 8 dereferenceable(512) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %.critedge

bb.j:                                             ; preds = %.critedge41
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i42, label %_ZNSt14_Function_baseD2Ev.exit43, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit43 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit43:                 ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit43, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %_ZNSt14_Function_baseD2Ev.exit43 ], [ %i.an, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.at = call ptr @__cxa_begin_catch(ptr %.0) #36 ; 0 uses
  call void @__cxa_end_catch()
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %6, %9, %12, %.lr.ph54, %.lr.ph, %bb.n, %_ZNSt14_Function_baseD2Ev.exit, %bb.a
  %.7 = phi i32 [ 1, %bb.a ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ 1, %bb.n ], [ 1, %.lr.ph ], [ 1, %.lr.ph54 ], [ 1, %12 ], [ 1, %9 ], [ 1, %6 ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.7
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !11
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(368) %.05.i.i.i) #36, !inline_history !172
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 368 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !156

_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #38
  br label %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb17AggregateFunctionES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_aggregate_function_set_special_handling(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.a, align 1, !tbaa !173
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_aggregate_function_set_extra_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %1, ptr %i.e, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %2, ptr %i.f, align 8, !tbaa !175
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_Z24GetCAggregateExecuteInfoP21_duckdb_function_info(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_aggregate_function_get_extra_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !176, !nonnull !41, !align !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @duckdb_aggregate_function_set_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.d) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.f, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @duckdb_create_aggregate_function_set(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !35
  %.not9 = icmp eq i8 %i.b, 0
  br i1 %.not9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %bb.d unwind label %bb.i       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !33
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.e, ptr %i.a, align 8, !tbaa !110
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.j   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i
  store ptr %i.g, ptr %1, align 8, !tbaa !25
  %i.h = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.h, ptr %i.d, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc10, %bb.d
  %i.i = phi ptr [ %i.g, %.noexc10 ], [ %i.d, %bb.d ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = load ptr, ptr %1, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  invoke void @_ZN6duckdb20AggregateFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.k:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
end_hunk_0
begin_hunk_1_@duckdb_create_scalar_function:._crit_edge.i.i
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !1071
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.ab, -1
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !3, !noalias !1071
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4, !noalias !1071
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb15make_shared_ptrINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i, !prof !24

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #36, !noalias !1071
  br label %_ZN6duckdb15make_shared_ptrINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i

_ZN6duckdb15make_shared_ptrINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.v, ptr %i.am, align 8, !tbaa !1073
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108 ; 8 uses
  store ptr %i.s, ptr %i.an, align 8, !tbaa !108
  %.not.i.i.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb14ScalarFunction20SetExtraFunctionInfoINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEEvDpOT0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ap, align 8, !tbaa !97
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !104
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #36, !inline_history !1074
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #36, !inline_history !1074
  br label %_ZN6duckdb14ScalarFunction20SetExtraFunctionInfoINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEEvDpOT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.as, %bb.q ], [ %i.bc, %bb.r ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.s, label %_ZN6duckdb14ScalarFunction20SetExtraFunctionInfoINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEEvDpOT0_.exit, !prof !24

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #36
  br label %_ZN6duckdb14ScalarFunction20SetExtraFunctionInfoINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEEvDpOT0_.exit

_ZN6duckdb14ScalarFunction20SetExtraFunctionInfoINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEEvDpOT0_.exit: ; preds = %_ZN6duckdb15make_shared_ptrINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s
  ret ptr %i.a

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.bf, %bb.u ]
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !171 ; 2 uses
  %.not.i11 = icmp eq ptr %i.bh, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %bb.w, %bb.x
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #36
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit12, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit12 ], [ %i.be, %bb.t ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #36
  %i.bl = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.b
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.bl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @_ZdlPv(ptr noundef nonnull %i.a) #38
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118CAPIScalarFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.539", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::(anonymous namespace)::CScalarFunctionInternalFunctionInfo", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1075, !nonnull !41, !align !87
  %i.c = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1091
  store ptr %i.g, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.h = load ptr, ptr %3, align 8, !tbaa !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.i = call noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  call void @_ZN6duckdb9DataChunk7FlattenEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.e, ptr %4, align 8, !tbaa !1093
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !1095
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !1097
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.n, align 8, !tbaa !34
  store i8 0, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1099, !nonnull !41, !align !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1102
  invoke void %i.r(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.k, align 8, !tbaa !1097, !range !40, !noundef !41
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.l unwind label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #36
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !43
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %5

5:                                                ; preds = %bb.h
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %7 = load i8, ptr %6, align 8, !tbaa !1105
  %.not = icmp eq i8 %7, 1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %5, %bb.h
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i, %5, %bb.g
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.m
  br i1 %i.ab, label %_ZN6duckdb12_GLOBAL__N_135CScalarFunctionInternalFunctionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.aa) #38
  br label %_ZN6duckdb12_GLOBAL__N_135CScalarFunctionInternalFunctionInfoD2Ev.exit

_ZN6duckdb12_GLOBAL__N_135CScalarFunctionInternalFunctionInfoD2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.k:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.w, %bb.f ]
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.m
  br i1 %i.ad, label %_ZN6duckdb12_GLOBAL__N_135CScalarFunctionInternalFunctionInfoD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ac) #38
  br label %_ZN6duckdb12_GLOBAL__N_135CScalarFunctionInternalFunctionInfoD2Ev.exit23

_ZN6duckdb12_GLOBAL__N_135CScalarFunctionInternalFunctionInfoD2Ev.exit23: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119CScalarFunctionBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::(anonymous namespace)::CScalarFunctionInternalBindInfo", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35, !noalias !1106, !inline_history !1109 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataE, i64 16), ptr %i.c, align 8, !tbaa !11, !noalias !1106
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !1110, !noalias !1106
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !1106
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1111 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit18, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %1, ptr %4, align 8, !tbaa !569
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.h, align 8, !tbaa !1112
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.i, align 8, !tbaa !1114
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %i.j, align 8, !tbaa !1093
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !1116
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !34
  store i8 0, ptr %i.m, align 8, !tbaa !35
  invoke void %i.g(ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.k, align 8, !tbaa !1116, !range !40, !noundef !41
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #36
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.m
  br i1 %i.u, label %_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalBindInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.t) #38
  br label %_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalBindInfoD2Ev.exit

_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalBindInfoD2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit18

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.s, %bb.g ]
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.m
  br i1 %i.w, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.v) #38
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #36, !inline_history !1118
  resume { ptr, i32 } %.pn

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit18: ; preds = %bb.a, %_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalBindInfoD2Ev.exit
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  ret void

bb.j:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN6duckdb14ScalarFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISL_ELb1EEERNS_13ClientContextERS0_RNS7_INSK_INS_10ExpressionESM_ISS_ELb1EEELb1ESaISU_EEEEPFSO_RNS_23ScalarFunctionBindInputESR_SX_EPFNSK_INS_14BaseStatisticsESM_IS14_ELb1EEESQ_RNS_23FunctionStatisticsInputEEPFNSK_INS_18FunctionLocalStateESM_IS1B_ELb1EEESF_RKNS_23BoundFunctionExpressionEPSL_ES8_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS8_SQ_RKSA_mE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119CScalarFunctionInitERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.1114") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(481) %2, ptr noundef %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::(anonymous namespace)::CScalarFunctionInternalInitInfo", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35, !noalias !1119 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 16, i1 false), !noalias !1119
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateE, i64 16), ptr %i.c, align 8, !tbaa !11, !noalias !1119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !1122, !noalias !1119
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1125
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateESt14default_deleteIS2_EED2Ev.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb15ExpressionState10GetContextEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.g, ptr %4, align 8, !tbaa !569
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.h, align 8, !tbaa !1093
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.i, align 8, !tbaa !1095
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 1, ptr %i.j, align 8, !tbaa !1126
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !34
  store i8 0, ptr %i.l, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1125
  invoke void %i.n(ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.j, align 8, !tbaa !1126, !range !40, !noundef !41
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.l unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #36
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.l
  br i1 %i.v, label %_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalInitInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.u) #38
  br label %_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalInitInfoD2Ev.exit

_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalInitInfoD2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateESt14default_deleteIS2_EED2Ev.exit23

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.l
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.w) #38
  br label %.body

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateESt14default_deleteIS2_EED2Ev.exit: ; preds = %.body, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn, %.body ]
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #36, !inline_history !1128
  resume { ptr, i32 } %.pn.pn.pn.pn

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateESt14default_deleteIS2_EED2Ev.exit23: ; preds = %bb.a, %_ZN6duckdb12_GLOBAL__N_131CScalarFunctionInternalInitInfoD2Ev.exit
  store ptr %i.c, ptr %0, align 8, !tbaa !1129
  ret void

bb.l:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @duckdb_destroy_scalar_function(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1131   ; 3 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(360) %i.a) #36
  store ptr null, ptr %0, align 8, !tbaa !1131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_set_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @duckdb_scalar_function_set_varargs(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %1, align 8, !tbaa !145
  store i8 %i.e, ptr %i.c, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.g, ptr %i.h, align 1, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !147
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108  ; 8 uses
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !147
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.u, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !104
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36, !inline_history !1133
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36, !inline_history !1133
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.j ], [ %i.ah, %bb.k ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.l, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !24

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_scalar_function_set_special_handling(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.a, align 1, !tbaa !173
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_scalar_function_set_volatile(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.a, align 8, !tbaa !1105
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_add_parameter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.h, ptr %i.c, align 8, !tbaa !95
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_set_return_type(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, label %bb.b

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i8, ptr %2, align 8, !tbaa !145
  store i8 %i.d, ptr %i.c, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 %i.f, ptr %i.g, align 1, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !147
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !147
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !147
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !147
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #36
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_scalar_function_get_extra_info(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1134, !nonnull !41, !align !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1099, !nonnull !41, !align !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1135
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_scalar_function_bind_get_extra_info(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1136, !nonnull !41, !align !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1099, !nonnull !41, !align !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1135
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_scalar_function_get_bind_data(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1134, !nonnull !41, !align !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1137
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_get_client_context(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1138, !nonnull !41, !align !87
  store ptr %i.d, ptr %i.c, align 8, !tbaa !569
  store ptr %i.c, ptr %1, align 8, !tbaa !570
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_set_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !1097
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_bind_set_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.h, align 8, !tbaa !1116
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -1152921504606846976, 1152921504606846976) i64 @duckdb_scalar_function_bind_get_argument_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1139, !nonnull !41, !align !87 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1140
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1143
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @duckdb_scalar_function_bind_get_argument(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.816", align 8 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %duckdb_scalar_function_bind_get_argument_count.exit

duckdb_scalar_function_bind_get_argument_count.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1139, !nonnull !41, !align !87 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1140
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1143
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %.not10 = icmp ult i64 %1, %i.i
  br i1 %.not10, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.b

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %duckdb_scalar_function_bind_get_argument_count.exit
  %i.j = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  %i.l = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.816") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %i.l)
  %i.p = load ptr, ptr %2, align 8, !tbaa !619
  store ptr %i.p, ptr %i.j, align 8, !tbaa !619
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %duckdb_scalar_function_bind_get_argument_count.exit, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %.0 = phi ptr [ %i.j, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit ], [ null, %duckdb_scalar_function_bind_get_argument_count.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1140
  %i.e = load ptr, ptr %0, align 8, !tbaa !1143   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !110
  store i64 %i.i, ptr %i.b, align 8, !tbaa !110
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_set_extra_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %1, ptr %i.e, align 8, !tbaa !1135
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.f, align 8, !tbaa !1144
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_set_bind(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !1111
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @duckdb_scalar_function_set_bind_data(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1136, !nonnull !41, !align !87 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !1137
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %2, ptr %i.d, align 8, !tbaa !1145
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @duckdb_scalar_function_set_bind_data_copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1136, !nonnull !41, !align !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !1146
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_set_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %i.e, align 8, !tbaa !1102
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_scalar_function_get_state(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1147, !nonnull !41, !align !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1148
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_set_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !1125
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_init_set_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !1126
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @duckdb_scalar_function_init_set_state(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1149, !nonnull !41, !align !87 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !1148
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !1122
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_scalar_function_init_get_client_context(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1150, !nonnull !41, !align !87
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !569
  store ptr %i.d, ptr %1, align 8, !tbaa !570
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_scalar_function_init_get_bind_data(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151, !nonnull !41, !align !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1137
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_scalar_function_init_get_extra_info(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151, !nonnull !41, !align !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1099, !nonnull !41, !align !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1135
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @duckdb_register_scalar_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.duckdb::ScalarFunctionSet", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::ScalarFunction", align 8 ; 14 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.h, ptr %i.a, align 8, !tbaa !110
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.k, ptr %i.e, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !35
  store i8 %i.m, ptr %i.l, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = load ptr, ptr %3, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.aa

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %4, ptr noundef nonnull align 8 dereferenceable(360) %1)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %4, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.z = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.aa = load <2 x ptr>, ptr %i.w, align 8, !tbaa !147
  store <2 x ptr> %i.aa, ptr %i.u, align 8, !tbaa !147
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %.body.i unwind label %bb.j    ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #39
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i: ; preds = %bb.g, %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 344 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !108 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !147
  store <2 x ptr> %i.an, ptr %i.ai, align 8, !tbaa !147
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !3
  br label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit

end_hunk_1
begin_hunk_2_@duckdb_register_scalar_function:bb.a
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #39, !inline_history !1158
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.w
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #36, !inline_history !1158
  %i.ce = invoke i32 @duckdb_register_scalar_function_set(ptr noundef nonnull %0, ptr noundef nonnull %2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1159 ; 3 uses
  %i.ch = load ptr, ptr %i.at, align 8, !tbaa !1152 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.cg, %bb.y ] ; 3 uses
  %i.ci = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !11
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i.i.i) #36, !inline_history !1160
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ck, %i.ch
  br i1 %.not.i.i.i.i20, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1161

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.cf, align 8, !tbaa !1159
  br label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.y
  %i.cl = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cg, %bb.y ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #38
  br label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i: ; preds = %bb.z, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cm = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.cm) #38
  br label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit

_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.ad

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.e
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.cq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.p, %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #36
  br label %.body

.body:                                            ; preds = %bb.ab, %.body.i, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.ac ], [ %i.cs, %bb.ab ], [ %i.ab, %.body.i ]
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.cp, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn

bb.ad:                                            ; preds = %bb.a, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit
  %.011 = phi i32 [ %i.ce, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.011
}

declare void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !104
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !1162
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !1162
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, %bb.h
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236) %0) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @duckdb_register_scalar_function_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::function.129", align 8 ; 12 uses
  %i.e = icmp ne ptr %0, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1152
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1159
  %.not3648.not = icmp eq ptr %i.i, %i.j
  br i1 %.not3648.not, label %.critedge37, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader, %._crit_edge
  %.02949 = phi i64 [ %i.z, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.k = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN6duckdb6vectorINS_14ScalarFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.02949) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 344
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.critedge, label %6

6:                                                ; preds = %.lr.ph50
  %7 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !1102
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %6
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.c, ptr %4, align 8, !tbaa !147
  %i.r = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.r, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 3, ptr %i.b, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.b, ptr %3, align 8, !tbaa !147
  %i.s = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159  ; 2 uses
  %.not4446 = icmp eq ptr %i.u, %i.w
  br i1 %.not4446, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.041.047, i64 24 ; 2 uses
  %.not44 = icmp eq ptr %i.x, %i.w
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.041.047 = phi ptr [ %i.x, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.a, ptr %2, align 8, !tbaa !147
  %i.y = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.041.047, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.y, label %.critedge, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.z = add nuw i64 %.02949, 1                   ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !1152
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1159
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 360
  %.not36 = icmp ult i64 %i.z, %i.af
  br i1 %.not36, label %.lr.ph50, label %.critedge37, !llvm.loop !1163

.critedge37:                                      ; preds = %._crit_edge, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store ptr %0, ptr %i.d, align 8, !tbaa !161
  %i.ag = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13ClientContextELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.critedge37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %5, align 8, !tbaa !163
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1164
  store ptr @"_ZNSt17_Function_handlerIFvvEZ35duckdb_register_scalar_function_setE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ai, align 8, !tbaa !168
  store ptr @"_ZNSt17_Function_handlerIFvvEZ35duckdb_register_scalar_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.ah, align 8, !tbaa !171
  invoke void @_ZN6duckdb13ClientContext24RunFunctionInTransactionERKSt8functionIFvvEEb(ptr noundef nonnull align 8 dereferenceable(512) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %.critedge

bb.j:                                             ; preds = %.critedge37
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  %.not.i38 = icmp eq ptr %i.ap, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit39 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit39:                 ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit39, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %_ZNSt14_Function_baseD2Ev.exit39 ], [ %i.an, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.at = call ptr @__cxa_begin_catch(ptr %.0) #36 ; 0 uses
  call void @__cxa_end_catch()
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %6, %.lr.ph50, %.lr.ph, %bb.n, %_ZNSt14_Function_baseD2Ev.exit, %bb.a
  %.7 = phi i32 [ 1, %bb.a ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ 1, %bb.n ], [ 1, %.lr.ph ], [ 1, %.lr.ph50 ], [ 1, %6 ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.7
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1159 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1152 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !11
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i.i) #36, !inline_history !1166
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1161

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !1159
  br label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #38
  br label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @duckdb_create_scalar_function_set(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !35
  %.not10 = icmp eq i8 %i.b, 0
  br i1 %.not10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !33
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.e, ptr %i.a, align 8, !tbaa !110
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.h   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i
  store ptr %i.g, ptr %1, align 8, !tbaa !25
  %i.h = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.h, ptr %i.d, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc12, %bb.c
  %i.i = phi ptr [ %i.g, %.noexc12 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = load ptr, ptr %1, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.s) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.r, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %i.c) #38
  resume { ptr, i32 } %.pn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a, %bb.b
  %.08 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.g ]
  ret ptr %.08
}

; Function Attrs: mustprogress nounwind uwtable
define void @duckdb_destroy_scalar_function_set(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1167   ; 6 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1159 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1152 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !11
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i.i.i) #36, !inline_history !1160
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1161

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !1159
  br label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #38
  br label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %i.j) #38
  br label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit

_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #38
  store ptr null, ptr %0, align 8, !tbaa !1167
  br label %bb.e

end_hunk_2
begin_hunk_3_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev:bb.a

; Function Attrs: mustprogress uwtable
define void @duckdb_table_function_set_extra_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %1, ptr %i.c, align 8, !tbaa !1300
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %2, ptr %i.d, align 8, !tbaa !1301
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1302   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_17TableFunctionInfoELb1EE13AssertNotNullEb.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_17TableFunctionInfoELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @duckdb_table_function_set_bind(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !1266
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_table_function_set_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !1282
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_table_function_set_local_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %i.e, align 8, !tbaa !1289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_table_function_set_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %1, ptr %i.e, align 8, !tbaa !1231
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_table_function_supports_projection_pushdown(ptr nofree noundef writeonly captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 513
  store i8 %i.a, ptr %i.b, align 1, !tbaa !1303
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @duckdb_register_table_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::function.129", align 8 ; 12 uses
  %i.d = icmp ne ptr %0, null
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store ptr %0, ptr %i.c, align 8, !tbaa !161
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.g = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.loopexit, label %5

5:                                                ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !1266
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.loopexit, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !1282
  %.not29 = icmp eq ptr %10, null
  br i1 %.not29, label %.loopexit, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !1231
  %.not30 = icmp eq ptr %13, null
  br i1 %.not30, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.040.0.in = phi ptr [ %i.k, %bb.c ], [ %.sroa.040.0, %bb.e ]
  %.sroa.040.0 = load ptr, ptr %.sroa.040.0.in, align 8, !tbaa !199 ; 3 uses
  %.not42 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not42, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.b, ptr %3, align 8, !tbaa !147
  %i.m = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.m, label %.loopexit, label %bb.d, !llvm.loop !1304

.critedge:                                        ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 2 uses
  %.not4345 = icmp eq ptr %i.o, %i.q
  br i1 %.not4345, label %.critedge32, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.036.046, i64 24 ; 2 uses
  %.not43 = icmp eq ptr %i.r, %i.q
  br i1 %.not43, label %.critedge32, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %.sroa.036.046 = phi ptr [ %i.r, %bb.f ], [ %i.o, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.a, ptr %2, align 8, !tbaa !147
  %i.s = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.036.046, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %.loopexit, label %bb.f

.critedge32:                                      ; preds = %bb.f, %.critedge
  %i.t = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13ClientContextELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %.critedge32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %4, align 8, !tbaa !163
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1305
  store ptr @"_ZNSt17_Function_handlerIFvvEZ30duckdb_register_table_functionE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.v, align 8, !tbaa !168
  store ptr @"_ZNSt17_Function_handlerIFvvEZ30duckdb_register_table_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.u, align 8, !tbaa !171
  invoke void @_ZN6duckdb13ClientContext24RunFunctionInTransactionERKSt8functionIFvvEEb(ptr noundef nonnull align 8 dereferenceable(512) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.loopexit

bb.k:                                             ; preds = %.critedge32
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !171 ; 2 uses
  %.not.i33 = icmp eq ptr %i.ac, null
  br i1 %.not.i33, label %_ZNSt14_Function_baseD2Ev.exit34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit34 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit34:                 ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit34, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ab, %_ZNSt14_Function_baseD2Ev.exit34 ], [ %i.aa, %bb.k ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ag = call ptr @__cxa_begin_catch(ptr %.0) #36 ; 0 uses
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %bb.b, %5, %8, %11, %_ZNSt14_Function_baseD2Ev.exit, %bb.o
  %.4 = phi i32 [ 1, %bb.b ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ 1, %bb.o ], [ 1, %.lr.ph ], [ 1, %11 ], [ 1, %8 ], [ 1, %5 ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %.loopexit
  %.5 = phi i32 [ %.4, %.loopexit ], [ 1, %bb.a ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_bind_get_extra_info(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1306, !nonnull !41, !align !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1300
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @duckdb_table_function_get_client_context(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1307, !nonnull !41, !align !87
  store ptr %i.d, ptr %i.c, align 8, !tbaa !569
  store ptr %i.c, ptr %1, align 8, !tbaa !570
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_bind_add_result_column(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.1321, align 8           ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.anon.1321, align 8           ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = icmp ne ptr %0, null
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.e
  %i.f = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.b, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.c, ptr %4, align 8, !tbaa !147
  %i.g = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.g, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 3, ptr %i.b, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.b, ptr %3, align 8, !tbaa !147
  %i.h = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.h, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1308, !nonnull !41, !align !87 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !33
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.l, ptr %i.a, align 8, !tbaa !110
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !25
  %i.o = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.o, ptr %i.k, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.q, ptr %i.p, align 1, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %1, i64 %i.l, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !34
  %i.t = load ptr, ptr %5, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !206  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !209
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !33
  %i.aa = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !34  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !25
  %i.af = load i64, ptr %i.k, align 8, !tbaa !35
  store i64 %i.af, ptr %i.z, align 8, !tbaa !35
  %.pre = load i64, ptr %i.s, align 8, !tbaa !34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ac, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !34
  store ptr %i.k, ptr %5, align 8, !tbaa !25
  store i64 0, ptr %i.s, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !206
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !206
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.j
  %.pre25 = load ptr, ptr %5, align 8, !tbaa !25  ; 2 uses
  %i.ak = icmp eq ptr %.pre25, %i.k
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %.pre25) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1309, !nonnull !41, !align !87 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.an, align 8, !tbaa !95
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.l, %bb.k, %bb.c, %bb.b, %bb.a
end_hunk_3
begin_hunk_4_@duckdb_create_config_option:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #35 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !34
  store i8 0, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.g ], [ %i.g, %bb.d ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.j) #38
  br label %.body

bb.i:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #36
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 2, ptr %i.l, align 8, !tbaa !1377
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.o, align 8, !tbaa !34
  store i8 0, ptr %i.n, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret ptr %i.a

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.a) #38
  resume { ptr, i32 } %.pn.pn.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @duckdb_destroy_config_option(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1380   ; 8 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef %i.c) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #36
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #36
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6duckdb12_GLOBAL__N_113CConfigOptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #38
  br label %_ZN6duckdb12_GLOBAL__N_113CConfigOptionD2Ev.exit

_ZN6duckdb12_GLOBAL__N_113CConfigOptionD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #38
  store ptr null, ptr %0, align 8, !tbaa !1380
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %_ZN6duckdb12_GLOBAL__N_113CConfigOptionD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_config_option_set_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %1, i64 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @duckdb_config_option_set_type(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %1, align 8, !tbaa !145
  store i8 %i.e, ptr %i.c, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.g, ptr %i.h, align 1, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !147
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108  ; 8 uses
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !147
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.u, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !104
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36, !inline_history !1133
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36, !inline_history !1133
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.j ], [ %i.ah, %bb.k ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.l, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !24

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #36
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_config_option_set_default_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !145
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.c, %1
  br i1 %i.f, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %1, align 8, !tbaa !145
  store i8 %i.g, ptr %i.c, align 8, !tbaa !145
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.i, ptr %i.j, align 1, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !108  ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !147
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108  ; 8 uses
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !147
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !104
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #36, !inline_history !1133
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #36, !inline_history !1133
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !24

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #36
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.b
  %i.an = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNK6duckdb5Value13DefaultCastAsERKNS_11LogicalTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i1 noundef zeroext false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %2) #36 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit, %bb.o, %bb.p, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_config_option_set_default_scope(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %switch.idx.cast = trunc nuw i32 %switch.tableidx to i8
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %switch.offset, ptr %i.b, align 8, !tbaa !1377
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_config_option_set_description(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @duckdb_register_config_option(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !145
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13ClientContextELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16DatabaseInstanceELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = invoke noundef zeroext i1 @_ZNK6duckdb8DBConfig18HasExtensionOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.i

bb.h:                                             ; preds = %.noexc.i, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.i:                                             ; preds = %bb.g
  %i.p = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13ClientContextELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16DatabaseInstanceELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.x, ptr %i.a, align 8, !tbaa !110
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %2, align 8, !tbaa !25
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.k
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %bb.k ] ; 2 uses
  switch i64 %i.x, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !35
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !35
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !34
  %i.af = load ptr, ptr %2, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.o unwind label %bb.q

end_hunk_4
begin_hunk_5_@_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN6duckdb9DataChunk7FlattenEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataD2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1137 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1145 ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #36
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1137 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1145 ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %_ZN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %_ZN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataD2Ev.exit unwind label %bb.d, !inline_history !1585

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39, !inline_history !1585
  unreachable

_ZN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #36, !inline_history !1585
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK6duckdb12_GLOBAL__N_123CScalarFunctionBindData4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1099, !nonnull !41, !align !87
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35, !noalias !1586, !inline_history !1109 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataE, i64 16), ptr %i.c, align 8, !tbaa !11, !noalias !1586
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !1110, !noalias !1586
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !1586
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1146 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1137
  %i.j = invoke noundef ptr %i.g(ptr noundef %i.i)
          to label %bb.c unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %bb.d unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit ; 0 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.e, align 8, !tbaa !1137
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1145
  %i.n = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %bb.e unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.m, ptr %i.o, align 8, !tbaa !1145
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !1146
  %i.q = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %bb.f unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.p, ptr %i.r, align 8, !tbaa !1146
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit6

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #36, !inline_history !1118
  resume { ptr, i32 } %i.s

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_EED2Ev.exit6: ; preds = %bb.a, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK6duckdb12_GLOBAL__N_123CScalarFunctionBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1099, !nonnull !41, !align !87 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1135
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1099, !nonnull !41, !align !87 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1135
  %i.i = icmp eq ptr %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1102
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1102
  %i.n = icmp eq ptr %i.k, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %i.o
}

declare noundef zeroext i1 @_ZNK6duckdb12FunctionData21SupportStatementCacheEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nofree readnone returned captures(address_is_null, ret: address, provenance) %.0.val) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %1 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_123CScalarFunctionBindDataESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %.0.val
}

declare noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb15ExpressionState10GetContextEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1148 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1122 ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #36
  ret void

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1148 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1122 ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %_ZN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %_ZN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateD2Ev.exit unwind label %bb.d, !inline_history !1589

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39, !inline_history !1589
  unreachable

_ZN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %0) #36, !inline_history !1589
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1156   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EE13AssertNotNullEb.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !104
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !1157
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !1157
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !1158
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !171  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.i, !inline_history !1158 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #39, !inline_history !1158
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.h
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) #36, !inline_history !1158
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !201
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !202  ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !684
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #37
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1267
  store ptr %i.o, ptr %.031, align 8, !tbaa !199
  store ptr %.031, ptr %i.g, align 8, !tbaa !1267
  store ptr %i.g, ptr %i.m, align 8, !tbaa !257
  %i.p = load ptr, ptr %.031, align 8, !tbaa !199
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !257
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !199
  store ptr %i.r, ptr %.031, align 8, !tbaa !199
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !257
  store ptr %.031, ptr %i.s, align 8, !tbaa !199
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1652

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !1250   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #38
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !1252
  store ptr %.0.i, ptr %0, align 8, !tbaa !1250
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !390  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !386    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #37
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2) #36
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i) #36
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i) #36
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1653

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19) #36
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i19) #36
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !1653

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #38
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !386
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !390
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !389
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m) ; 0 uses
  %i.o = icmp eq ptr %0, %1
  br i1 %i.o, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.r = load i8, ptr %i.q, align 8, !tbaa !145
  store i8 %i.r, ptr %i.p, align 8, !tbaa !145
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.t = load i8, ptr %i.s, align 1, !tbaa !146
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.t, ptr %i.u, align 1, !tbaa !146
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108  ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !147
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 8 uses
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !147
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ah, align 8, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !104
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #36, !inline_history !1133
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #36, !inline_history !1133
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.i ], [ %i.au, %bb.j ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.k, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !24

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #36
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.a, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !92     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.i = load ptr, ptr %0, align 8, !tbaa !92     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = tail call noundef ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #36
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !96

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exitthread-pre-split, %bb.c
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #38
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.u, ptr %i.g, align 8, !tbaa !144
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp sgt i64 %i.f, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.f
  %i.aa = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bj, %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bi, %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bh, %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %i.ab = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %i.ab, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = load i8, ptr %.0910.i.i.i.i.i, align 8, !tbaa !145
  store i8 %i.ac, ptr %.0811.i.i.i.i.i, align 8, !tbaa !145
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !146
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !146
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !147
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108 ; 8 uses
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !147
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.as, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !104
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #36, !inline_history !1654
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #36, !inline_history !1654
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i5.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.n ], [ %i.bf, %bb.o ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.p, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i, !prof !24

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #36
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i

_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i:   ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.l, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.bj = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, !llvm.loop !1655

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit: ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !159
end_hunk_6
begin_hunk_7_@"_ZNSt17_Function_handlerIFvvEZ35duckdb_register_scalar_function_setE3$_0E9_M_invokeERKSt9_Any_data":bb.a
_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.e
  %i.ae = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #38
  br label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.f, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !25  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %"_ZSt10__invoke_rIvRZ35duckdb_register_scalar_function_setE3$_0JEENSt9enable_ifIXsr7is_voidIT_EE5valueES3_E4typeEOT0_DpOT1_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.af) #38
  br label %"_ZSt10__invoke_rIvRZ35duckdb_register_scalar_function_setE3$_0JEENSt9enable_ifIXsr7is_voidIT_EE5valueES3_E4typeEOT0_DpOT1_.exit"

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #36
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb24CreateScalarFunctionInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(464) %1) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ai, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rIvRZ35duckdb_register_scalar_function_setE3$_0JEENSt9enable_ifIXsr7is_voidIT_EE5valueES3_E4typeEOT0_DpOT1_.exit": ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZN6duckdb18CreateFunctionInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(464) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZ35duckdb_register_scalar_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ35duckdb_register_scalar_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ35duckdb_register_scalar_function_setE3$_0", ptr %0, align 8, !tbaa !1697
  br label %"_ZNSt14_Function_base13_Base_managerIZ35duckdb_register_scalar_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !147
  br label %"_ZNSt14_Function_base13_Base_managerIZ35duckdb_register_scalar_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1908
  br label %"_ZNSt14_Function_base13_Base_managerIZ35duckdb_register_scalar_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ35duckdb_register_scalar_function_setE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN6duckdb24CreateScalarFunctionInfoC1ENS_17ScalarFunctionSetE(ptr noundef nonnull align 8 dereferenceable(464), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb24CreateScalarFunctionInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb24CreateScalarFunctionInfoE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1159 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1152 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !11
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i.i.i) #36, !inline_history !1160
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1161

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !1159
  br label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #38
  br label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %i.j) #38
  br label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit

_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN6duckdb18CreateFunctionInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #36
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !33
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.e, ptr %i.a, align 8, !tbaa !110
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !25
  %i.h = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.h, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = load ptr, ptr %0, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1152 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !1159 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i.i.i, label %.noexc4, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = sdiv exact i64 %i.v, 360
  %i.x = icmp ugt i64 %i.w, 25620477880152155
  br i1 %i.x, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb14ScalarFunctionEE8allocateEmPKv.exit.i.i.i.i.i, !prof !24

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb14ScalarFunctionEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #35
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIN6duckdb14ScalarFunctionEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.y, %_ZNSt15__new_allocatorIN6duckdb14ScalarFunctionEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.z, ptr %i.o, align 8, !tbaa !1159
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !1152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1154
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !1112
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !1112
  %i.af = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14ScalarFunctionESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.ad, ptr %i.ae, ptr noundef %i.z)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc4
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1159 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #38
  br label %.body

bb.g:                                             ; preds = %.noexc4
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !1152
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb14ScalarFunctionEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.ag, %bb.f ], [ %i.ag, %bb.e ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.aj) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14ScalarFunctionESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit
  %.017 = phi ptr [ %i.z, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.016 = phi ptr [ %i.y, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 7 uses
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %.017, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.08.016)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.lr.ph
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %.017, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %.017, i64 240 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 256 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 240
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !147
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !147
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.body.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i unwind label %bb.f  ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i: ; preds = %bb.c, %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.017, i64 344
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 344
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 352
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !147
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !147
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit

.body.i.i:                                        ; preds = %bb.e, %bb.d
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %.017) #36
  br label %.body

_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit: ; preds = %bb.i, %bb.h, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 360 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.017, i64 360 ; 2 uses
  %.not = icmp eq ptr %i.y, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1909

bb.j:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.h, %.body.i.i ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #36 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.017
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %2, %.body ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i, align 8, !tbaa !11
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i) #36, !inline_history !1900
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 360 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %.017
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !1161

_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %.body
  invoke void @__cxa_rethrow() #37
          to label %bb.n unwind label %bb.k

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %_ZSt10_ConstructIN6duckdb14ScalarFunctionEJRKS1_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ag

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #39
  unreachable

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb18CTableFunctionInfoESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb18CTableFunctionInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #36, !inline_history !1910
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb18CTableFunctionInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb18CTableFunctionInfoESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_7
begin_hunk_8_@bcmp
!905 = distinct !{!905, !906, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!906 = distinct !{!906, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!907 = !{!908, !908, i64 0}
!908 = !{!"short", !5, i64 0}
!909 = distinct !{!909, !60, !822, !823}
!910 = !{!"branch_weights", i32 4, i32 12}
!911 = distinct !{!911, !60, !822, !823}
!912 = distinct !{!912, !897}
!913 = distinct !{!913, !60, !822}
!914 = distinct !{!914, !60}
!915 = !{!916}
!916 = distinct !{!916, !917, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!917 = distinct !{!917, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!918 = distinct !{!918, !60, !822, !823}
!919 = distinct !{!919, !897}
!920 = distinct !{!920, !60, !822}
!921 = distinct !{!921, !60}
!922 = !{!923}
!923 = distinct !{!923, !924, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!924 = distinct !{!924, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!925 = distinct !{!925, !60}
!926 = !{!927}
!927 = distinct !{!927, !928, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!928 = distinct !{!928, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!929 = distinct !{!929, !60}
!930 = !{!931}
!931 = distinct !{!931, !932, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!932 = distinct !{!932, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!933 = distinct !{!933, !60, !822, !823}
!934 = distinct !{!934, !60, !822, !823}
!935 = distinct !{!935, !897}
!936 = distinct !{!936, !60, !822}
!937 = distinct !{!937, !60}
!938 = !{!939}
!939 = distinct !{!939, !940, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!940 = distinct !{!940, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!941 = distinct !{!941, !60, !822, !823}
!942 = distinct !{!942, !897}
!943 = distinct !{!943, !60, !822}
!944 = distinct !{!944, !60}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!947 = distinct !{!947, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!948 = distinct !{!948, !60}
!949 = !{!950}
!950 = distinct !{!950, !951, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!951 = distinct !{!951, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!952 = distinct !{!952, !60, !822, !823}
!953 = distinct !{!953, !897}
!954 = distinct !{!954, !60, !822}
!955 = distinct !{!955, !60}
!956 = !{!957}
!957 = distinct !{!957, !958, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!958 = distinct !{!958, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!959 = distinct !{!959, !60, !822, !823}
!960 = distinct !{!960, !897}
!961 = distinct !{!961, !60, !822}
!962 = distinct !{!962, !60}
!963 = !{!964}
!964 = distinct !{!964, !965, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!965 = distinct !{!965, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!966 = distinct !{!966, !60, !822, !823}
!967 = distinct !{!967, !897}
!968 = distinct !{!968, !60, !822}
!969 = distinct !{!969, !60}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!972 = distinct !{!972, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!973 = distinct !{!973, !60}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!976 = distinct !{!976, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!977 = distinct !{!977, !60}
!978 = !{!979}
!979 = distinct !{!979, !980, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!980 = distinct !{!980, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!981 = distinct !{!981, !60}
!982 = !{!983}
!983 = distinct !{!983, !984, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!984 = distinct !{!984, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!985 = distinct !{!985, !60}
!986 = !{!987}
!987 = distinct !{!987, !988, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!988 = distinct !{!988, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!989 = distinct !{!989, !60}
!990 = !{!991}
!991 = distinct !{!991, !992, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!992 = distinct !{!992, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!993 = distinct !{!993, !60}
!994 = !{!995}
!995 = distinct !{!995, !996, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!996 = distinct !{!996, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!997 = distinct !{!997, !60}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1000 = distinct !{!1000, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1001 = distinct !{!1001, !60}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1004, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1004 = distinct !{!1004, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1005 = distinct !{!1005, !60}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1008 = distinct !{!1008, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1009 = distinct !{!1009, !60}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1012, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1012 = distinct !{!1012, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1013 = distinct !{!1013, !60}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1016, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1016 = distinct !{!1016, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1017 = distinct !{!1017, !60}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1020, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1020 = distinct !{!1020, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1021 = distinct !{!1021, !60}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1024 = distinct !{!1024, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1025 = distinct !{!1025, !60}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1028, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv: argument 0"}
!1028 = distinct !{!1028, !"_ZN6duckdb30ColumnDataChunkIterationHelper3endEv"}
!1029 = distinct !{!1029, !60}
!1030 = !{!1031, !1038, i64 8}
!1031 = !{!"_ZTSN6duckdb16DuckDBResultDataE", !1032, i64 0, !1038, i64 8}
!1032 = !{!"_ZTSN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEE", !1033, i64 0}
!1033 = !{!"_ZTSSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EE", !1034, i64 0}
!1034 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb11QueryResultESt14default_deleteIS1_ELb1ELb1EE", !1035, i64 0}
!1035 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb11QueryResultESt14default_deleteIS1_EE", !1036, i64 0}
!1036 = !{!"_ZTSSt5tupleIJPN6duckdb11QueryResultESt14default_deleteIS1_EEE", !1037, i64 0}
!1037 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb11QueryResultESt14default_deleteIS1_EEE", !575, i64 0}
!1038 = !{!"_ZTSN6duckdb17CAPIResultSetTypeE", !5, i64 0}
!1039 = !{!358, !15, i64 24}
!1040 = !{!355, !356, i64 8}
!1041 = distinct !{null, null, null, null, null, null}
!1042 = !{!358, !29, i64 8}
!1043 = !{!866, !28, i64 24}
!1044 = distinct !{!1044, !60}
!1045 = distinct !{!1045, !60}
!1046 = !{!867, !867, i64 0}
!1047 = !{!868, !868, i64 0}
!1048 = distinct !{!1048, !60}
!1049 = !{!1050, !15, i64 0}
!1050 = !{!"_ZTS11duckdb_blob", !15, i64 0, !29, i64 8}
!1051 = distinct !{!1051, !60}
!1052 = distinct !{!1052, !60}
!1053 = distinct !{null, null, null}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1056, !"_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1056 = distinct !{!1056, !"_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1057 = !{!355, !311, i64 9}
!1058 = !{!1059, !15, i64 24}
!1059 = !{!"_ZTSSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEE", !170, i64 0, !15, i64 24}
!1060 = !{!1061, !15, i64 288}
!1061 = !{!"_ZTSN6duckdb14ScalarFunctionE", !113, i64 0, !1059, i64 240, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !1062, i64 344}
!1062 = !{!"_ZTSN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEE", !1063, i64 0}
!1063 = !{!"_ZTSSt10shared_ptrIN6duckdb18ScalarFunctionInfoEE", !1064, i64 0}
!1064 = !{!"_ZTSSt12__shared_ptrIN6duckdb18ScalarFunctionInfoELN9__gnu_cxx12_Lock_policyE2EE", !1065, i64 0, !22, i64 8}
!1065 = !{!"p1 _ZTSN6duckdb18ScalarFunctionInfoE", !15, i64 0}
!1066 = !{!1067, !1069}
!1067 = distinct !{!1067, !1068, !"_ZSt11make_sharedIN6duckdb12_GLOBAL__N_119CScalarFunctionInfoEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!1068 = distinct !{!1068, !"_ZSt11make_sharedIN6duckdb12_GLOBAL__N_119CScalarFunctionInfoEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!1069 = distinct !{!1069, !1070, !"_ZN6duckdb15make_shared_ptrINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!1070 = distinct !{!1070, !"_ZN6duckdb15make_shared_ptrINS_12_GLOBAL__N_119CScalarFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!1071 = !{!1069}
!1072 = distinct !{null, null, null, null, null}
!1073 = !{!1065, !1065, i64 0}
!1074 = distinct !{null, null, null, null, null, null}
!1075 = !{!1076, !430, i64 8}
!1076 = !{!"_ZTSN6duckdb15ExpressionStateE", !430, i64 8, !1077, i64 16, !1078, i64 24, !116, i64 48, !44, i64 72, !1084, i64 144}
!1077 = !{!"p1 _ZTSN6duckdb23ExpressionExecutorStateE", !15, i64 0}
!1078 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_15ExpressionStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !1079, i64 0}
!1079 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !1080, i64 0}
!1080 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !1081, i64 0}
!1081 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !1082, i64 0}
!1082 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !1083, i64 0, !1083, i64 8, !1083, i64 16}
!1083 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEE", !15, i64 0}
!1084 = !{!"_ZTSN6duckdb6vectorIbLb1ESaIbEEE", !1085, i64 0}
!1085 = !{!"_ZTSSt6vectorIbSaIbEE", !1086, i64 0}
!1086 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !1087, i64 0}
!1087 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !1088, i64 0}
!1088 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !1089, i64 0, !1089, i64 16, !75, i64 32}
!1089 = !{!"_ZTSSt13_Bit_iterator", !1090, i64 0}
!1090 = !{!"_ZTSSt18_Bit_iterator_base", !75, i64 0, !4, i64 8}
!1091 = !{!432, !432, i64 0}
!1092 = !{!431, !432, i64 0}
!1093 = !{!1094, !1094, i64 0}
!1094 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataE", !15, i64 0}
!1095 = !{!1096, !1096, i64 0}
!1096 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateE", !15, i64 0}
!1097 = !{!1098, !32, i64 16}
!1098 = !{!"_ZTSN6duckdb12_GLOBAL__N_135CScalarFunctionInternalFunctionInfoE", !1094, i64 0, !1096, i64 8, !32, i64 16, !26, i64 24}
!1099 = !{!1100, !1101, i64 8}
!1100 = !{!"_ZTSN6duckdb12_GLOBAL__N_123CScalarFunctionBindDataE", !86, i64 0, !1101, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!1101 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_119CScalarFunctionInfoE", !15, i64 0}
!1102 = !{!1103, !15, i64 24}
!1103 = !{!"_ZTSN6duckdb12_GLOBAL__N_119CScalarFunctionInfoE", !1104, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !39, i64 32, !15, i64 40}
!1104 = !{!"_ZTSN6duckdb18ScalarFunctionInfoE"}
!1105 = !{!113, !120, i64 232}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1108, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_123CScalarFunctionBindDataEJRNS1_19CScalarFunctionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1108 = distinct !{!1108, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_123CScalarFunctionBindDataEJRNS1_19CScalarFunctionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1109 = distinct !{null}
!1110 = !{!1101, !1101, i64 0}
!1111 = !{!1103, !15, i64 8}
!1112 = !{!1113, !1113, i64 0}
!1113 = !{!"p1 _ZTSN6duckdb14ScalarFunctionE", !15, i64 0}
!1114 = !{!1115, !1115, i64 0}
!1115 = !{!"p1 _ZTSN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !15, i64 0}
!1116 = !{!1117, !32, i64 32}
!1117 = !{!"_ZTSN6duckdb12_GLOBAL__N_131CScalarFunctionInternalBindInfoE", !181, i64 0, !1113, i64 8, !1115, i64 16, !1094, i64 24, !32, i64 32, !26, i64 40}
!1118 = distinct !{null, null}
!1119 = !{!1120}
!1120 = distinct !{!1120, !1121, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_125CScalarFunctionLocalStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1121 = distinct !{!1121, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_125CScalarFunctionLocalStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1122 = !{!1123, !15, i64 16}
!1123 = !{!"_ZTSN6duckdb12_GLOBAL__N_125CScalarFunctionLocalStateE", !1124, i64 0, !15, i64 8, !15, i64 16}
!1124 = !{!"_ZTSN6duckdb18FunctionLocalStateE"}
!1125 = !{!1103, !15, i64 16}
!1126 = !{!1127, !32, i64 24}
!1127 = !{!"_ZTSN6duckdb12_GLOBAL__N_131CScalarFunctionInternalInitInfoE", !181, i64 0, !1094, i64 8, !1096, i64 16, !32, i64 24, !26, i64 32}
!1128 = distinct !{null, null}
!1129 = !{!1130, !432, i64 0}
!1130 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb18FunctionLocalStateELb0EE", !432, i64 0}
!1131 = !{!1132, !1132, i64 0}
!1132 = !{!"p1 _ZTS23_duckdb_scalar_function", !15, i64 0}
!1133 = distinct !{null, null, null, null, null, null}
!1134 = !{!1098, !1094, i64 0}
!1135 = !{!1103, !39, i64 32}
!1136 = !{!1117, !1094, i64 24}
!1137 = !{!1100, !15, i64 16}
!1138 = !{!1117, !181, i64 0}
!1139 = !{!1117, !1115, i64 16}
!1140 = !{!1141, !1142, i64 8}
!1141 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !1142, i64 0, !1142, i64 8, !1142, i64 16}
!1142 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEE", !15, i64 0}
!1143 = !{!1141, !1142, i64 0}
!1144 = !{!1103, !15, i64 40}
!1145 = !{!1100, !15, i64 24}
!1146 = !{!1100, !15, i64 32}
!1147 = !{!1098, !1096, i64 8}
!1148 = !{!1123, !15, i64 8}
!1149 = !{!1127, !1096, i64 16}
!1150 = !{!1127, !181, i64 0}
!1151 = !{!1127, !1094, i64 8}
!1152 = !{!1153, !1113, i64 8}
!1153 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE17_Vector_impl_dataE", !1113, i64 0, !1113, i64 8, !1113, i64 16}
!1154 = !{!1153, !1113, i64 16}
!1155 = !{i64 0, i64 16, !35}
!1156 = !{!1064, !1065, i64 0}
!1157 = distinct !{ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!1158 = !{ptr @_ZN6duckdb14ScalarFunctionD2Ev}
!1159 = !{!1153, !1113, i64 0}
!1160 = distinct !{ptr @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev, null, null, null, null}
!1161 = distinct !{!1161, !60}
!1162 = distinct !{null, null, null, null}
!1163 = distinct !{!1163, !60}
!1164 = !{!1165, !1165, i64 0}
!1165 = !{!"p1 _ZTSN6duckdb17ScalarFunctionSetE", !15, i64 0}
!1166 = distinct !{null, null, null, null}
!1167 = !{!1168, !1168, i64 0}
!1168 = !{!"p1 _ZTS27_duckdb_scalar_function_set", !15, i64 0}
!1169 = !{!1170, !1170, i64 0}
!1170 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !15, i64 0}
!1171 = !{!1172, !1172, i64 0}
!1172 = !{!"p1 _ZTS25_duckdb_table_description", !15, i64 0}
!1173 = !{!1174, !1174, i64 0}
!1174 = !{!"p1 _ZTSN6duckdb16TableDescriptionE", !15, i64 0}
!1175 = !{!1176, !1177, i64 8}
!1176 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16ColumnDefinitionESaIS1_EE17_Vector_impl_dataE", !1177, i64 0, !1177, i64 8, !1177, i64 16}
!1177 = !{!"p1 _ZTSN6duckdb16ColumnDefinitionE", !15, i64 0}
!1178 = !{!1176, !1177, i64 0}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN6duckdb10StringUtil6FormatIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_DpT_: argument 0"}
!1181 = distinct !{!1181, !"_ZN6duckdb10StringUtil6FormatIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_DpT_"}
!1182 = !{!1183, !1180}
!1183 = distinct !{!1183, !1184, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1184 = distinct !{!1184, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1185 = !{!1186, !1188}
!1186 = distinct !{!1186, !1187, !"_ZSt11make_sharedIN6duckdb18CTableFunctionInfoEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!1187 = distinct !{!1187, !"_ZSt11make_sharedIN6duckdb18CTableFunctionInfoEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!1188 = distinct !{!1188, !1189, !"_ZN6duckdb15make_shared_ptrINS_18CTableFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!1189 = distinct !{!1189, !"_ZN6duckdb15make_shared_ptrINS_18CTableFunctionInfoEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!1190 = !{!1188}
!1191 = distinct !{null, null, null, null}
!1192 = !{!1193, !1193, i64 0}
!1193 = !{!"p1 _ZTSN6duckdb17TableFunctionInfoE", !15, i64 0}
!1194 = distinct !{null, null, null, null, null}
!1195 = !{!1196, !15, i64 352}
!1196 = !{!"_ZTSN6duckdb13TableFunctionE", !1197, i64 0, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !15, i64 488, !15, i64 496, !15, i64 504, !32, i64 512, !32, i64 513, !32, i64 514, !32, i64 515, !32, i64 516, !32, i64 517, !1200, i64 520, !1203, i64 536, !1204, i64 540}
!1197 = !{!"_ZTSN6duckdb28SimpleNamedParameterFunctionE", !114, i64 0, !1198, i64 208}
!1198 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE", !1199, i64 0}
!1199 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !194, i64 0, !29, i64 8, !195, i64 16, !29, i64 24, !197, i64 32, !196, i64 48}
!1200 = !{!"_ZTSN6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEE", !1201, i64 0}
!1201 = !{!"_ZTSSt10shared_ptrIN6duckdb17TableFunctionInfoEE", !1202, i64 0}
!1202 = !{!"_ZTSSt12__shared_ptrIN6duckdb17TableFunctionInfoELN9__gnu_cxx12_Lock_policyE2EE", !1193, i64 0, !22, i64 8}
!1203 = !{!"_ZTSN6duckdb21OrderPreservationTypeE", !5, i64 0}
!1204 = !{!"_ZTSN6duckdb27TableFunctionInitializationE", !5, i64 0}
!1205 = !{!1206, !18, i64 0}
!1206 = !{!"_ZTSN6duckdb12optional_ptrIKNS_12FunctionDataELb1EEE", !18, i64 0}
!1207 = !{!1208, !1209, i64 0}
!1208 = !{!"_ZTSN6duckdb12optional_ptrINS_24GlobalTableFunctionStateELb1EEE", !1209, i64 0}
!1209 = !{!"p1 _ZTSN6duckdb24GlobalTableFunctionStateE", !15, i64 0}
!1210 = !{!1211, !1212, i64 0}
!1211 = !{!"_ZTSN6duckdb12optional_ptrINS_23LocalTableFunctionStateELb1EEE", !1212, i64 0}
!1212 = !{!"p1 _ZTSN6duckdb23LocalTableFunctionStateE", !15, i64 0}
!1213 = !{!1214, !1214, i64 0}
!1214 = !{!"p1 _ZTSN6duckdb14CTableBindDataE", !15, i64 0}
!1215 = !{!1216, !1216, i64 0}
!1216 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_114CTableInitDataE", !15, i64 0}
!1217 = !{!1218, !32, i64 24}
!1218 = !{!"_ZTSN6duckdb12_GLOBAL__N_126CTableInternalFunctionInfoE", !1214, i64 0, !1216, i64 8, !1216, i64 16, !32, i64 24, !26, i64 32}
!1219 = !{!1220, !1222, i64 32}
!1220 = !{!"_ZTSN6duckdb14CTableBindDataE", !1221, i64 0, !1222, i64 32, !15, i64 40, !15, i64 48, !1223, i64 56}
!1221 = !{!"_ZTSN6duckdb17TableFunctionDataE", !86, i64 0, !886, i64 8}
!1222 = !{!"p1 _ZTSN6duckdb18CTableFunctionInfoE", !15, i64 0}
!1223 = !{!"_ZTSN6duckdb10unique_ptrINS_14NodeStatisticsESt14default_deleteIS1_ELb1EEE", !1224, i64 0}
!1224 = !{!"_ZTSSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EE", !1225, i64 0}
!1225 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb14NodeStatisticsESt14default_deleteIS1_ELb1ELb1EE", !1226, i64 0}
!1226 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb14NodeStatisticsESt14default_deleteIS1_EE", !1227, i64 0}
!1227 = !{!"_ZTSSt5tupleIJPN6duckdb14NodeStatisticsESt14default_deleteIS1_EEE", !1228, i64 0}
!1228 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb14NodeStatisticsESt14default_deleteIS1_EEE", !1229, i64 0}
!1229 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14NodeStatisticsELb0EE", !1230, i64 0}
!1230 = !{!"p1 _ZTSN6duckdb14NodeStatisticsE", !15, i64 0}
!1231 = !{!1232, !15, i64 32}
!1232 = !{!"_ZTSN6duckdb18CTableFunctionInfoE", !1233, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!1233 = !{!"_ZTSN6duckdb17TableFunctionInfoE"}
!1234 = !{!1235, !1193, i64 0}
!1235 = !{!"_ZTSN6duckdb12optional_ptrINS_17TableFunctionInfoELb1EEE", !1193, i64 0}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1238, !"_ZN6duckdb9make_uniqINS_14CTableBindDataEJRNS_18CTableFunctionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1238 = distinct !{!1238, !"_ZN6duckdb9make_uniqINS_14CTableBindDataEJRNS_18CTableFunctionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1239 = !{!1222, !1222, i64 0}
!1240 = !{!1241, !1242, i64 0}
!1241 = !{!"_ZTSN6duckdb22TableFunctionBindInputE", !1242, i64 0, !1243, i64 8, !1244, i64 16, !1245, i64 24, !1235, i64 32, !1246, i64 40, !1248, i64 48, !800, i64 56}
!1242 = !{!"p1 _ZTSN6duckdb6vectorINS_5ValueELb1ESaIS1_EEE", !15, i64 0}
!1243 = !{!"p1 _ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE", !15, i64 0}
!1244 = !{!"p1 _ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !15, i64 0}
!1245 = !{!"p1 _ZTSN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEE", !15, i64 0}
!1246 = !{!"_ZTSN6duckdb12optional_ptrINS_6BinderELb1EEE", !1247, i64 0}
!1247 = !{!"p1 _ZTSN6duckdb6BinderE", !15, i64 0}
!1248 = !{!"p1 _ZTSN6duckdb13TableFunctionE", !15, i64 0}
!1249 = !{!1241, !1243, i64 8}
!1250 = !{!1251, !194, i64 0}
!1251 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !194, i64 0, !29, i64 8, !195, i64 16, !29, i64 24, !197, i64 32, !196, i64 48}
!1252 = !{!1251, !29, i64 8}
!1253 = !{!1251, !29, i64 24}
!1254 = !{!1251, !196, i64 48}
!1255 = !{!1256, !1256, i64 0}
!1256 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEEE", !15, i64 0}
!1257 = !{!1244, !1244, i64 0}
!1258 = !{!1245, !1245, i64 0}
!1259 = !{!1260, !32, i64 120}
!1260 = !{!"_ZTSN6duckdb22CTableInternalBindInfoE", !181, i64 0, !1261, i64 8, !1265, i64 32, !1244, i64 88, !1245, i64 96, !1214, i64 104, !1222, i64 112, !32, i64 120, !26, i64 128}
!1261 = !{!"_ZTSN6duckdb6vectorINS_5ValueELb1ESaIS1_EEE", !1262, i64 0}
!1262 = !{!"_ZTSSt6vectorIN6duckdb5ValueESaIS1_EE", !1263, i64 0}
!1263 = !{!"_ZTSSt12_Vector_baseIN6duckdb5ValueESaIS1_EE", !1264, i64 0}
!1264 = !{!"_ZTSNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE12_Vector_implE", !387, i64 0}
!1265 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE", !1251, i64 0}
!1266 = !{!1232, !15, i64 8}
!1267 = !{!1251, !196, i64 16}
!1268 = distinct !{!1268, !60}
!1269 = distinct !{null, null}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_120CTableGlobalInitDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1272 = distinct !{!1272, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_120CTableGlobalInitDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1273 = !{!1274, !29, i64 16}
!1274 = !{!"_ZTSN6duckdb12_GLOBAL__N_114CTableInitDataE", !15, i64 0, !15, i64 8, !29, i64 16}
!1275 = !{!1276, !1276, i64 0}
!1276 = !{!"p1 _ZTSN6duckdb14TableFilterSetE", !15, i64 0}
!1277 = !{!1278, !1278, i64 0}
!1278 = !{!"p1 _ZTSN6duckdb6vectorImLb1ESaImEEE", !15, i64 0}
!1279 = !{!1280, !32, i64 32}
!1280 = !{!"_ZTSN6duckdb12_GLOBAL__N_122CTableInternalInitInfoE", !1214, i64 0, !1216, i64 8, !1278, i64 16, !1281, i64 24, !32, i64 32, !26, i64 40}
!1281 = !{!"_ZTSN6duckdb12optional_ptrINS_14TableFilterSetELb1EEE", !1276, i64 0}
!1282 = !{!1232, !15, i64 16}
!1283 = !{!1284, !1209, i64 0}
!1284 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb24GlobalTableFunctionStateELb0EE", !1209, i64 0}
!1285 = distinct !{null, null}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_119CTableLocalInitDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1288 = distinct !{!1288, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_119CTableLocalInitDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1289 = !{!1232, !15, i64 24}
!1290 = !{!1291, !1212, i64 0}
!1291 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb23LocalTableFunctionStateELb0EE", !1212, i64 0}
!1292 = distinct !{null, null}
!1293 = !{!1230, !1230, i64 0}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"_ZN6duckdb9make_uniqINS_14NodeStatisticsEJRS1_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1296 = distinct !{!1296, !"_ZN6duckdb9make_uniqINS_14NodeStatisticsEJRS1_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1297 = !{i64 0, i64 1, !597, i64 8, i64 8, !110, i64 16, i64 1, !597, i64 24, i64 8, !110}
!1298 = !{!1299, !1299, i64 0}
!1299 = !{!"p1 _ZTS22_duckdb_table_function", !15, i64 0}
!1300 = !{!1232, !15, i64 40}
!1301 = !{!1232, !15, i64 48}
!1302 = !{!1202, !1193, i64 0}
!1303 = !{!1196, !32, i64 513}
!1304 = distinct !{!1304, !60}
!1305 = !{!1248, !1248, i64 0}
!1306 = !{!1260, !1222, i64 112}
!1307 = !{!1260, !181, i64 0}
!1308 = !{!1260, !1245, i64 96}
!1309 = !{!1260, !1244, i64 88}
!1310 = distinct !{!1310, !60}
!1311 = distinct !{!1311, !60}
!1312 = !{!1260, !1214, i64 104}
!1313 = !{!1220, !15, i64 40}
!1314 = !{!1220, !15, i64 48}
!1315 = !{!1316, !32, i64 0}
!1316 = !{!"_ZTSN6duckdb14NodeStatisticsE", !32, i64 0, !29, i64 8, !32, i64 16, !29, i64 24}
!1317 = !{!1316, !29, i64 8}
!1318 = !{!1316, !32, i64 16}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN6duckdb9make_uniqINS_14NodeStatisticsEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1321 = distinct !{!1321, !"_ZN6duckdb9make_uniqINS_14NodeStatisticsEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"_ZN6duckdb9make_uniqINS_14NodeStatisticsEJRmS2_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1324 = distinct !{!1324, !"_ZN6duckdb9make_uniqINS_14NodeStatisticsEJRmS2_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1325 = !{!1316, !29, i64 24}
!1326 = !{!1280, !1214, i64 0}
!1327 = !{!1280, !1216, i64 8}
!1328 = !{!1274, !15, i64 0}
!1329 = !{!1274, !15, i64 8}
!1330 = !{!1280, !1278, i64 16}
!1331 = !{!1218, !1214, i64 0}
!1332 = !{!1218, !1216, i64 8}
!1333 = !{!1218, !1216, i64 16}
!1334 = !{!654, !654, i64 0}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN6duckdb9make_uniqISt6atomicIbEJbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1337 = distinct !{!1337, !"_ZN6duckdb9make_uniqISt6atomicIbEJbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1338 = !{!1339, !32, i64 0}
!1339 = !{!"_ZTSSt13__atomic_baseIbE", !32, i64 0}
!1340 = !{!1341, !1341, i64 0}
!1341 = !{!"p1 _ZTSSt6atomicIbE", !15, i64 0}
!1342 = !{!470, !29, i64 0}
!1343 = !{!1344, !654, i64 0}
!1344 = !{!"_ZTS13CAPITaskState", !654, i64 0, !1345, i64 8, !469, i64 16}
!1345 = !{!"_ZTSN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS2_ELb1EEE", !1346, i64 0}
!1346 = !{!"_ZTSSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EE", !1347, i64 0}
!1347 = !{!"_ZTSSt15__uniq_ptr_dataISt6atomicIbESt14default_deleteIS1_ELb1ELb1EE", !1348, i64 0}
!1348 = !{!"_ZTSSt15__uniq_ptr_implISt6atomicIbESt14default_deleteIS1_EE", !1349, i64 0}
!1349 = !{!"_ZTSSt5tupleIJPSt6atomicIbESt14default_deleteIS1_EEE", !1350, i64 0}
!1350 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6atomicIbESt14default_deleteIS1_EEE", !1351, i64 0}
!1351 = !{!"_ZTSSt10_Head_baseILm0EPSt6atomicIbELb0EE", !1341, i64 0}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1354, !"_ZN6duckdb23TryCastDecimalCInternalI14duckdb_decimalEET_P13duckdb_resultmm: argument 0"}
!1354 = distinct !{!1354, !"_ZN6duckdb23TryCastDecimalCInternalI14duckdb_decimalEET_P13duckdb_resultmm"}
!1355 = !{i64 0, i64 1, !35, i64 1, i64 1, !35, i64 8, i64 8, !110, i64 16, i64 8, !110}
!1356 = !{!1357, !1357, i64 0}
!1357 = !{!"p1 _ZTSN6duckdb10FileSystemE", !15, i64 0}
!1358 = !{!1359, !1359, i64 0}
!1359 = !{!"p1 _ZTS19_duckdb_file_system", !15, i64 0}
end_hunk_8
