Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/pep440_rs-c1a74f8115aa0555.pep440_rs.c28d262894fede59-cgu.01?download=true
inline.NumInlined: 217
inline.NumDeleted: 118
begin_hunk_0_@_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version9make_full:bb.a
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.y, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 %switch.masked, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %.sroa.20.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !56
  %i.af = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 153) 152, i64 noundef 8) #22, !noalias !56 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newB13_.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ah = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.h, i64 %i.ah, i1 false)
  br label %switch.lookup

bb.i:                                             ; preds = %switch.lookup
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #21
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a) #24
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.m ], [ %i.ai, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newB13_.exit: ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.af, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !60, !nonnull !3, !noundef !3
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !60
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEBF_.exit

bb.l:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newB13_.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEBF_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.af, ptr %0, align 8
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEBF_.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newB13_.exit, %bb.l
  store ptr %i.af, ptr %0, align 8
  br label %bb.b

bb.n:                                             ; preds = %bb.b
  ret ptr %i.f

bb.o:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE8make_mutBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = cmpxchg ptr %i.c, i64 1, i64 0 acquire monotonic, align 8
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = tail call noundef nonnull ptr @_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inBJ_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.j) ; 3 uses
  %i.l = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !65
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1c_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1c_.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.f release, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1d_.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  invoke void @_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newBX_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.o)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr %i.a, align 8, !range !66, !noundef !3 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.v, ptr noundef nonnull align 8 dereferenceable(136) %i.o, i64 136, i1 false)
  %i.w = invoke noundef nonnull ptr @_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE8into_arcBX_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.f       ; 2 uses

bb.i:                                             ; preds = %bb.h
  store ptr %i.w, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1c_.exit
  %i.x = phi ptr [ %i.f, %bb.e ], [ %i.w, %bb.i ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1c_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  ret ptr %i.y

bb.k:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1d_.exit: ; preds = %bb.f, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1d_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1c_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.k, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser10parse_post(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !87, !noalias !88, !noundef !3 ; 4 uses
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !87, !noalias !88, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 1, -9223372036854775808) 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !87
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !91, !noalias !89, !noundef !3 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !91, !noalias !89 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !90, !noalias !89, !nonnull !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !90, !noalias !89, !nonnull !3
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.n)
  %exitcond.not.i2.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.n
  br i1 %exitcond.not.i2.not.i.i, label %.lr.ph.i.i, label %.sink.split.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = add i64 %i.q, 1                          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %i.p, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.q
  %.val.i.i.i = load i8, ptr %i.r, align 1, !noalias !92, !noundef !3 ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.s, align 1, !noalias !92, !noundef !3 ; 2 uses
  %i.t = add i8 %.val.i.i.i, -65
  %i.u = icmp ult i8 %i.t, 26
  %i.v = select i1 %i.u, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i = or i8 %i.v, %.val.i.i.i
  %i.w = add i8 %.val7.i.i.i, -65
  %i.x = icmp ult i8 %i.w, 26
  %i.y = select i1 %i.x, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i = or i8 %i.y, %.val7.i.i.i
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i: ; preds = %.lr.ph.i.i
  %.not9.i = icmp ult i64 %i.q, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  br i1 %.not9.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread, label %bb.d

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i
  %i.z = icmp eq i64 %i.e, -1
  br i1 %i.z, label %bb.e, label %bb.l, !prof !10

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #21, !noalias !87
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread: ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %bb.a, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit
  %i.aa = phi i64 [ %i.ax, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit ], [ %i.g, %bb.a ], [ %i.g, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.ab = icmp ugt i64 %i.e, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread
  %.not.i11 = icmp eq i64 %i.aa, %i.e
  br i1 %.not.i11, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit, label %bb.h

bb.g:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.aa, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !93
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !93, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.e
  %i.af = load i8, ptr %i.ae, align 1, !noalias !93, !noundef !3
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @17, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !range !13, !noalias !93, !noundef !3
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i64 %i.e, -1
  br i1 %i.ak, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.al = add nuw i64 %i.e, 1
  store i64 %i.al, ptr %i.d, align 8, !alias.scope !93
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !93
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit: ; preds = %bb.f, %bb.h, %bb.j
  %i.am = call fastcc { i64, i64 } @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser18bump_if_string_set(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) @22)
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %.not = icmp eq i64 %i.an, 1
  br i1 %.not, label %bb.r, label %bb.y

bb.l:                                             ; preds = %bb.d
  %i.ao = add nuw i64 %i.e, 1
  store i64 %i.ao, ptr %i.d, align 8, !alias.scope !87, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(160) %0)
  %i.ap = load i64, ptr %i.c, align 8, !range !5, !noundef !3 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = trunc nuw i64 %i.ap to i1
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.at, ptr %i.aw, align 8
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.ax = load i64, ptr %i.f, align 8, !alias.scope !94, !noundef !3 ; 2 uses
  %.not.i13 = icmp ugt i64 %i.e, %i.ax
  br i1 %.not.i13, label %bb.q, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, !prof !10

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #21, !noalias !94
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit: ; preds = %bb.p
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !94
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread

bb.r:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.ay = load i64, ptr %i.f, align 8, !alias.scope !95, !noundef !3 ; 4 uses
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !95, !noundef !3 ; 6 uses
  %i.ba = icmp ugt i64 %i.az, %i.ay
  br i1 %i.ba, label %bb.t, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %.not.i14 = icmp eq i64 %i.ay, %i.az
  br i1 %.not.i14, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit17, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.az, i64 noundef %i.ay, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !95
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !95, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.be = load i8, ptr %i.bd, align 1, !noalias !95, !noundef !3
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @17, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !range !13, !noalias !95, !noundef !3
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.v, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit17

bb.v:                                             ; preds = %bb.u
  %i.bj = icmp eq i64 %i.az, -1
  br i1 %i.bj, label %bb.x, label %bb.w, !prof !10

bb.w:                                             ; preds = %bb.v
  %i.bk = add nuw i64 %i.az, 1
  store i64 %i.bk, ptr %i.d, align 8, !alias.scope !95
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit17

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !95
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit17: ; preds = %bb.s, %bb.u, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(160) %0)
  %i.bl = load i64, ptr %i.b, align 8, !range !5, !noundef !3 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.y:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.bo = load i64, ptr %i.f, align 8, !alias.scope !96, !noundef !3
  %.not.i18 = icmp ugt i64 %i.e, %i.bo
  br i1 %.not.i18, label %bb.z, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit19, !prof !10

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #21, !noalias !96
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit19: ; preds = %bb.y
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !96
  br label %bb.ac

bb.aa:                                            ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit17
  %i.bp = load ptr, ptr %i.bn, align 8, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit17
  %i.bq = load i64, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.br = trunc nuw i64 %i.bl to i1
  %. = select i1 %i.br, i64 %i.bq, i64 0
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %., ptr %i.bt, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.m, %bb.o, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit19, %bb.aa, %bb.ab
  %.sroa.0.1 = phi ptr [ null, %bb.ab ], [ null, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit19 ], [ %i.bp, %bb.aa ], [ %i.as, %bb.m ], [ null, %bb.o ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser11parse_local(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !133, !noalias !134, !noundef !3 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !133, !noalias !134, !noundef !3 ; 2 uses
  %.not.i = icmp ult i64 %i.i, %i.k
  br i1 %.not.i, label %bb.b, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !133, !noalias !134, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 1, -9223372036854775808) 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !133
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !137, !noalias !135, !noundef !3 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !137, !noalias !135 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !136, !noalias !135, !nonnull !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !136, !noalias !135, !nonnull !3
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.r)
  %exitcond.not.i2.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.r
  br i1 %exitcond.not.i2.not.i.i, label %.lr.ph.i.i, label %.sink.split.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = add i64 %i.u, 1                          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.u = phi i64 [ %i.t, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.u
  %.val.i.i.i = load i8, ptr %i.v, align 1, !noalias !138, !noundef !3 ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.w, align 1, !noalias !138, !noundef !3 ; 2 uses
  %i.x = add i8 %.val.i.i.i, -65
  %i.y = icmp ult i8 %i.x, 26
  %i.z = select i1 %i.y, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i = or i8 %i.z, %.val.i.i.i
  %i.aa = add i8 %.val7.i.i.i, -65
  %i.ab = icmp ult i8 %i.aa, 26
  %i.ac = select i1 %i.ab, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i = or i8 %i.ac, %.val7.i.i.i
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i: ; preds = %.lr.ph.i.i
  %.not9.i = icmp ult i64 %i.u, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  br i1 %.not9.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread, label %bb.d

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i
  %i.ad = icmp eq i64 %i.i, -1
  br i1 %i.ad, label %bb.e, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit, !prof !10

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #21, !noalias !133
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit: ; preds = %bb.d
  %i.ae = add nuw i64 %i.i, 1                     ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !133, !noalias !134
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load i64, ptr %i.j, align 8, !alias.scope !139
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.f

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread: ; preds = %bb.af, %bb.ad, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %bb.a, %bb.j
  %.sroa.0.0 = phi ptr [ %i.be, %bb.j ], [ null, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i ], [ null, %bb.a ], [ null, %bb.ad ], [ null, %bb.af ]
  ret ptr %.sroa.0.0

bb.f:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit, %bb.ai
  %i.am = phi i64 [ %i.df, %bb.ai ], [ %.pre, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit ] ; 5 uses
  %i.an = phi i64 [ %i.dq, %bb.ai ], [ %i.ae, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit ] ; 8 uses
  %.sroa.03.0 = phi i32 [ %i.dr, %bb.ai ], [ 43, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.not8.i = icmp ult i64 %i.an, %i.am
  br i1 %.not8.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ao = load ptr, ptr %i.m, align 8, !alias.scope !139, !nonnull !3, !noundef !3
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.h, %bb.g, %bb.f
  %.lcssa7.i = phi i64 [ %i.an, %bb.f ], [ %i.am, %bb.h ], [ %i.aq, %bb.g ] ; 5 uses
  %i.ap = icmp ult i64 %.lcssa7.i, %i.an
  %.not5.i = icmp ugt i64 %.lcssa7.i, %i.am
  %or.cond.i = or i1 %i.ap, %.not5.i
  br i1 %or.cond.i, label %bb.i, label %_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_11parse_local0EB8_.exit, !prof !4

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %i.aq = phi i64 [ %i.an, %.lr.ph.i ], [ %i.ay, %bb.h ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !139, !noundef !3 ; 5 uses
  %i.at = add nsw i8 %i.as, -48
  %.sroa.0.0.i.i = icmp ult i8 %i.at, 10
  %i.au = icmp samesign ugt i8 %i.as, 64
  %i.av = icmp samesign ult i8 %i.as, 91
  %.sroa.01.0.i.i = select i1 %i.au, i1 %i.av, i1 %.sroa.0.0.i.i
  %i.aw = icmp ugt i8 %i.as, 96
  %i.ax = icmp ult i8 %i.as, 123
  %.sroa.02.0.i.i = select i1 %i.aw, i1 %i.ax, i1 %.sroa.01.0.i.i
  br i1 %.sroa.02.0.i.i, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.ay = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.ay, ptr %i.h, align 8, !alias.scope !139
  %exitcond.not.i = icmp eq i64 %i.ay, %i.am
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g

bb.i:                                             ; preds = %._crit_edge.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.an, i64 noundef %.lcssa7.i, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !139
  unreachable

_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_11parse_local0EB8_.exit: ; preds = %._crit_edge.i
  %i.az = load ptr, ptr %i.m, align 8, !alias.scope !139, !nonnull !3, !noundef !3
  %i.ba = sub nuw i64 %.lcssa7.i, %i.an           ; 15 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.an ; 2 uses
  %i.bc = icmp eq i64 %.lcssa7.i, %i.an
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_11parse_local0EB8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.03.0, ptr %i.bd, align 8
  store i64 -9223372036854775803, ptr %i.g, align 8
  %i.be = call noundef nonnull align 8 ptr @_RNvXsx_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_24VersionPatternParseErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ErrorKindE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread

bb.k:                                             ; preds = %_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_11parse_local0EB8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bf = call fastcc { i64, ptr } @_RNvNtCsgHAIXRTqFF5_9pep440_rs7version9parse_u64(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.ba) ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0      ; 3 uses
  %i.bh = extractvalue { i64, ptr } %i.bf, 1      ; 6 uses
  %i.bi = trunc nuw i64 %i.bg to i1
  br i1 %i.bi, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.ba, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.l
  %i.bj = load i64, ptr %i.c, align 8, !range !7, !noalias !141, !noundef !3
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = load i64, ptr %i.ah, align 8, !range !9, !noalias !141, !noundef !3 ; 4 uses
  br i1 %i.bk, label %bb.m, label %iter.check, !prof !10

bb.m:                                             ; preds = %.noexc
  %i.bm = load i64, ptr %i.ai, align 8, !noalias !141
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bl, i64 %i.bm) #21
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.m
  unreachable

iter.check:                                       ; preds = %.noexc
  %i.bn = load ptr, ptr %i.ai, align 8, !noalias !141, !nonnull !3, !noundef !3 ; 6 uses
  %i.bo = icmp samesign ule i64 %i.ba, %i.bl
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bb, i64 range(i64 1, -9223372036854775808) %i.ba, i1 false), !noalias !142
  %min.iters.check = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check328 = icmp ult i64 %i.ba, 32
  br i1 %min.iters.check328, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.ba, 24
  %n.vec = and i64 %i.ba, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bq, align 1, !noalias !143 ; 2 uses
  %wide.load329 = load <16 x i8>, ptr %i.br, align 1, !noalias !143 ; 2 uses
  %i.bs = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bt = add <16 x i8> %wide.load329, splat (i8 -65)
  %i.bu = icmp ult <16 x i8> %i.bs, splat (i8 26)
  %i.bv = icmp ult <16 x i8> %i.bt, splat (i8 26)
  %i.bw = select <16 x i1> %i.bu, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bx = select <16 x i1> %i.bv, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.by = or <16 x i8> %i.bw, %wide.load
  %i.bz = or <16 x i8> %i.bx, %wide.load329
  store <16 x i8> %i.by, ptr %i.bq, align 1, !noalias !143
  store <16 x i8> %i.bz, ptr %i.br, align 1, !noalias !143
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %.loopexit335, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec330 = and i64 %i.ba, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index331 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next333, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index331 ; 2 uses
  %wide.load332 = load <8 x i8>, ptr %i.cb, align 1, !noalias !143 ; 2 uses
  %i.cc = add <8 x i8> %wide.load332, splat (i8 -65)
  %i.cd = icmp ult <8 x i8> %i.cc, splat (i8 26)
  %i.ce = select <8 x i1> %i.cd, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.cf = or <8 x i8> %i.ce, %wide.load332
  store <8 x i8> %i.cf, ptr %i.cb, align 1, !noalias !143
  %index.next333 = add nuw i64 %index331, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next333, %n.vec330
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n334 = icmp eq i64 %i.ba, %n.vec330
  br i1 %cmp.n334, label %.loopexit335, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.06.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec330, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.0.06.i = phi i64 [ %i.cm, %vec.epilog.scalar.ph ], [ %.sroa.0.06.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.0.06.i ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !143, !noundef !3 ; 2 uses
  %i.cj = add i8 %i.ci, -65
  %i.ck = icmp ult i8 %i.cj, 26
  %i.cl = select i1 %i.ck, i8 32, i8 0
  %.sroa.03.0.i = or i8 %i.cl, %i.ci
  store i8 %.sroa.03.0.i, ptr %i.ch, align 1, !noalias !143
  %i.cm = add nuw nsw i64 %.sroa.0.06.i, 1        ; 2 uses
  %exitcond.not.i8 = icmp eq i64 %i.cm, %i.ba
  br i1 %exitcond.not.i8, label %.loopexit335, label %vec.epilog.scalar.ph, !llvm.loop !119

bb.n:                                             ; preds = %bb.k
  %i.cn = ptrtoint ptr %i.bh to i64
  store i64 %i.cn, ptr %i.ag, align 8
  store i64 -1, ptr %i.f, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.z, %bb.n
  %i.co = load i64, ptr %i.ak, align 8, !alias.scope !147, !noalias !148, !noundef !3 ; 3 uses
  %i.cp = load i64, ptr %i.af, align 8, !range !14, !alias.scope !147, !noalias !148, !noundef !3
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.aa unwind label %bb.q, !noalias !148

bb.q:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.s, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.q ], [ %i.ct, %bb.s ], [ %i.cy, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsgHAIXRTqFF5_9pep440_rs7version17VersionParseErrorEEB12_(i64 %i.bg, ptr %i.bh) #24
          to label %common.resume unwind label %bb.aj

.loopexit335:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i64 %i.bl, ptr %i.e, align 8, !alias.scope !140, !noalias !149
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !140, !noalias !149
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !140, !noalias !149
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !152
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.ba)
          to label %bb.t unwind label %bb.s, !noalias !152

bb.s:                                             ; preds = %.loopexit335
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %.body unwind label %bb.u, !noalias !150

bb.t:                                             ; preds = %.loopexit335
  %i.cu = load i64, ptr %i.b, align 8, !range !7, !noalias !152, !noundef !3
end_hunk_0
begin_hunk_1_@_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12into_pattern:bb.a
  %i.en = and i64 %i.eg, -16777216
  %i.eo = or disjoint i64 %i.dx, %i.en
  %i.ep = or disjoint i64 %i.eo, 12582912
  br label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall8set_post.exit.thread.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall8set_post.exit.i: ; preds = %bb.bb
  br i1 %i.ej, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall8set_post.exit.thread3.i, label %bb.bi

bb.bg:                                            ; preds = %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall8set_post.exit.thread3.i
  store i64 %i.dv, ptr %i.ee, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.dx, ptr %i.eq, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %bb.az
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bi:                                            ; preds = %bb.bg, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall8set_post.exit.i, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall8set_post.exit.thread.i
  %.sroa.0.0.i16 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.et = load i64, ptr %i.es, align 8, !range !7, !noundef !3 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.i16, ptr %i.d, align 8
  %i.ew = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE8make_mutBJ_(ptr noalias noundef align 8 dereferenceable(8) %i.d)
          to label %bb.bl unwind label %bb.bj     ; 2 uses

bb.bj:                                            ; preds = %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread3.i, %bb.bi
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ey = load ptr, ptr %i.d, align 8, !alias.scope !259, !nonnull !3, !noundef !3
  %i.ez = atomicrmw sub ptr %i.ey, i64 1 release, align 8, !noalias !259
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.bk, label %.body

bb.bk:                                            ; preds = %bb.bj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.bs

bb.bl:                                            ; preds = %bb.bi
  %i.fb = load i64, ptr %i.ew, align 8, !range !5, !noundef !3
  %.not.i24 = icmp eq i64 %i.fb, 2
  br i1 %.not.i24, label %bb.bm, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread3.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread3.i: ; preds = %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i, %bb.bo, %bb.bl
  %i.fc = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version9make_full(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.br unwind label %bb.bj     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 40 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !260, !noundef !3 ; 3 uses
  %i.ff = lshr i64 %i.fe, 21
  %i.fg = and i64 %i.ff, 7
  %i.fh = trunc nuw i64 %i.et to i1               ; 2 uses
  switch i64 %i.fg, label %bb.bn [
    i64 0, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i
    i64 2, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i
    i64 3, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i
    i64 4, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i
    i64 6, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i
    i64 7, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i
  ]

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.fh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fi = icmp ugt i64 %i.ev, 2097151
  br i1 %i.fi, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread3.i, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.fj = and i64 %i.fe, -16777216
  %i.fk = or disjoint i64 %i.fj, 10485760
  br label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread.i: ; preds = %bb.bq, %bb.bp
  %storemerge.i.i26 = phi i64 [ %i.fk, %bb.bp ], [ %i.fn, %bb.bq ]
  store i64 %storemerge.i.i26, ptr %i.fd, align 8, !alias.scope !260
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  %i.fl = and i64 %i.fe, -16777216
  %i.fm = or disjoint i64 %i.ev, %i.fl
  %i.fn = or disjoint i64 %i.fm, 2097152
  br label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i: ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  br i1 %i.fh, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread3.i, label %bb.bt

bb.br:                                            ; preds = %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread3.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %i.et, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 %i.ev, ptr %i.fp, align 8
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bk
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bt:                                            ; preds = %bb.br, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.i, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall7set_dev.exit.thread.i
  %.sroa.0.0.i25 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.i25, ptr %i.c, align 8, !noalias !261
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !261, !noundef !3 ; 2 uses
  %i.fu = icmp ult i64 %i.ft, 384307168202282326
  call void @llvm.assume(i1 %i.fu)
  %.not.i30 = icmp eq i64 %i.ft, 0
  br i1 %.not.i30, label %bb.bu, label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !261
  store ptr %.sroa.0.0.i25, ptr %i.a, align 8, !noalias !261
  %i.fv = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE8make_mutBJ_(ptr noalias noundef align 8 dereferenceable(8) %i.a)
          to label %bb.bx unwind label %bb.bv, !noalias !261 ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cc, %.body.i.i.i, %bb.bv
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fw, %bb.bv ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.cc ]
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.fx = load ptr, ptr %i.a, align 8, !alias.scope !265, !noalias !261, !nonnull !3, !noundef !3
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !266
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bw, label %bb.cr

bb.bw:                                            ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cr unwind label %bb.cf, !noalias !261

bb.bx:                                            ; preds = %bb.bu
  %i.ga = load i64, ptr %i.fv, align 8, !range !5, !noalias !261, !noundef !3
  %.not.i.i32 = icmp eq i64 %i.ga, 2
  br i1 %.not.i.i32, label %.loopexit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !261, !nonnull !3, !noundef !3 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 104 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !noalias !261, !noundef !3 ; 4 uses
  store i64 0, ptr %i.gd, align 8, !noalias !261
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.by, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.gh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_.exit.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %.sroa.0.010.i.i.i ; 4 uses
  %i.gh = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 4 uses
  %i.gi = load i64, ptr %i.gg, align 8, !range !6, !alias.scope !267, !noalias !261, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.gi, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgHAIXRTqFF5_9pep440_rs.exit.i.i.i.i unwind label %bb.ca, !noalias !261

bb.ca:                                            ; preds = %bb.bz
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %.body.i.i.i unwind label %bb.cb, !noalias !261

bb.cb:                                            ; preds = %bb.ca
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !261
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgHAIXRTqFF5_9pep440_rs.exit.i.i.i.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_.exit.i.i.i unwind label %bb.cd, !noalias !261

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgHAIXRTqFF5_9pep440_rs.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.gl = icmp eq i64 %i.gh, %i.ge
  br i1 %i.gl, label %.loopexit.i, label %.lr.ph.i.i.i

bb.cc:                                            ; preds = %.lr.ph
  %i.gm = add i64 %.sroa.0.1.i.i.i70, 1           ; 2 uses
  %i.gn = icmp eq i64 %i.gm, %i.ge
  br i1 %i.gn, label %.body.i.i, label %.lr.ph

bb.cd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgHAIXRTqFF5_9pep440_rs.exit.i.i.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cd, %bb.ca
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.go, %bb.cd ], [ %i.gj, %bb.ca ] ; 2 uses
  %i.gp = icmp eq i64 %i.gh, %i.ge
  br i1 %i.gp, label %.body.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.cc
  %.sroa.0.1.i.i.i70 = phi i64 [ %i.gm, %bb.cc ], [ %i.gh, %.body.i.i.i ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %.sroa.0.1.i.i.i70
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.gq) #24
          to label %bb.cc unwind label %bb.ce, !noalias !261

bb.ce:                                            ; preds = %.lr.ph
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !261
  unreachable

bb.cf:                                            ; preds = %bb.bw
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !261
  unreachable

bb.cg:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 24, i1 false)
  %i.gt = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version9make_full(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ck unwind label %bb.cp, !noalias !261

.loopexit.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEBF_.exit.i.i.i, %bb.by, %bb.bx
  %i.gu = load ptr, ptr %i.a, align 8, !noalias !261, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.cj

bb.ci:                                            ; preds = %.loopexit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ct unwind label %bb.d

bb.cj:                                            ; preds = %bb.ch
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1i_.exit.i12.i: ; preds = %bb.co, %bb.cl
  %eh.lpad-body14.i = phi { ptr, i32 } [ %i.ha, %bb.co ], [ %i.gy, %bb.cl ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %.thread.i

bb.ck:                                            ; preds = %bb.cg
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 88 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %bb.cm unwind label %bb.cl, !noalias !261

bb.cl:                                            ; preds = %bb.ck
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1i_.exit.i12.i unwind label %bb.cn, !noalias !261

bb.cm:                                            ; preds = %bb.ck
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1b_.exit15.i unwind label %bb.co, !noalias !261

bb.cn:                                            ; preds = %bb.cl
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !261
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1i_.exit.i12.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1b_.exit15.i: ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !261
  %i.hb = load ptr, ptr %i.c, align 8, !noalias !261, !nonnull !3, !noundef !3
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cg
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %.thread.i unwind label %bb.cq, !noalias !261

bb.cq:                                            ; preds = %bb.cs, %bb.cr, %bb.cp
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.cr:                                            ; preds = %bb.bw, %.body.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #24
          to label %.body unwind label %bb.cq

.thread.i:                                        ; preds = %bb.cp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1i_.exit.i12.i
  %.pn8.ph.i = phi { ptr, i32 } [ %i.hc, %bb.cp ], [ %eh.lpad-body14.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1i_.exit.i12.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.he = load ptr, ptr %i.c, align 8, !alias.scope !271, !noalias !261, !nonnull !3, !noundef !3
  %i.hf = atomicrmw sub ptr %i.he, i64 1 release, align 8, !noalias !272
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.cs, label %.body

bb.cs:                                            ; preds = %.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.cq, !noalias !261

bb.ct:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1b_.exit15.i, %bb.ci
  %.sroa.0.0.i31 = phi ptr [ %i.hb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1b_.exit15.i ], [ %i.gu, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hi = load i8, ptr %i.hh, align 8, !range !13, !noundef !3
  %i.hj = load i64, ptr %0, align 8, !range !7, !alias.scope !273, !noundef !3
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version14ReleaseNumbersEBF_.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecyEECsgHAIXRTqFF5_9pep440_rs.exit.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %common.resume unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.cy, %bb.cz, %bb.cv
  %common.resume.op = phi { ptr, i32 } [ %i.hm, %bb.cv ], [ %eh.lpad-body, %bb.cz ], [ %eh.lpad-body, %bb.cy ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecyEECsgHAIXRTqFF5_9pep440_rs.exit.i: ; preds = %bb.cu
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hl)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version14ReleaseNumbersEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version14ReleaseNumbersEBF_.exit: ; preds = %bb.ct, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecyEECsgHAIXRTqFF5_9pep440_rs.exit.i
  %i.ho = trunc nuw i8 %i.hi to i1
  %i.hp = insertvalue { ptr, i1 } poison, ptr %.sroa.0.0.i31, 0
  %i.hq = insertvalue { ptr, i1 } %i.hp, i1 %i.ho, 1
  ret { ptr, i1 } %i.hq

bb.cx:                                            ; preds = %bb.cz, %.body
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.cy:                                            ; preds = %.body
  br i1 %.sroa.0.0.lpad-body, label %bb.cz, label %common.resume

bb.cz:                                            ; preds = %bb.cy
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.hs) #24
          to label %common.resume unwind label %bb.cx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !278, !noundef !3 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !278, !noundef !3 ; 5 uses
  %.not8.i = icmp ult i64 %i.b, %i.e
  br i1 %.not8.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !278, !nonnull !3, !noundef !3
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa7.i = phi i64 [ %i.b, %bb.a ], [ %i.e, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %i.g = icmp ult i64 %.lcssa7.i, %i.b
  %.not5.i = icmp ugt i64 %.lcssa7.i, %i.e
  %or.cond.i = or i1 %i.g, %.not5.i
  br i1 %or.cond.i, label %bb.d, label %_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_12parse_number0EB8_.exit, !prof !4

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi i64 [ %i.b, %.lr.ph.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noalias !278, !noundef !3
  %i.k = add i8 %i.j, -48
  %.sroa.0.0.i.i = icmp ult i8 %i.k, 10
  br i1 %.sroa.0.0.i.i, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.h, 1                          ; 3 uses
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !278
  %exitcond.not.i = icmp eq i64 %i.l, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %.lcssa7.i, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !278
  unreachable

_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_12parse_number0EB8_.exit: ; preds = %._crit_edge.i
  %i.m = icmp eq i64 %.lcssa7.i, %i.b
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_12parse_number0EB8_.exit
  store i64 0, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_12parse_number0EB8_.exit
  %i.n = sub nuw i64 %.lcssa7.i, %i.b
  %i.o = load ptr, ptr %i.c, align 8, !alias.scope !278, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.b
  %i.q = tail call fastcc { i64, ptr } @_RNvNtCsgHAIXRTqFF5_9pep440_rs7version9parse_u64(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.n) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 3 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.m, %_RNvXsy_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_24VersionPatternParseErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_17VersionParseErrorE4from.exit, %bb.e
  ret void

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !279
  %i.u = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 153) 8, i64 noundef 8) #22, !noalias !279 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %_RNvXsy_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_24VersionPatternParseErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_17VersionParseErrorE4from.exit, !prof !10

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #21
          to label %.noexc.i unwind label %bb.j, !noalias !279

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version16PatternErrorKindEBF_(ptr nonnull align 8 %i.s) #24
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.w

_RNvXsy_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_24VersionPatternParseErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_17VersionParseErrorE4from.exit: ; preds = %bb.h
  store ptr %i.s, ptr %i.u, align 8, !noalias !279
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.y, align 8
  store i64 2, ptr %0, align 8
  br label %bb.g

bb.m:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %i.s to i64
  store i64 1, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser13parse_pattern(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [152 x i8], align 8               ; 13 uses
  %i.m = alloca [4 x i8], align 4                 ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %.val = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 7 uses
  %.val61 = load i64, ptr %i.w, align 8, !noundef !3 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 0, ptr %i.m, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.val61
  %i.y = icmp samesign eq i64 %.val61, 0
  br i1 %i.y, label %.loopexit162, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.01.07.i = phi i8 [ %.sroa.01.1.i, %bb.e ], [ 0, %bb.a ]
  %.sroa.03.06.i = phi i8 [ %.sroa.03.1.i, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.sroa.09.05.i = phi ptr [ %i.z, %bb.e ], [ %.val, %bb.a ] ; 2 uses
  %.sroa.023.04.i = phi i8 [ %.sroa.023.1.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.05.i, i64 1 ; 2 uses
  %i.aa = load i8, ptr %.sroa.09.05.i, align 1, !noundef !3 ; 3 uses
  %i.ab = icmp eq i8 %i.aa, 46
  br i1 %i.ab, label %bb.b, label %bb.c

._crit_edge.i:                                    ; preds = %bb.e
  %i.ac = trunc nuw i8 %.sroa.01.1.i to i1
  %i.ad = icmp ult i8 %.sroa.03.1.i, 4
  %or.cond49.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond49.i, label %bb.h, label %.loopexit162

bb.b:                                             ; preds = %.lr.ph.i
  %i.ae = trunc nuw i8 %.sroa.01.07.i to i1
  %i.af = icmp ult i8 %.sroa.03.06.i, 4
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.d, label %.loopexit162

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = icmp ult i8 %i.aa, 48
  br i1 %i.ag, label %.loopexit162, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ah = zext nneg i8 %.sroa.03.06.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ah
  store i8 %.sroa.023.04.i, ptr %i.ai, align 1
  %i.aj = add nuw nsw i8 %.sroa.03.06.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.023.1.i = phi i8 [ 0, %bb.d ], [ %i.aq, %bb.g ] ; 2 uses
  %.sroa.03.1.i = phi i8 [ %i.aj, %bb.d ], [ %.sroa.03.06.i, %bb.g ] ; 4 uses
  %.sroa.01.1.i = phi i8 [ 0, %bb.d ], [ 1, %bb.g ] ; 2 uses
  %i.ak = icmp eq ptr %i.z, %i.x
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.c
  %i.al = add i8 %i.aa, -48                       ; 2 uses
  %i.am = icmp ugt i8 %i.al, 9
  br i1 %i.am, label %.loopexit162, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.023.04.i, i8 10) ; 2 uses
  %i.ao = extractvalue { i8, i1 } %i.an, 1
  %i.ap = extractvalue { i8, i1 } %i.an, 0        ; 2 uses
  %i.aq = add i8 %i.al, %i.ap                     ; 2 uses
  %i.ar = icmp ult i8 %i.aq, %i.ap
  %or.cond48.i = or i1 %i.ao, %i.ar
  br i1 %or.cond48.i, label %.loopexit162, label %bb.e, !prof !4

bb.h:                                             ; preds = %._crit_edge.i
  %i.as = zext nneg i8 %.sroa.03.1.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.as
  store i8 %.sroa.023.1.i, ptr %i.at, align 1
  %i.au = add nuw nsw i8 %.sroa.03.1.i, 1
  %i.av = load i8, ptr %i.m, align 4, !noundef !3
  %i.aw = zext i8 %i.av to i64                    ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !noundef !3
  %i.ba = zext i8 %i.az to i64                    ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.bd = load i8, ptr %i.bc, align 2, !noundef !3
  %i.be = zext i8 %i.bd to i64                    ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !3
  %i.bi = zext i8 %i.bh to i64                    ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 24
  %i.bk = or disjoint i64 %i.ax, %i.bb
  %i.bl = or disjoint i64 %i.bk, %i.bf
  %i.bm = or disjoint i64 %i.bl, %i.bj
  %i.bn = or disjoint i64 %i.bm, 10485760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 1, ptr %i.l, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %i.bp, align 8
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.aw, ptr %.sroa.436.0..sroa_idx.i, align 8
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.ba, ptr %.sroa.537.0..sroa_idx.i, align 8
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %i.be, ptr %.sroa.638.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.bi, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %i.bn, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i8 %i.au, ptr %.sroa.9.0..sroa_idx.i, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !345
  %i.bq = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 153) 152, i64 noundef 8) #22, !noalias !345 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.i, label %bb.l, !prof !10

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #21
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.l) #24
          to label %.thread129 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread133.loopexit:                              ; preds = %bb.am, %bb.ak, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

.thread133.loopexit.split-lp:                     ; preds = %bb.bj, %.invoke, %bb.aq, %bb.ae, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread.i, %bb.ab, %bb.aa, %bb.x, %bb.w, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit, %bb.q, %bb.n, %bb.af, %.noexc.i.i, %bb.aw, %bb.ba, %bb.bd, %bb.bg, %bb.bm, %bb.bp, %bb.br
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bq, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.bq, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bu, align 8
  br label %bb.o

.loopexit162:                                     ; preds = %bb.g, %bb.f, %bb.c, %bb.b, %bb.a, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 14 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !346, !noundef !3 ; 5 uses
  %.not9.i = icmp ult i64 %i.bw, %.val61
  br i1 %.not9.i, label %.lr.ph.i63, label %_RNCNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB7_6Parser13parse_pattern0B9_.exit.i

_RNCNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB7_6Parser13parse_pattern0B9_.exit.i: ; preds = %bb.m, %.lr.ph.i63, %.loopexit162
  %i.bx = phi i64 [ %i.bw, %.loopexit162 ], [ %.val61, %bb.m ], [ %i.bz, %.lr.ph.i63 ] ; 8 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %.not5.i = icmp ugt i64 %i.bx, %.val61
  %or.cond.i62 = or i1 %i.by, %.not5.i
  br i1 %or.cond.i62, label %bb.n, label %bb.p, !prof !4

.lr.ph.i63:                                       ; preds = %.loopexit162, %bb.m
  %i.bz = phi i64 [ %i.cc, %bb.m ], [ %i.bw, %.loopexit162 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !346, !noundef !3
  switch i8 %i.cb, label %_RNCNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB7_6Parser13parse_pattern0B9_.exit.i [
    i8 9, label %bb.m
    i8 10, label %bb.m
    i8 12, label %bb.m
    i8 13, label %bb.m
    i8 32, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.i63, %.lr.ph.i63, %.lr.ph.i63, %.lr.ph.i63, %.lr.ph.i63
  %i.cc = add i64 %i.bz, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.bv, align 8, !alias.scope !346
  %exitcond.not.i = icmp eq i64 %i.cc, %.val61
  br i1 %exitcond.not.i, label %_RNCNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB7_6Parser13parse_pattern0B9_.exit.i, label %.lr.ph.i63

bb.n:                                             ; preds = %_RNCNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB7_6Parser13parse_pattern0B9_.exit.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.bx, i64 noundef %.val61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21
          to label %.noexc unwind label %.thread133.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.ch, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.av, %bb.ao, %bb.ag, %bb.l
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version6ParserEBF_(ptr noalias noundef align 8 dereferenceable(160) %1)
  br label %bb.ck

bb.p:                                             ; preds = %_RNCNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB7_6Parser13parse_pattern0B9_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %.not.i = icmp ult i64 %i.bx, %.val61
  br i1 %.not.i, label %bb.q, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit

bb.q:                                             ; preds = %bb.p
  %i.cd = sub nuw i64 %.val61, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !348
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef range(i64 1, -9223372036854775808) 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.cd)
          to label %.noexc65 unwind label %.thread133.loopexit.split-lp

.noexc65:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !350, !noalias !348, !noundef !3 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !350, !noalias !348 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !349, !noalias !348, !nonnull !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !349, !noalias !348, !nonnull !3
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.ch)
  %exitcond.not.i2.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.ch
  br i1 %exitcond.not.i2.not.i.i, label %.lr.ph.i.i, label %.sink.split.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cj = add i64 %i.ck, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc65, %bb.r
  %i.ck = phi i64 [ %i.cj, %bb.r ], [ %.promoted.i.i.i, %.noexc65 ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ck
  %.val.i.i.i = load i8, ptr %i.cl, align 1, !noalias !351, !noundef !3 ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.cm, align 1, !noalias !351, !noundef !3 ; 2 uses
  %i.cn = add i8 %.val.i.i.i, -65
  %i.co = icmp ult i8 %i.cn, 26
  %i.cp = select i1 %i.co, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i = or i8 %i.cp, %.val.i.i.i
  %i.cq = add i8 %.val7.i.i.i, -65
  %i.cr = icmp ult i8 %i.cq, 26
  %i.cs = select i1 %i.cr, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i = or i8 %i.cs, %.val7.i.i.i
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.r, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i: ; preds = %.lr.ph.i.i
  %.not9.i64 = icmp ult i64 %i.ck, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !348
  br i1 %.not9.i64, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit, label %bb.s

.sink.split.i:                                    ; preds = %bb.r, %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !348
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i
  %i.ct = icmp eq i64 %i.bx, -1
  br i1 %i.ct, label %.invoke, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.cu = add nuw i64 %i.bx, 1
  store i64 %i.cu, ptr %i.bv, align 8, !alias.scope !347, !noalias !352
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit: ; preds = %bb.t, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !353
  invoke fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(160) %1)
          to label %.noexc70 unwind label %.thread133.loopexit.split-lp

.noexc70:                                         ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit
  %i.cv = load i64, ptr %i.j, align 8, !range !5, !noalias !353, !noundef !3 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc70
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !353, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !353
  br label %bb.ag

bb.v:                                             ; preds = %.noexc70
  %i.cz = load i64, ptr %i.cx, align 8, !noalias !353 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !353
  store i64 -9223372036854775805, ptr %i.i, align 8, !noalias !353
  %i.da = trunc nuw i64 %i.cv to i1
  br i1 %i.da, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version9ErrorKindEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %.noexc71 unwind label %.thread133.loopexit.split-lp

.noexc71:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !353
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.db = load i64, ptr %i.bv, align 8, !alias.scope !355, !noalias !356, !noundef !3 ; 5 uses
  %i.dc = load i64, ptr %i.w, align 8, !alias.scope !355, !noalias !356, !noundef !3 ; 2 uses
  %.not.i.i68 = icmp ult i64 %i.db, %i.dc
  br i1 %.not.i.i68, label %bb.x, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread.i

bb.x:                                             ; preds = %.noexc71
  %i.dd = sub nuw i64 %i.dc, %i.db
  %i.de = load ptr, ptr %i.v, align 8, !alias.scope !355, !noalias !356, !nonnull !3, !noundef !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !357
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef range(i64 1, -9223372036854775808) 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef range(i64 0, -9223372036854775808) %i.dd)
          to label %.noexc72 unwind label %.thread133.loopexit.split-lp

.noexc72:                                         ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !359, !noalias !357, !noundef !3 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !359, !noalias !357 ; 3 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !358, !noalias !357, !nonnull !3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !358, !noalias !357, !nonnull !3
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i, i64 %i.di)
  %exitcond.not.i2.not.i.i.i = icmp ult i64 %.promoted.i.i.i.i, %i.di
  br i1 %exitcond.not.i2.not.i.i.i, label %.lr.ph.i.i.i, label %.sink.split.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = add i64 %i.dl, 1                        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dk, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.sink.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc72, %bb.y
  %i.dl = phi i64 [ %i.dk, %bb.y ], [ %.promoted.i.i.i.i, %.noexc72 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dl
  %.val.i.i.i.i = load i8, ptr %i.dm, align 1, !noalias !360, !noundef !3 ; 2 uses
  %.val7.i.i.i.i = load i8, ptr %i.dn, align 1, !noalias !360, !noundef !3 ; 2 uses
  %i.do = add i8 %.val.i.i.i.i, -65
  %i.dp = icmp ult i8 %i.do, 26
  %i.dq = select i1 %i.dp, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i.i = or i8 %i.dq, %.val.i.i.i.i
  %i.dr = add i8 %.val7.i.i.i.i, -65
  %i.ds = icmp ult i8 %i.dr, 26
  %i.dt = select i1 %i.ds, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i.i = or i8 %i.dt, %.val7.i.i.i.i
  %.not.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i.i, %.sroa.01.0.i.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.y, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i: ; preds = %.lr.ph.i.i.i
  %.not9.i.i = icmp ult i64 %i.dl, %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !357
  br i1 %.not9.i.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread.i, label %bb.z

.sink.split.i.i:                                  ; preds = %bb.y, %.noexc72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !357
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i.i, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i
  %i.du = icmp eq i64 %i.db, -1
  br i1 %i.du, label %.invoke, label %bb.ab, !prof !10

bb.aa:                                            ; preds = %bb.v
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.441.0.copyload.i = load i64, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !353
  store i64 -9223372036854775805, ptr %i.f, align 8, !noalias !353
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.441.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !353
  %i.dv = invoke noundef nonnull align 8 ptr @_RNvXsx_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_24VersionPatternParseErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ErrorKindE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %.noexc74 unwind label %.thread133.loopexit.split-lp

.noexc74:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !353
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.dw = add nuw i64 %i.db, 1
  store i64 %i.dw, ptr %i.bv, align 8, !alias.scope !355, !noalias !356
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %i.cz, ptr %i.dx, align 8, !alias.scope !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !353
  invoke fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(160) %1)
          to label %.noexc75 unwind label %.thread133.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ab
  %i.dy = load i64, ptr %i.h, align 8, !range !5, !noalias !353, !noundef !3 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.dz, label %bb.ac, label %bb.ad

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread.i: ; preds = %.noexc77, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i, %.noexc71
  %.sroa.038.0.i = phi i64 [ %i.ec, %.noexc77 ], [ %i.cz, %.noexc71 ], [ %i.cz, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i ]
  invoke fastcc void @_RNvMsn_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_14ReleaseNumbers4push(ptr noalias noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %.sroa.038.0.i)
          to label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser31parse_epoch_and_initial_release.exit unwind label %.thread133.loopexit.split-lp

bb.ac:                                            ; preds = %.noexc75
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !353, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !353
  br label %bb.ag

bb.ad:                                            ; preds = %.noexc75
  %i.ec = load i64, ptr %i.ea, align 8, !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !353
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !353
  %i.ed = trunc nuw i64 %i.dy to i1
  br i1 %i.ed, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version9ErrorKindEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %.noexc77 unwind label %.thread133.loopexit.split-lp

.noexc77:                                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !353
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread.i

bb.af:                                            ; preds = %bb.ad
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.450.0.copyload.i = load i64, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !353
  store i64 -9223372036854775804, ptr %i.e, align 8, !noalias !353
  %.sroa.436.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.450.0.copyload.i, ptr %.sroa.436.0..sroa_idx.i69, align 8, !noalias !353
  %i.ee = invoke noundef nonnull align 8 ptr @_RNvXsx_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_24VersionPatternParseErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ErrorKindE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %.noexc78 unwind label %.thread133.loopexit.split-lp

.noexc78:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !353
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc74, %bb.u, %bb.ac, %.noexc78
  %.sroa.0.2.i.ph = phi ptr [ %i.ee, %.noexc78 ], [ %i.eb, %bb.ac ], [ %i.cy, %bb.u ], [ %i.dv, %.noexc74 ]
  store ptr %.sroa.0.2.i.ph, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ef, align 8
  br label %bb.o

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser31parse_epoch_and_initial_release.exit: ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser7bump_if.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.eg = load i64, ptr %i.bv, align 8, !noalias !3, !noundef !3 ; 3 uses
  %i.eh = load i64, ptr %i.w, align 8, !alias.scope !362, !noalias !363, !noundef !3 ; 2 uses
  %.not.i10.i = icmp ult i64 %i.eg, %i.eh
  br i1 %.not.i10.i, label %.lr.ph.i81, label %.loopexit

.lr.ph.i81:                                       ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser31parse_epoch_and_initial_release.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc101, %.lr.ph.i81
  %i.em = phi i64 [ %i.eh, %.lr.ph.i81 ], [ %i.fj, %.noexc101 ]
  %i.en = phi i64 [ %i.eg, %.lr.ph.i81 ], [ %i.fi, %.noexc101 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.eo = sub nuw i64 %i.em, %i.en
  %i.ep = load ptr, ptr %i.v, align 8, !alias.scope !365, !noalias !363, !nonnull !3, !noundef !3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !366
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef range(i64 1, -9223372036854775808) 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef range(i64 0, -9223372036854775808) %i.eo)
          to label %.noexc98 unwind label %.thread133.loopexit

.noexc98:                                         ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.er = load i64, ptr %i.ej, align 8, !alias.scope !368, !noalias !366, !noundef !3 ; 3 uses
  %.promoted.i.i.i.i82 = load i64, ptr %i.ei, align 8, !alias.scope !368, !noalias !366 ; 3 uses
  %.val2.i.i.i.i.i.i83 = load ptr, ptr %i.b, align 8, !alias.scope !367, !noalias !366, !nonnull !3
  %.val.i.i.i.i.i.i84 = load ptr, ptr %i.ek, align 8, !alias.scope !367, !noalias !366, !nonnull !3
  %umax.i.i.i.i85 = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i82, i64 %i.er)
  %exitcond.not.i2.not.i.i.i86 = icmp ult i64 %.promoted.i.i.i.i82, %i.er
  br i1 %exitcond.not.i2.not.i.i.i86, label %.lr.ph.i.i.i89, label %.sink.split.i.i87

bb.ai:                                            ; preds = %.lr.ph.i.i.i89
  %i.es = add i64 %i.et, 1                        ; 2 uses
  %exitcond.not.i.i.i.i97 = icmp eq i64 %i.es, %umax.i.i.i.i85
  br i1 %exitcond.not.i.i.i.i97, label %.sink.split.i.i87, label %.lr.ph.i.i.i89

.lr.ph.i.i.i89:                                   ; preds = %.noexc98, %bb.ai
  %i.et = phi i64 [ %i.es, %bb.ai ], [ %.promoted.i.i.i.i82, %.noexc98 ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i83, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i84, i64 %i.et
  %.val.i.i.i.i90 = load i8, ptr %i.eu, align 1, !noalias !369, !noundef !3 ; 2 uses
  %.val7.i.i.i.i91 = load i8, ptr %i.ev, align 1, !noalias !369, !noundef !3 ; 2 uses
  %i.ew = add i8 %.val.i.i.i.i90, -65
  %i.ex = icmp ult i8 %i.ew, 26
  %i.ey = select i1 %i.ex, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i.i92 = or i8 %i.ey, %.val.i.i.i.i90
  %i.ez = add i8 %.val7.i.i.i.i91, -65
  %i.fa = icmp ult i8 %i.ez, 26
  %i.fb = select i1 %i.fa, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i.i93 = or i8 %i.fb, %.val7.i.i.i.i91
  %.not.i.i.i.i94 = icmp eq i8 %.sroa.0.0.i.i8.i.i.i.i92, %.sroa.01.0.i.i.i.i.i.i93
  br i1 %.not.i.i.i.i94, label %bb.ai, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i95

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i95: ; preds = %.lr.ph.i.i.i89
  %.not9.i.i96 = icmp ult i64 %i.et, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !366
  br i1 %.not9.i.i96, label %thread-pre-split, label %bb.aj

.sink.split.i.i87:                                ; preds = %bb.ai, %.noexc98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !366
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i87, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i95
  %i.fc = icmp eq i64 %i.en, -1
  br i1 %i.fc, label %.invoke, label %bb.ak, !prof !10

bb.ak:                                            ; preds = %bb.aj
  %i.fd = add nuw i64 %i.en, 1
  store i64 %i.fd, ptr %i.bv, align 8, !alias.scope !365, !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !361
  invoke fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(160) %1)
          to label %.noexc100 unwind label %.thread133.loopexit

.noexc100:                                        ; preds = %bb.ak
  %i.fe = load i64, ptr %i.c, align 8, !range !5, !noalias !361, !noundef !3 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 2
  br i1 %i.ff, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.noexc100
  %i.fg = load i64, ptr %i.el, align 8, !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !361
  %i.fh = trunc nuw i64 %i.fe to i1
  br i1 %i.fh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RNvMsn_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_14ReleaseNumbers4push(ptr noalias noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %i.fg)
          to label %.noexc101 unwind label %.thread133.loopexit

.noexc101:                                        ; preds = %bb.am
  %i.fi = load i64, ptr %i.bv, align 8, !noalias !3, !noundef !3 ; 3 uses
  %i.fj = load i64, ptr %i.w, align 8, !alias.scope !370, !noalias !363, !noundef !3 ; 2 uses
  %.not.i.i88 = icmp ult i64 %i.fi, %i.fj
  br i1 %.not.i.i88, label %bb.ah, label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.fk = load i64, ptr %i.bv, align 8, !alias.scope !371, !noundef !3 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.invoke, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser6unbump.exit.i, !prof !10

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser6unbump.exit.i: ; preds = %bb.an
  %i.fm = add i64 %i.fk, -1                       ; 2 uses
  store i64 %i.fm, ptr %i.bv, align 8, !alias.scope !371
  br label %.loopexit

bb.ao:                                            ; preds = %.noexc100
  %i.fn = load ptr, ptr %i.el, align 8, !noalias !361, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !361
  store ptr %i.fn, ptr %0, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.fo, align 8
  br label %bb.o

thread-pre-split:                                 ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i95
  %.pr = load i64, ptr %i.bv, align 8, !alias.scope !372, !noalias !373
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc101, %thread-pre-split, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser6unbump.exit.i, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser31parse_epoch_and_initial_release.exit
  %i.fp = phi i64 [ %.pr, %thread-pre-split ], [ %i.fm, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser6unbump.exit.i ], [ %i.eg, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser31parse_epoch_and_initial_release.exit ], [ %i.fi, %.noexc101 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.fq = load i64, ptr %i.w, align 8, !alias.scope !372, !noalias !373, !noundef !3 ; 3 uses
  %.not.i.i103 = icmp ult i64 %i.fp, %i.fq
  br i1 %.not.i.i103, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %.loopexit
  %i.fr = sub nuw i64 %i.fq, %i.fp                ; 2 uses
  %.not.i.i.i104 = icmp samesign ult i64 %i.fr, 2
  br i1 %.not.i.i.i104, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = load ptr, ptr %i.v, align 8, !alias.scope !372, !noalias !373, !nonnull !3, !noundef !3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !376
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef range(i64 1, -9223372036854775808) 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ft, i64 noundef range(i64 0, -9223372036854775808) %i.fr)
          to label %.noexc121 unwind label %.thread133.loopexit.split-lp

.noexc121:                                        ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !378, !noalias !376, !noundef !3 ; 3 uses
  %.promoted.i.i.i.i105 = load i64, ptr %i.fu, align 8, !alias.scope !378, !noalias !376 ; 3 uses
  %.val2.i.i.i.i.i.i106 = load ptr, ptr %i.a, align 8, !alias.scope !377, !noalias !376, !nonnull !3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i.i.i107 = load ptr, ptr %i.fx, align 8, !alias.scope !377, !noalias !376, !nonnull !3
  %umax.i.i.i.i108 = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i105, i64 %i.fw)
  %exitcond.not.i2.not.i.i.i109 = icmp ult i64 %.promoted.i.i.i.i105, %i.fw
  br i1 %exitcond.not.i2.not.i.i.i109, label %.lr.ph.i.i.i112, label %.sink.split.i.i110

bb.ar:                                            ; preds = %.lr.ph.i.i.i112
  %i.fy = add i64 %i.fz, 1                        ; 2 uses
  %exitcond.not.i.i.i.i120 = icmp eq i64 %i.fy, %umax.i.i.i.i108
  br i1 %exitcond.not.i.i.i.i120, label %.sink.split.i.i110, label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %.noexc121, %bb.ar
  %i.fz = phi i64 [ %i.fy, %bb.ar ], [ %.promoted.i.i.i.i105, %.noexc121 ] ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i106, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i107, i64 %i.fz
  %.val.i.i.i.i113 = load i8, ptr %i.ga, align 1, !noalias !379, !noundef !3 ; 2 uses
  %.val7.i.i.i.i114 = load i8, ptr %i.gb, align 1, !noalias !379, !noundef !3 ; 2 uses
  %i.gc = add i8 %.val.i.i.i.i113, -65
  %i.gd = icmp ult i8 %i.gc, 26
  %i.ge = select i1 %i.gd, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i.i115 = or i8 %i.ge, %.val.i.i.i.i113
  %i.gf = add i8 %.val7.i.i.i.i114, -65
  %i.gg = icmp ult i8 %i.gf, 26
  %i.gh = select i1 %i.gg, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i.i116 = or i8 %i.gh, %.val7.i.i.i.i114
  %.not.i.i.i.i117 = icmp eq i8 %.sroa.0.0.i.i8.i.i.i.i115, %.sroa.01.0.i.i.i.i.i.i116
  br i1 %.not.i.i.i.i117, label %bb.ar, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i118

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i118: ; preds = %.lr.ph.i.i.i112
  %.not9.i.i119 = icmp ult i64 %i.fz, %i.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  br i1 %.not9.i.i119, label %bb.aw, label %bb.as

.sink.split.i.i110:                               ; preds = %bb.ar, %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  br label %bb.as

bb.as:                                            ; preds = %.sink.split.i.i110, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i118
  %i.gi = icmp ugt i64 %i.fp, -3
  br i1 %i.gi, label %.invoke, label %bb.at, !prof !10

.invoke:                                          ; preds = %bb.aj, %bb.as, %bb.an, %bb.z, %bb.s
  %i.gj = phi ptr [ @41, %bb.an ], [ @31, %bb.z ], [ @31, %bb.s ], [ @31, %bb.as ], [ @31, %bb.aj ]
  %i.gk = phi i64 [ 25, %bb.an ], [ 30, %bb.z ], [ 30, %bb.s ], [ 30, %bb.as ], [ 30, %bb.aj ]
  %i.gl = phi ptr [ @42, %bb.an ], [ @43, %bb.z ], [ @43, %bb.s ], [ @43, %bb.as ], [ @43, %bb.aj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gj, i64 noundef %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #21
          to label %.cont unwind label %.thread133.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.gm = add nuw i64 %i.fp, 2                    ; 2 uses
  store i64 %i.gm, ptr %i.bv, align 8, !alias.scope !372, !noalias !373
  %.not.i111 = icmp ult i64 %i.gm, %i.fq
  br i1 %.not.i111, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !380
  %i.gn = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 153) 8, i64 noundef 8) #22, !noalias !380 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %.noexc.i.i, label %bb.av, !prof !10

.noexc.i.i:                                       ; preds = %bb.au
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #21
          to label %.noexc123 unwind label %.thread133.loopexit.split-lp

.noexc123:                                        ; preds = %.noexc.i.i
  unreachable

bb.av:                                            ; preds = %bb.au
  store ptr null, ptr %i.gn, align 8, !noalias !380
  store ptr %i.gn, ptr %0, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gp, align 8
  br label %bb.o

bb.aw:                                            ; preds = %.loopexit, %bb.ap, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i.i118
  %i.gq = invoke fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser9parse_pre(ptr noalias noundef align 8 dereferenceable(160) %1)
          to label %bb.ay unwind label %.thread133.loopexit.split-lp ; 2 uses

bb.ax:                                            ; preds = %bb.at
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 1, ptr %i.gr, align 8, !alias.scope !374, !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.u, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  %i.gs = call fastcc { ptr, i1 } @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12into_pattern(ptr noalias noundef align 8 captures(address) dereferenceable(160) %i.u) ; 2 uses
  %i.gt = extractvalue { ptr, i1 } %i.gs, 0
  %i.gu = extractvalue { ptr, i1 } %i.gs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %i.gt, ptr %0, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gw = zext i1 %i.gu to i8
  store i8 %i.gw, ptr %i.gv, align 8
  br label %bb.ck

bb.ay:                                            ; preds = %bb.aw
  %.not50 = icmp eq ptr %i.gq, null
  br i1 %.not50, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %i.gq, ptr %0, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gx, align 8
  br label %bb.o

bb.ba:                                            ; preds = %bb.ay
  %i.gy = invoke fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser10parse_post(ptr noalias noundef align 8 dereferenceable(160) %1)
          to label %bb.bb unwind label %.thread133.loopexit.split-lp ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not51 = icmp eq ptr %i.gy, null
  br i1 %.not51, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.gy, ptr %0, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gz, align 8
  br label %bb.o

bb.bd:                                            ; preds = %bb.bb
  %i.ha = invoke fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser9parse_dev(ptr noalias noundef align 8 dereferenceable(160) %1)
          to label %bb.be unwind label %.thread133.loopexit.split-lp ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %.not52 = icmp eq ptr %i.ha, null
  br i1 %.not52, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ha, ptr %0, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.hb, align 8
  br label %bb.o

bb.bg:                                            ; preds = %bb.be
  %i.hc = invoke fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser11parse_local(ptr noalias noundef align 8 dereferenceable(160) %1)
          to label %bb.bh unwind label %.thread133.loopexit.split-lp ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %.not53 = icmp eq ptr %i.hc, null
  br i1 %.not53, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.hc, ptr %0, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.hd, align 8
  br label %bb.o

bb.bj:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_6Parser10bump_whileNCNvB2_13parse_patterns_0EB8_(ptr noalias noundef align 8 dereferenceable(160) %1)
          to label %bb.bk unwind label %.thread133.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.he = load i64, ptr %i.bv, align 8, !noundef !3 ; 2 uses
  %i.hf = load i64, ptr %i.w, align 8, !noundef !3
  %.not54 = icmp ult i64 %i.he, %i.hf
  br i1 %.not54, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  %i.hg = call fastcc { ptr, i1 } @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12into_pattern(ptr noalias noundef align 8 captures(address) dereferenceable(160) %i.p) ; 2 uses
  %i.hh = extractvalue { ptr, i1 } %i.hg, 0
  %i.hi = extractvalue { ptr, i1 } %i.hg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store ptr %i.hh, ptr %0, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hk = zext i1 %i.hi to i8
  store i8 %i.hk, ptr %i.hj, align 8
  br label %bb.ck

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.hl = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hl, i64 noundef %i.he)
          to label %bb.bn unwind label %.thread133.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.hm = load i64, ptr %i.s, align 8, !range !6, !noundef !3
  %.not56 = icmp eq i64 %i.hm, -1
  br i1 %.not56, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bn
  %i.hn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !3, !noundef !3
  %i.hp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.hq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bq unwind label %.thread133.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.hr = load i64, ptr %i.o, align 8, !range !7, !noundef !3
  %i.hs = trunc nuw i64 %i.hr to i1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !range !9, !noundef !3 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.hs, label %bb.br, label %bb.bs, !prof !10

bb.br:                                            ; preds = %bb.bq
  %i.hw = load i64, ptr %i.hv, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hu, i64 %i.hw) #21
          to label %bb.bw unwind label %.thread133.loopexit.split-lp
end_hunk_1
begin_hunk_2_@_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser13parse_pattern:bb.a
  br i1 %i.ib, label %bb.by, label %bb.bx, !prof !10

bb.bw:                                            ; preds = %bb.cd, %bb.by, %bb.br
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.ic = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.id = sub nuw i64 %i.hz, %i.ia
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ie, i64 noundef %i.id)
          to label %bb.ca unwind label %bb.ci

bb.by:                                            ; preds = %bb.bv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ia, i64 noundef %i.hz, i64 noundef %i.hz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #21
          to label %bb.bw unwind label %bb.ci

bb.bz:                                            ; preds = %bb.cg
  %lpad.thr_comm.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

bb.ca:                                            ; preds = %bb.bx
  %i.if = load i64, ptr %i.r, align 8, !range !6, !noundef !3 ; 2 uses
  %.not58 = icmp eq i64 %i.if, -1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ij = load i64, ptr %i.ii, align 8            ; 6 uses
  br i1 %.not58, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.ij, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  %i.ik = load i64, ptr %i.n, align 8, !range !7, !noundef !3
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.in = load i64, ptr %i.im, align 8, !range !9, !noundef !3 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.il, label %bb.cd, label %bb.ce, !prof !10

bb.cd:                                            ; preds = %bb.cc
  %i.ip = load i64, ptr %i.io, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.in, i64 %i.ip) #21
          to label %bb.bw unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cc
  %i.iq = load ptr, ptr %i.io, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ir = icmp ule i64 %i.ij, %i.in
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not59 = icmp eq i64 %i.ij, 0
  br i1 %.not59, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.ih, i64 %i.ij, i1 false)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ca, %bb.ce, %bb.cf
  %.sroa.435.0 = phi i64 [ 0, %bb.ce ], [ %i.ij, %bb.cf ], [ %i.ij, %bb.ca ]
  %.sroa.3.0 = phi ptr [ %i.iq, %bb.ce ], [ %i.iq, %bb.cf ], [ %i.ih, %bb.ca ]
  %.sroa.031.0 = phi i64 [ %i.in, %bb.ce ], [ %i.in, %bb.cf ], [ %i.if, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.031.0, ptr %i.is, align 8
  %.sroa.3.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx33, align 8
  %.sroa.435.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.sroa.435.0, ptr %.sroa.435.0..sroa_idx36, align 8
  %i.it = invoke noundef nonnull align 8 ptr @_RNvXsx_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_24VersionPatternParseErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ErrorKindE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
          to label %bb.ch unwind label %bb.bz

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.it, ptr %0, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.iu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.o

bb.ci:                                            ; preds = %bb.by, %bb.cd, %bb.cb, %bb.bx
  %lpad.thr_comm155 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef align 8 dereferenceable(24) %i.t) #24
          to label %.thread129 unwind label %bb.cj

bb.cj:                                            ; preds = %.thread129, %bb.ci
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ck:                                            ; preds = %bb.ax, %bb.bl, %bb.o
  ret void

bb.cl:                                            ; preds = %.thread129
  resume { ptr, i32 } %.pn128

.thread129:                                       ; preds = %.thread133.loopexit, %.thread133.loopexit.split-lp, %bb.bz, %bb.ci, %bb.j
  %.pn128 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %lpad.thr_comm155, %bb.ci ], [ %lpad.thr_comm.split-lp156, %bb.bz ], [ %lpad.loopexit, %.thread133.loopexit ], [ %lpad.loopexit.split-lp, %.thread133.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version6ParserEBF_(ptr noalias noundef align 8 dereferenceable(160) %1) #24
          to label %bb.cl unwind label %bb.cj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser18bump_if_string_set(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 7 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.j, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = sub nuw i64 %i.c, %i.e                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !395, !noalias !394, !noundef !3 ; 3 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !range !13, !alias.scope !394, !noalias !395, !noundef !3
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !394, !noalias !395, !nonnull !3, !align !12, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !394, !noalias !395, !noundef !3 ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.s, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = add i8 %i.k, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = select i1 %i.w, i8 32, i8 0
  %.sroa.010.0.i = or i8 %i.x, %i.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, %.lr.ph.i
  %.sroa.0.01734.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.ab, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ] ; 3 uses
  %.sroa.8.033.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.01734.i, i64 16 ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.8.033.i, 1
  %i.ad = load ptr, ptr %.sroa.0.01734.i, align 8, !noalias !394, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01734.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !394, !noundef !3 ; 3 uses
  %.not15.i = icmp eq i64 %i.af, 0
  br i1 %.not15.i, label %bb.g, label %bb.f

.loopexit.sink.split.i:                           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ad, align 1, !noalias !394, !noundef !3 ; 2 uses
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.09.0.i = or i8 %i.aj, %i.ag
  %i.ak = icmp ne i8 %.sroa.09.0.i, %.sroa.010.0.i
  %.not.i.i = icmp samesign ugt i64 %i.af, %i.i
  %or.cond.i = select i1 %i.ak, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #21, !noalias !394
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 1, -9223372036854775808) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i), !noalias !394
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.al = load i64, ptr %i.z, align 8, !alias.scope !398, !noalias !396, !noundef !3 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !398, !noalias !396 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !397, !noalias !396, !nonnull !3
  %.val.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !397, !noalias !396, !nonnull !3
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.al)
  %exitcond.not.i2.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.al
  br i1 %exitcond.not.i2.not.i.i, label %.lr.ph.i.i, label %.loopexit.sink.split.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.am = add i64 %i.an, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.an = phi i64 [ %i.am, %bb.i ], [ %.promoted.i.i.i, %bb.h ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.an
  %.val.i.i.i = load i8, ptr %i.ao, align 1, !noalias !399, !noundef !3 ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.ap, align 1, !noalias !399, !noundef !3 ; 2 uses
  %i.aq = add i8 %.val.i.i.i, -65
  %i.ar = icmp ult i8 %i.aq, 26
  %i.as = select i1 %i.ar, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i = or i8 %i.as, %.val.i.i.i
  %i.at = add i8 %.val7.i.i.i, -65
  %i.au = icmp ult i8 %i.at, 26
  %i.av = select i1 %i.au, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i = or i8 %i.av, %.val7.i.i.i
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.i, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i: ; preds = %.lr.ph.i.i
  %.not28.i = icmp ult i64 %i.an, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  br i1 %.not28.i, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, label %.loopexit

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i: ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %bb.f
  %i.aw = icmp eq ptr %i.ab, %i.t
  br i1 %i.aw, label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread, label %bb.e

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.c, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21
  unreachable

.loopexit:                                        ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %.loopexit.sink.split.i
  %i.ax = icmp ult i64 %.sroa.8.033.i, %i.s
  br i1 %i.ax, label %bb.k, label %bb.l

_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread: ; preds = %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i, %bb.d, %bb.b, %bb.c, %bb.m
  %.sroa.3.0 = phi i64 [ %.sroa.8.033.i, %bb.m ], [ undef, %bb.d ], [ undef, %bb.c ], [ undef, %bb.b ], [ undef, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.m ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.thread.i ]
  %i.ay = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.az = insertvalue { i64, i64 } %i.ay, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.az

bb.k:                                             ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.8.033.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !3
  %i.bd = add i64 %i.bc, %i.e                     ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.n, label %bb.m, !prof !10

bb.l:                                             ; preds = %.loopexit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.033.i, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  store i64 %i.bd, ptr %i.d, align 8
  br label %_RNvMso_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_9StringSet11starts_with.exit.thread

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser9parse_dev(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !418, !noundef !3 ; 10 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !418
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !418, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !noalias !418, !noundef !3
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @17, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !range !13, !noalias !418, !noundef !3
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.d, -1
  br i1 %i.p, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw i64 %i.d, 1                      ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !418
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !418
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit: ; preds = %bb.b, %bb.d, %bb.f
  %i.r = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.d ], [ %i.q, %bb.f ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %.not.i5 = icmp ult i64 %i.r, %i.f
  br i1 %.not.i5, label %bb.h, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit

bb.h:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  %i.s = sub nuw i64 %i.f, %i.r                   ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.s, 3
  br i1 %.not.i.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !419, !noalias !420, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !421
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipRShBN_ECsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef range(i64 1, -9223372036854775808) 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !419
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !423, !noalias !421, !noundef !3 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !423, !noalias !421 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !422, !noalias !421, !nonnull !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !422, !noalias !421, !nonnull !3
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.y)
  %exitcond.not.i2.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.y
  br i1 %exitcond.not.i2.not.i.i, label %.lr.ph.i.i, label %.sink.split.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i64 %i.ab, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aa, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %i.ab = phi i64 [ %i.aa, %bb.j ], [ %.promoted.i.i.i, %bb.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ab
  %.val.i.i.i = load i8, ptr %i.ac, align 1, !noalias !424, !noundef !3 ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.ad, align 1, !noalias !424, !noundef !3 ; 2 uses
  %i.ae = add i8 %.val.i.i.i, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = select i1 %i.af, i8 32, i8 0
  %.sroa.0.0.i.i8.i.i.i = or i8 %i.ag, %.val.i.i.i
  %i.ah = add i8 %.val7.i.i.i, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.01.0.i.i.i.i.i = or i8 %i.aj, %.val7.i.i.i
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.i.i8.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i

_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i: ; preds = %.lr.ph.i.i
  %.not9.i = icmp ult i64 %i.ab, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  br i1 %.not9.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, label %bb.k

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i
  %i.ak = icmp ugt i64 %i.r, -4
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #21, !noalias !419
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit: ; preds = %bb.h, %_RNvNtCsgHAIXRTqFF5_9pep440_rs7version29starts_with_ignore_ascii_case.exit.i, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !425
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.al = add nuw i64 %i.r, 3                     ; 6 uses
  store i64 %i.al, ptr %i.c, align 8, !alias.scope !419, !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %1 = icmp ugt i64 %i.al, %i.f
  br i1 %1, label %3, label %2, !prof !10

2:                                                ; preds = %bb.m
  %.not.i8 = icmp eq i64 %i.f, %i.al
  br i1 %.not.i8, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11, label %bb.n

3:                                                ; preds = %bb.m
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.f, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !426
  unreachable

bb.n:                                             ; preds = %2
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !426, !noundef !3
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @17, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !range !13, !noalias !426, !noundef !3
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.o:                                             ; preds = %bb.n
  %i.as = icmp eq i64 %i.al, -1
  br i1 %i.as, label %bb.q, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.at = add nuw i64 %i.r, 4
  store i64 %i.at, ptr %i.c, align 8, !alias.scope !426
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !426
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11: ; preds = %2, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(160) %0)
  %i.au = load i64, ptr %i.b, align 8, !range !5, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.s:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ay = load i64, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = trunc nuw i64 %i.au to i1
  %. = select i1 %i.az, i64 %i.ay, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %., ptr %i.bb, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, %bb.r, %bb.s
  %.sroa.0.0 = phi ptr [ %i.ax, %bb.r ], [ null, %bb.s ], [ null, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser9parse_pre(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !433, !noundef !3 ; 4 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !433
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !433, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  %i.j = load i8, ptr %i.i, align 1, !noalias !433, !noundef !3
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @17, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !range !13, !noalias !433, !noundef !3
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i64 %i.c, -1
  br i1 %i.o, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i64 %i.c, 1
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !433
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !433
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit: ; preds = %bb.b, %bb.d, %bb.f
  %i.q = tail call fastcc { i64, i64 } @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser18bump_if_string_set(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) @54) ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1        ; 3 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  %i.u = icmp ult i64 %i.s, 8
  br i1 %i.u, label %bb.k, label %bb.r

bb.i:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.v = load i64, ptr %i.d, align 8, !alias.scope !434, !noundef !3
  %.not.i7 = icmp ugt i64 %i.c, %i.v
  br i1 %.not.i7, label %bb.j, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #21, !noalias !434
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit: ; preds = %bb.i
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !434
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr @55, i64 %i.s
  %i.x = load i8, ptr %i.w, align 1, !range !16, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.y = load i64, ptr %i.d, align 8, !alias.scope !435, !noundef !3 ; 4 uses
  %i.z = load i64, ptr %i.b, align 8, !alias.scope !435, !noundef !3 ; 6 uses
  %i.aa = icmp ugt i64 %i.z, %i.y
  br i1 %i.aa, label %bb.m, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %.not.i8 = icmp eq i64 %i.y, %i.z
  br i1 %.not.i8, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.z, i64 noundef %i.y, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !435
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !435, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !435, !noundef !3
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @17, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !range !13, !noalias !435, !noundef !3
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp eq i64 %i.z, -1
  br i1 %i.aj, label %bb.q, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.ak = add nuw i64 %i.z, 1
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !435
  br label %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21, !noalias !435
  unreachable

_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11: ; preds = %bb.l, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser12parse_number(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(160) %0)
  %i.al = load i64, ptr %i.a, align 8, !range !5, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #21
  unreachable

bb.s:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !3, !align !12, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.t:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser16bump_if_byte_set.exit11
  %i.ap = load i64, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = trunc nuw i64 %i.al to i1
  %. = select i1 %i.aq, i64 %i.ap, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %., ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.x, ptr %i.as, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit, %bb.s, %bb.t
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.s ], [ null, %bb.t ], [ null, %_RNvMsm_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_6Parser5reset.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsn_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_14ReleaseNumbers4push(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !442, !noundef !3 ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !range !14, !alias.scope !442, !noundef !3
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCsgHAIXRTqFF5_9pep440_rs.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCsgHAIXRTqFF5_9pep440_rs.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCsgHAIXRTqFF5_9pep440_rs.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !442, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  store i64 %1, ptr %i.m, align 8
  %i.n = add i64 %i.h, 1
end_hunk_2
