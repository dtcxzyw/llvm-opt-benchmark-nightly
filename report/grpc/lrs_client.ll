Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/lrs_client?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1857
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core9LrsClient16ClusterDropStats21AddUncategorizedDropsEv:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core9LrsClient16ClusterDropStats14AddCallDroppedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !54
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #37
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #37
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit3:       ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.202", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.205", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !76   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #34 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !6

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #34 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %1, ptr %2, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core9LrsClient20ClusterLocalityStatsC2ENS_13RefCountedPtrIS0_EESt17basic_string_viewIcSt11char_traitsIcEES7_S7_NS2_INS_15XdsLocalityNameEEENS2_IKNS_24BackendMetricPropagationEEE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 88)) %0, ptr nofree noundef align 8 captures(none) %1, i64 %2, ptr %3, i64 %4, ptr %5, ptr nofree noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %6, ptr nofree noundef align 8 captures(none) %7, ptr nofree noundef align 8 captures(none) %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.grpc_core::PerCpuOptions", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core25xds_client_refcount_traceE, i64 8) monotonic, align 8, !range !43, !noundef !44 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9LrsClient20ClusterLocalityStatsE, i64 16), ptr %0, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !53
  %i.g = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %i.g, ptr %i.f, align 8, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %2, ptr %i.h, align 8, !tbaa !54
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %3, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %4, ptr %i.i, align 8, !tbaa !54
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %5, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !57
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !101
  %i.l = load ptr, ptr %7, align 8, !tbaa !101
  store ptr %i.l, ptr %i.k, align 8, !tbaa !101
  store ptr null, ptr %7, align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !104
  %i.n = load ptr, ptr %8, align 8, !tbaa !104
  store ptr %i.n, ptr %i.m, align 8, !tbaa !104
  store ptr null, ptr %8, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 4, ptr %9, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 32, ptr %i.p, align 8
  %i.q = invoke noundef i64 @_ZN9grpc_core13PerCpuOptions6ShardsEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.q, ptr %i.r, align 8, !tbaa !114
  %i.s = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.q, i64 136) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0         ; 2 uses
  %i.v = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.u, i64 8) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = or i1 %i.t, %i.w
  %i.y = extractvalue { i64, i1 } %i.v, 0
  %i.z = select i1 %i.x, i64 -1, i64 %i.y
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #41
          to label %.noexc43 unwind label %bb.o   ; 5 uses

.noexc43:                                         ; preds = %.noexc
  store i64 %i.q, ptr %i.aa, align 16
  %i.ab = icmp eq i64 %i.q, 0
  br i1 %i.ab, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.noexc43
  %12 = add i64 %i.u, -136                        ; 2 uses
  %13 = udiv i64 %12, 136                         ; 2 uses
  %14 = add nuw nsw i64 %13, 1                    ; 2 uses
  %15 = icmp ult i64 %12, 136
  br i1 %15, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %14, 288230376151711742
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.idx.i = phi i64 [ 8, %.preheader.preheader.new ], [ %.add.i.1, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i ; 6 uses
  %16 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 96 ; 3 uses
  store i32 0, ptr %16, align 8, !tbaa !62
  %17 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 104
  store ptr null, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.ptr.ptr.i, i8 0, i64 88, i1 false)
  store ptr %16, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 120
  store ptr %16, ptr %19, align 8, !tbaa !65
  %20 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 128
  store i64 0, ptr %20, align 8, !tbaa !66
  %21 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i ; 6 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %21, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 232 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 240
  store ptr null, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.ptr.ptr.i.1, i8 0, i64 88, i1 false)
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 256
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 264
  store i64 0, ptr %i.ag, align 8, !tbaa !66
  %.add.i.1 = add nuw nsw i64 %.idx.i, 272        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %22 = and i64 %13, 1
  %lcmp.mod.not.not = icmp eq i64 %22, 0
  br i1 %lcmp.mod.not.not, label %.preheader.epil.preheader, label %.loopexit

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.idx.i.epil.init = phi i64 [ 8, %.preheader.preheader ], [ %.add.i.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod67 = trunc i64 %14 to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.epil.init ; 6 uses
  %23 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 96 ; 3 uses
  store i32 0, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 104
  store ptr null, ptr %24, align 8, !tbaa !63
  %25 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.ptr.ptr.i.epil, i8 0, i64 88, i1 false)
  store ptr %23, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 120
  store ptr %23, ptr %26, align 8, !tbaa !65
  %27 = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 128
  store i64 0, ptr %27, align 8, !tbaa !66
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc43
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.ptr5.i, ptr %i.ah, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ai = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core16xds_client_traceE, i64 8) monotonic, align 8, !range !43, !noundef !44
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.b, label %bb.n, !prof !67

bb.b:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.2, i32 noundef 144) #35
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 12, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit unwind label %bb.q

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !53
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !68
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core9LrsClientEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.r       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 25, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit: ; preds = %bb.d
  store ptr %0, ptr %i.b, align 8, !tbaa !117
  %i.am = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core9LrsClient20ClusterLocalityStatsEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.s       ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 6, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.s

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.e
  %.sroa.06.0.copyload = load i64, ptr %i.h, align 8, !tbaa !54
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !56
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 %.sroa.06.0.copyload, ptr %.sroa.27.0.copyload)
          to label %bb.f unwind label %bb.s       ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 2, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit unwind label %bb.s

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit: ; preds = %bb.f
  %.sroa.04.0.copyload = load i64, ptr %i.i, align 8, !tbaa !54
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !56
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 %.sroa.04.0.copyload, ptr %.sroa.25.0.copyload)
          to label %bb.g unwind label %bb.s       ; 2 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 2, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit49 unwind label %bb.s

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit49: ; preds = %bb.g
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !56
  %i.ap = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.h unwind label %bb.s       ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit49
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 2, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit51 unwind label %bb.s

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit51: ; preds = %bb.h
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !101 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit51
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !120 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %spec.select.i = select i1 %i.au, ptr @.str.64, ptr %i.av
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit51
  %i.aw = phi ptr [ @.str.11, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit51 ], [ %spec.select.i, %bb.i ]
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !56
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.k unwind label %bb.t       ; 2 uses

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 14, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.t

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !104
  invoke void @_ZNK9grpc_core24BackendMetricPropagation8AsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.m unwind label %bb.v       ; 2 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 1, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.v

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.m
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.critedge unwind label %bb.v

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  %i.ba = load ptr, ptr %11, align 8, !tbaa !77   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !80
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %.critedge41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %.critedge41

.critedge41:                                      ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  ret void

bb.o:                                             ; preds = %.noexc, %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit49, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.v:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.m, %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %11, align 8, !tbaa !77   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.v
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !80
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.bm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.bk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.x

end_hunk_0
