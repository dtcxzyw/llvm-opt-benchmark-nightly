inline.NumInlined: 1841
inline.NumDeleted: 1017
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_123ExportAggregateBindDataD2Ev:bb.a
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !83
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !84
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !84
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !86
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %i.a) #24, !inline_history !86
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_123ExportAggregateBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(384) initializes((0, 16)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_123ExportAggregateBindDataE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_123ExportAggregateBindDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !83
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !491
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !491
  br label %_ZN6duckdb12_GLOBAL__N_123ExportAggregateBindDataD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN6duckdb12_GLOBAL__N_123ExportAggregateBindDataD2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !492
  br label %_ZN6duckdb12_GLOBAL__N_123ExportAggregateBindDataD2Ev.exit

_ZN6duckdb12_GLOBAL__N_123ExportAggregateBindDataD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %i.a) #24, !inline_history !492
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(384) %0) #24, !inline_history !493
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK6duckdb12_GLOBAL__N_123ExportAggregateBindData4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.24") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::AggregateFunction", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27, !noalias !494, !inline_history !497 ; 8 uses
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %2, ptr noundef nonnull align 8 dereferenceable(368) %i.a)
          to label %.noexc.i unwind label %bb.e, !noalias !494, !inline_history !497

.noexc.i:                                         ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %2, align 8, !tbaa !45, !noalias !494
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.d, ptr noundef nonnull align 8 dereferenceable(106) %i.e, i64 106, i1 false), !noalias !494
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80, !noalias !494 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !123, !noalias !494
  store <2 x ptr> %i.j, ptr %i.f, align 8, !tbaa !123, !noalias !494
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60, !noalias !494
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3, !noalias !494
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3, !noalias !494
  br label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !494 ; 0 uses
  br label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.i

_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.i:     ; preds = %bb.d, %bb.c, %.noexc.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !59, !noalias !494
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_123ExportAggregateBindDataE, i64 16), ptr %i.c, align 8, !tbaa !45, !noalias !494
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %i.q, ptr noundef nonnull align 8 dereferenceable(368) %2)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123ExportAggregateBindDataESt14default_deleteIS2_EED2Ev.exit unwind label %.body.i, !noalias !494, !inline_history !498

.body.i:                                          ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(384) %i.c) #24, !noalias !494, !inline_history !498
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #24, !noalias !494, !inline_history !497
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.r, %.body.i ], [ %i.s, %bb.e ]
  call void @_ZdlPv(ptr noundef nonnull %i.c) #26, !noalias !494, !inline_history !497
  resume { ptr, i32 } %.pn.i

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_123ExportAggregateBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 360
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %i.q, align 8, !tbaa !45, !noalias !494
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.u, ptr noundef nonnull align 8 dereferenceable(106) %i.d, i64 106, i1 false), !noalias !494
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.w = load <2 x ptr>, ptr %i.f, align 8, !tbaa !123, !noalias !494
  store ptr null, ptr %i.t, align 8, !tbaa !80, !noalias !494
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !123, !noalias !494
  store ptr null, ptr %i.f, align 8, !tbaa !279, !noalias !494
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store i64 %i.p, ptr %i.x, align 8, !tbaa !186, !noalias !494
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %2, align 8, !tbaa !45, !noalias !494
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %2) #24, !noalias !494, !inline_history !499
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.c, ptr %0, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK6duckdb12_GLOBAL__N_123ExportAggregateBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br label %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit

_ZNK6duckdb17AggregateFunctioneqERKS0_.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %2 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.af, %i.ah
  %3 = select i1 %2, i1 %i.ai, i1 false
  ret i1 %3
}

declare void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv() local_unnamed_addr #3

declare void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !83
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !500
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !500
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !83
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !500
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !500
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, !prof !85

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80 ; 8 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i6, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !83
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !456
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !456
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !85

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_113FinalizeStateD2Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_113FinalizeStateE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #26
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_113FinalizeStateD0Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_113FinalizeStateE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #24, !inline_history !501
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #24, !inline_history !501
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
