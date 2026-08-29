Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.12?download=true
inline.NumInlined: 5547
inline.NumDeleted: 1701
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB1y_10operations6update13UpdateMetricsENtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3t_13RawDeltaTable6update0EB3t_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  ret void

bb.dd:                                            ; preds = %.body, %bb.de
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

.thread:                                          ; preds = %.body, %bb.de
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.gx, %bb.de ]
  resume { ptr, i32 } %.pn8

bb.de:                                            ; preds = %bb.a
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBO_13RawDeltaTable6update0EBO_(ptr noalias noundef align 8 dereferenceable(448) %1) #43
          to label %.thread unwind label %bb.dd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB1y_10operations6vacuum13VacuumMetricsENtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3t_13RawDeltaTable6vacuum0EB3t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [160 x i8], align 16              ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [224 x i8], align 8               ; 4 uses
  %i.i = alloca [224 x i8], align 8               ; 5 uses
  %i.j = alloca [224 x i8], align 8               ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [224 x i8], align 8               ; 4 uses
  %i.o = alloca [224 x i8], align 8               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [224 x i8], align 8               ; 4 uses
  %i.r = alloca [224 x i8], align 8               ; 4 uses
  %i.s = alloca [88 x i8], align 8                ; 5 uses
  %i.t = alloca [88 x i8], align 8                ; 4 uses
  %i.u = alloca [224 x i8], align 8               ; 8 uses
  %i.v = alloca [120 x i8], align 8               ; 4 uses
  %i.w = alloca [224 x i8], align 8               ; 8 uses
  %i.x = alloca [224 x i8], align 8               ; 18 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [120 x i8], align 8               ; 7 uses
  %i.aa = alloca [160 x i8], align 8              ; 19 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ac = invoke { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new()
          to label %bb.b unwind label %bb.cb      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = extractvalue { i64, ptr } %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aa, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !763
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !761, !noalias !758, !nonnull !4, !align !32, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !763, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %i.ak)
          to label %bb.d unwind label %bb.c, !noalias !763

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.am = load i64, ptr %i.y, align 8, !range !3, !noalias !763, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !763, !nonnull !4, !align !32, !noundef !4 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !5, !noalias !763, !noundef !4 ; 3 uses
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !763
  invoke void @_RINvNtCs7p2uQeJxui2_9deltalake5error9to_rt_errINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBL_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEEB4_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %i.ap, i1 noundef zeroext %i.as)
          to label %bb.bq unwind label %bb.c, !noalias !763

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !763
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  invoke fastcc void @_RNvXs3_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.h unwind label %bb.g, !noalias !763

bb.g:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ap, i8 %i.ar) #43
          to label %.thread.i unwind label %bb.v, !noalias !763

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aw = trunc nuw i8 %i.ar to i1
  br i1 %i.aw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !763
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  %i.ba = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #46
          to label %.noexc.i unwind label %bb.bp, !noalias !763

.noexc.i:                                         ; preds = %bb.j
  br i1 %i.ba, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  store atomic i8 1, ptr %i.av monotonic, align 4, !noalias !763
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.k, %.noexc.i, %bb.i, %bb.h
  %i.bb = atomicrmw xchg ptr %i.ap, i32 0 release, align 4, !noalias !763
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i, !prof !9

bb.l:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bp, !noalias !763

.split.i:                                         ; preds = %bb.aj
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit107.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(120) %i.z, i64 120, i1 false), !noalias !763
  invoke void @_RNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB4_5table10DeltaTable6vacuum(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.v)
          to label %bb.m unwind label %.split.thread.i, !noalias !763

.split.thread.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  %lpad.thr_comm.split-lp181.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !763
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !761, !noalias !758, !nonnull !4, !noundef !4
  %i.bf = load i8, ptr %i.be, align 1, !range !5, !noalias !763, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  store i8 %i.bf, ptr %i.bg, align 8, !noalias !763
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !761, !noalias !758, !nonnull !4, !noundef !4
  %i.bj = load i8, ptr %i.bi, align 1, !range !5, !noalias !763, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 217
  store i8 %i.bj, ptr %i.bk, align 1, !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.x, ptr noundef nonnull align 8 dereferenceable(224) %i.w, i64 224, i1 false), !noalias !763
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !761, !noalias !758, !nonnull !4, !noundef !4
  %i.bn = load i8, ptr %i.bm, align 1, !range !5, !noalias !763, !noundef !4
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !761, !noalias !758, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !3, !noalias !763, !noundef !4
  %i.bs = trunc nuw i64 %i.br to i1
  br i1 %i.bs, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(218) %i.x, ptr noundef nonnull align 8 dereferenceable(218) %i.w, i64 218, i1 false), !noalias !763
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 218
  %.sroa.325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 219
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.325.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %i.bt, i64 5, i1 false), !noalias !763
  store i8 1, ptr %.sroa.222.0..sroa_idx.i, align 2, !noalias !763
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !763, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 8 dereferenceable(224) %i.x, i64 224, i1 false), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !763
  %i.bw = add i64 %i.bv, -2562047788016
  %or.cond.i = icmp ult i64 %i.bw, -5124095576031
  br i1 %or.cond.i, label %bb.s, label %bb.r, !prof !764

bb.q:                                             ; preds = %bb.u, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 88, i1 false), !noalias !758
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.by = load i8, ptr %i.bx, align 8, !range !137, !alias.scope !761, !noalias !758, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 153
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !761, !noalias !758
  invoke void @_RNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.t, i8 noundef %i.by, i8 %i.ca)
          to label %bb.x unwind label %.thread159.i, !noalias !763

bb.r:                                             ; preds = %bb.p
  %2 = mul nsw i64 %i.bv, 3600
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %i.cb, align 8, !noalias !763
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 0, ptr %i.cc, align 8, !noalias !763
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sink.i = phi i64 [ 1, %bb.r ], [ 0, %bb.p ]
  store i64 %.sink.i, ptr %i.f, align 8, !noalias !763
  %i.cd = invoke { i64, i32 } @_RINvCshmPyUV8PP35_6chrono6expectNtNtB2_10time_delta9TimeDeltaECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 30)
          to label %bb.u unwind label %bb.t, !noalias !763 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum13VacuumBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(224) %i.u) #43
          to label %.thread.i unwind label %bb.v, !noalias !763

bb.u:                                             ; preds = %bb.s
  %i.cf = extractvalue { i64, i32 } %i.cd, 0
  %i.cg = extractvalue { i64, i32 } %i.cd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !763
  store i64 1, ptr %i.u, align 8, !noalias !763
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.cf, ptr %.sroa.453.0..sroa_idx.i, align 8, !noalias !763
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.cg, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.x, ptr noundef nonnull align 8 dereferenceable(224) %i.u, i64 224, i1 false), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !763
  br label %bb.q

bb.v:                                             ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bp, %.thread150.i, %bb.bn, %bb.am, %bb.ad, %bb.t, %bb.g
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !758
  unreachable

.thread159.i:                                     ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %bb.av, %bb.ag, %bb.ac, %bb.q
  %.sroa.037.4.ph.i = phi i8 [ %.sroa.037.5.i, %bb.az ], [ %.sroa.037.5.i, %bb.ax ], [ %.sroa.037.5.i, %bb.aw ], [ 1, %bb.q ], [ 0, %bb.ag ], [ %.sroa.037.5.i, %bb.ac ], [ %.sroa.037.5.i, %bb.av ], [ %.sroa.037.5.i, %bb.bb ], [ %.sroa.037.5.i, %bb.ba ]
  %lpad.thr_comm157.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread150.i

bb.w:                                             ; preds = %bb.bj, %bb.bh, %bb.bg, %bb.y
  %.sroa.037.4.ph156.i = phi i8 [ 1, %bb.y ], [ %.sroa.037.5.i, %bb.bg ], [ %.sroa.037.5.i, %bb.bh ], [ %.sroa.037.5.i, %bb.bj ]
  %lpad.thr_comm.split-lp158.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit107.i

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !763
  %i.ci = load i64, ptr %i.s, align 8, !range !133, !noalias !763, !noundef !4
  %.not.i = icmp eq i64 %i.ci, -9223372036854775808
  br i1 %.not.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.q, ptr noundef nonnull align 8 dereferenceable(224) %i.x, i64 224, i1 false), !noalias !763
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilder22with_commit_properties(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.q, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.s)
          to label %bb.z unwind label %bb.w, !noalias !763

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.x, ptr noundef nonnull align 8 dereferenceable(224) %i.r, i64 224, i1 false), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !763
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aa, i64 88 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !133, !alias.scope !761, !noalias !758, !noundef !4
  %.not70.i = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not70.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.n, ptr noundef nonnull align 8 dereferenceable(224) %i.x, i64 224, i1 false), !noalias !763
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !763, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noalias !763, !noundef !4
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilder18with_keep_versions(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cm, i64 noundef %i.co)
          to label %bb.ae unwind label %bb.ad, !noalias !763

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake.exit.i, %bb.aa
  %.sroa.037.5.i = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake.exit.i ], [ 1, %bb.aa ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !763
  %i.cp = load ptr, ptr %i.ag, align 8, !alias.scope !761, !noalias !758, !nonnull !4, !align !32, !noundef !4
  invoke void @_RNvMCs7p2uQeJxui2_9deltalakeNtB2_13RawDeltaTable9log_store(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cp)
          to label %bb.ai unwind label %.thread159.i, !noalias !763

bb.ad:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.p) #43
          to label %.body unwind label %bb.v, !noalias !763

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.x, ptr noundef nonnull align 8 dereferenceable(224) %i.o, i64 224, i1 false), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !763
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ag unwind label %bb.af, !noalias !763

bb.af:                                            ; preds = %bb.ae
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread150.i unwind label %bb.ah, !noalias !763

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread159.i, !noalias !763

bb.ah:                                            ; preds = %bb.af
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !763
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !763
  br label %bb.ac

bb.ai:                                            ; preds = %bb.ac
  %i.ct = load i64, ptr %i.k, align 8, !range !3, !noalias !763, !noundef !4
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.059.0.copyload.i = load ptr, ptr %i.cv, align 8, !noalias !763 ; 3 uses
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.560.0.copyload.i = load ptr, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !763 ; 4 uses
  br i1 %i.cu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.364.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx.i, i64 40, i1 false), !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !763
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.059.0.copyload.i, ptr %i.cw, align 8, !alias.scope !758, !noalias !761
  %.sroa.263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.560.0.copyload.i, ptr %.sroa.263.0..sroa_idx.i, align 8, !alias.scope !758, !noalias !761
  store i64 4, ptr %0, align 8, !alias.scope !758, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !763
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum13VacuumBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(224) %i.x)
          to label %bb.bo unwind label %.split.i, !noalias !763

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !763
  store ptr %.sroa.059.0.copyload.i, ptr %i.l, align 8, !noalias !763
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.560.0.copyload.i, ptr %i.cx, align 8, !noalias !763
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.560.0.copyload.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !90, !invariant.load !4, !noalias !763
  %i.da = add nsw i64 %i.cz, -1
  %i.db = and i64 %i.da, -16
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.560.0.copyload.i, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !noalias !763, !nonnull !4
  invoke void %i.df(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %i.dd)
          to label %bb.an unwind label %bb.al, !noalias !763

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i89.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.ak
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i

.body85.i:                                        ; preds = %bb.at, %bb.aq, %bb.al
  %eh.lpad-body86.i = phi { ptr, i32 } [ %i.dy, %bb.aq ], [ %i.dg, %bb.al ], [ %i.ea, %bb.at ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.dh = load ptr, ptr %i.l, align 8, !alias.scope !771, !noalias !763, !nonnull !4, !noundef !4
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !772
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.am, label %.thread150.i

bb.am:                                            ; preds = %.body85.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #46
          to label %.thread150.i unwind label %bb.v, !noalias !763

bb.an:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !763, !noundef !4
  %i.dm = icmp eq i64 %i.dl, 14
  br i1 %i.dm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !763, !nonnull !4, !noundef !4 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 1
  %i.dq = xor i64 %i.dp, 8019876598254362956
  %i.dr = getelementptr i8, ptr %i.do, i64 6
  %i.ds = load i64, ptr %i.dr, align 1
  %i.dt = xor i64 %i.ds, 7310027690581913420
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTable7builderNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceNtNtCs6Po7BT7Nknu_5alloc6string6StringB2C_ECs7p2uQeJxui2_9deltalake:bb.a
  store i64 0, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.r = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #43
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = extractvalue { i64, i64 } %i.r, 0
  %i.u = extractvalue { i64, i64 } %i.r, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %4, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store <4 x i8> zeroinitializer, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.t, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.u, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.h:                                             ; preds = %bb.m, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit, %bb.k, %bb.j, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit, %bb.c, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #43
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #43
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ag = atomicrmw sub ptr %4, i64 1 release, align 8, !noalias !2164
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.l, %bb.m
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #43
          to label %bb.c unwind label %bb.h

.thread34:                                        ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5Alias3newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !2169
  %i.d = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 112, i64 noundef range(i64 8, 17) 16) #41, !noalias !2169 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %1) #43
          to label %bb.k unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.d, ptr noundef nonnull align 16 dereferenceable(112) %1, i64 112, i1 false)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, 3
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h, %bb.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %.body unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %.sroa.0.0.copyload, 3
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.l, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

.body:                                            ; preds = %bb.k, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit
  %.pn.pn16 = phi { ptr, i32 } [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit ], [ %i.f, %bb.l ], [ %i.f, %bb.k ]
  resume { ptr, i32 } %.pn.pn16

bb.k:                                             ; preds = %bb.c
  %i.n = load i64, ptr %2, align 8, !range !2172, !alias.scope !2173, !noundef !4
  %i.o = icmp eq i64 %i.n, 3
  br i1 %i.o, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
          to label %.body unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %gepdiff = add nsw i64 %.idx, -24
  %i.f = udiv exact i64 %gepdiff, 24              ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.f)
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_E00NvMs9_NtBa_3numj11checked_addE0B2V_ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph, !prof !9

.lr.ph:                                           ; preds = %bb.b
  %5 = mul nuw i64 %i.f, %4
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.01.0.i304 = phi i64 [ %5, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %.val9.i = load i64, ptr %i.l, align 8, !noalias !2176, !noundef !4
  %i.m = add i64 %.val9.i, %.sroa.01.0.i304       ; 6 uses
  %i.n = icmp ult i64 %i.m, %.sroa.01.0.i304
  br i1 %i.n, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_E00NvMs9_NtBa_3numj11checked_addE0B2V_ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.m, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !133, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %._crit_edge
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #42
  unreachable

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_E00NvMs9_NtBa_3numj11checked_addE0B2V_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #45
  unreachable

.loopexit185:                                     ; preds = %bb.v, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %.lr.ph328
  %lpad.loopexit188 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.j, %bb.l
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.o, %bb.m
  %lpad.loopexit197 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.r
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.u, %bb.s
  %lpad.loopexit206 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.f
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit185
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit185 ], [ %lpad.loopexit188, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit193, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit202, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit206, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp207, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43
          to label %bb.aa unwind label %bb.z

bb.f:                                             ; preds = %._crit_edge
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.v = icmp ule i64 %i.m, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val73 = load i64, ptr %i.z, align 8, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %.val73
  invoke void @_RNvXs2_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhEE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.val, ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.x, align 8, !noundef !4 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab ; 6 uses
  %i.af = sub i64 %i.m, %i.ab                     ; 12 uses
  %i.ag = icmp eq i64 %2, 1                       ; 6 uses
  switch i64 %4, label %.preheader.preheader [
    i64 0, label %.preheader186.preheader
    i64 1, label %.preheader191.preheader
    i64 2, label %.preheader195.preheader
    i64 3, label %.preheader200.preheader
    i64 4, label %.preheader204.preheader
  ]

.preheader204.preheader:                          ; preds = %bb.g
  br i1 %i.ag, label %.loopexit, label %.lr.ph308

.preheader200.preheader:                          ; preds = %bb.g
  br i1 %i.ag, label %.loopexit, label %.lr.ph313

.preheader195.preheader:                          ; preds = %bb.g
  br i1 %i.ag, label %.loopexit, label %.lr.ph318

.preheader191.preheader:                          ; preds = %bb.g
  br i1 %i.ag, label %.loopexit, label %.lr.ph323

.preheader186.preheader:                          ; preds = %bb.g
  br i1 %i.ag, label %.loopexit, label %.lr.ph328

.preheader.preheader:                             ; preds = %bb.g
  br i1 %i.ag, label %.loopexit, label %.lr.ph333

.preheader186:                                    ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.028.0326, i64 %.sroa.05.0.val72
  %i.ai = sub nuw nsw i64 %.sroa.26.0325, %.sroa.05.0.val72 ; 2 uses
  %i.aj = icmp eq ptr %i.ak, %i.c
  br i1 %i.aj, label %.loopexit, label %.lr.ph328

.lr.ph328:                                        ; preds = %.preheader186.preheader, %.preheader186
  %.sroa.05.0327 = phi ptr [ %i.ak, %.preheader186 ], [ %i.e, %.preheader186.preheader ] ; 3 uses
  %.sroa.028.0326 = phi ptr [ %i.ah, %.preheader186 ], [ %i.ae, %.preheader186.preheader ] ; 3 uses
  %.sroa.26.0325 = phi i64 [ %i.ai, %.preheader186 ], [ %i.af, %.preheader186.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.05.0327, i64 24 ; 2 uses
  %i.al = getelementptr i8, ptr %.sroa.05.0327, i64 8
  %.sroa.05.0.val = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr i8, ptr %.sroa.05.0327, i64 16
  %.sroa.05.0.val72 = load i64, ptr %i.am, align 8, !noundef !4 ; 5 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %.sroa.028.0326, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %.lr.ph328
  %.not.i = icmp ugt i64 %.sroa.05.0.val72, %.sroa.26.0325
  br i1 %.not.i, label %.invoke, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %.sroa.028.0326, i64 noundef %.sroa.05.0.val72, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.val, i64 noundef %.sroa.05.0.val72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.preheader186 unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %.preheader204, %.preheader200, %.preheader195, %.preheader191, %.preheader186, %.preheader, %.preheader204.preheader, %.preheader200.preheader, %.preheader195.preheader, %.preheader191.preheader, %.preheader186.preheader, %.preheader.preheader
  %.sroa.26.1 = phi i64 [ %i.bv, %.preheader ], [ %i.bf, %.preheader200 ], [ %i.ai, %.preheader186 ], [ %i.ap, %.preheader191 ], [ %i.ax, %.preheader195 ], [ %i.af, %.preheader.preheader ], [ %i.af, %.preheader186.preheader ], [ %i.af, %.preheader191.preheader ], [ %i.af, %.preheader195.preheader ], [ %i.af, %.preheader200.preheader ], [ %i.af, %.preheader204.preheader ], [ %i.bn, %.preheader204 ]
  %i.an = sub i64 %i.m, %.sroa.26.1
  store i64 %i.an, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

.preheader191:                                    ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.05.1.val71
  %i.ap = sub nuw nsw i64 %i.av, %.sroa.05.1.val71 ; 2 uses
  %i.aq = icmp eq ptr %i.ar, %i.c
  br i1 %i.aq, label %.loopexit, label %.lr.ph323

.lr.ph323:                                        ; preds = %.preheader191.preheader, %.preheader191
  %.sroa.05.1322 = phi ptr [ %i.ar, %.preheader191 ], [ %i.e, %.preheader191.preheader ] ; 3 uses
  %.sroa.028.2321 = phi ptr [ %i.ao, %.preheader191 ], [ %i.ae, %.preheader191.preheader ] ; 2 uses
  %.sroa.26.2320 = phi i64 [ %i.ap, %.preheader191 ], [ %i.af, %.preheader191.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.1322, i64 24 ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.05.1322, i64 8
  %.sroa.05.1.val = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr i8, ptr %.sroa.05.1322, i64 16
  %.sroa.05.1.val71 = load i64, ptr %i.at, align 8, !noundef !4 ; 5 uses
  %.not.i77 = icmp eq i64 %.sroa.26.2320, 0
  br i1 %.not.i77, label %.invoke, label %bb.j, !prof !9

bb.j:                                             ; preds = %.lr.ph323
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.028.2321, i64 1 ; 2 uses
  %i.av = add nsw i64 %.sroa.26.2320, -1          ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %.sroa.028.2321, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.k:                                             ; preds = %bb.j
  %.not.i83 = icmp ugt i64 %.sroa.05.1.val71, %i.av
  br i1 %.not.i83, label %.invoke, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %i.au, i64 noundef %.sroa.05.1.val71, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.1.val, i64 noundef %.sroa.05.1.val71, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.preheader191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader195:                                    ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.05.2.val70
  %i.ax = sub nuw nsw i64 %i.bd, %.sroa.05.2.val70 ; 2 uses
  %i.ay = icmp eq ptr %i.az, %i.c
  br i1 %i.ay, label %.loopexit, label %.lr.ph318

end_hunk_1
begin_hunk_2_@_RNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB4_5table10DeltaTable21update_field_metadata
declare void @_RNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB4_5table10DeltaTable21update_field_metadata(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(address) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder15with_field_name(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder13with_metadata(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder22with_commit_properties(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB4_26UpdateFieldMetadataBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations21update_field_metadataNtB5_26UpdateFieldMetadataBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(224)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMCs7p2uQeJxui2_9deltalakeNtB2_13RawDeltaTable12cloned_state(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new(ptr dead_on_unwind noalias noundef writable sret([1056 x i8]) align 16 captures(none) dereferenceable(1056), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i64 noundef range(i64 0, 2), i64, i64 noundef range(i64 0, 2), i64, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(264), i8 noundef range(i8 0, 3), i8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88), ptr noundef, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCs7p2uQeJxui2_9deltalakeNtB3_13RawDeltaTable10with_tableINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENCNCNvMsl_B3_Br_24create_write_transaction00EB3_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtCs7p2uQeJxui2_9deltalake11PyAddActionENCNCNvMsl_B3K_NtB3K_13RawDeltaTable24create_write_transaction0s_0EE9from_iterB3K_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1d_13RawDeltaTable24create_write_transaction0s0_0EB1d_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCs7p2uQeJxui2_9deltalakeNtB3_13RawDeltaTable10with_tableNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataNCNCNvMsl_B3_Br_24create_write_transaction0s1_0EB3_(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 8 captures(address) dereferenceable(256), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataNtB2_11MetadataExt11with_schema(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(256), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView13remove_action(ptr dead_on_unwind noalias noundef writable sret([240 x i8]) align 8 captures(none) dereferenceable(240), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_16CommitPropertiesNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1o_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB19_B1u_EE9from_iterINtNtNtB2i_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5d_13RawDeltaTable24create_write_transaction0s2_0EEB5d_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB6_16CommitProperties13with_metadataINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB1F_5value5ValueEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilderINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_16CommitPropertiesE4from(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder12with_actions(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder5build(ptr dead_on_unwind noalias noundef writable sret([584 x i8]) align 8 captures(none) dereferenceable(584), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144), ptr noundef, ptr, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(408)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(584)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB3f_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeNtB2_9IORuntimeNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder15with_io_runtime(ptr dead_on_unwind noalias noundef writable sret([336 x i8]) align 8 captures(none) dereferenceable(336), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(336), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder20with_log_buffer_size(ptr dead_on_unwind noalias noundef writable sret([336 x i8]) align 16 captures(none) dereferenceable(336), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(336), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB1b_17DeltaTableBuilder4load0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 16 captures(address) dereferenceable(128), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1520), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable9table_url(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCs7p2uQeJxui2_9deltalakeNtB3_13RawDeltaTable10with_tableINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNvMsl_B3_Br_5files00EB3_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3c_13RawDeltaTable5files0s_0ENtNtB6_6string6StringEB3c_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable13get_file_uris(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1S_IB1S_INtNtB6_5boxed3BoxDNtNtNtB1Y_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB3V_5tableNtB5i_10DeltaTable13get_file_uris0ENCB5c_s_0ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6n_13RawDeltaTable5files0s0_0EE9from_iterB6n_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCs7p2uQeJxui2_9deltalakeNtB3_13RawDeltaTable10with_tableINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotENCNCNvMsl_B3_Br_5write00EB3_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB5_12WriteBuilder3new(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs3gECBqE52CY_10pyo3_arrow19record_batch_readerNtB2_19PyRecordBatchReader11into_reader(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvNtCs7p2uQeJxui2_9deltalake6writer22maybe_lazy_cast_reader(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCs7p2uQeJxui2_9deltalake6writer13to_lazy_table(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder23scan_with_filters_innerReECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 16 captures(none) dereferenceable(320), ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB5_12WriteBuilder15with_input_plan(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(320)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB4_10SchemaModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB6_12WriteBuilder22with_partition_columnsNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1H_3vec3VecB1D_EECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB5_12WriteBuilder22with_writer_properties(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(248)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB6_12WriteBuilder15with_table_nameRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB6_12WriteBuilder16with_descriptionRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB6_12WriteBuilder18with_replace_whereNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB6_12WriteBuilder18with_configurationNtNtCs6Po7BT7Nknu_5alloc6string6StringB1z_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1z_INtNtCsbvkFyIu7lgC_4core6option6OptionB1z_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB5_12WriteBuilder22with_commit_properties(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB5_12WriteBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias noundef writable sret([1008 x i8]) align 16 captures(none) dereferenceable(1008), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1008), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB5_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable6delete(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(address) dereferenceable(544), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB6_13DeleteBuilder14with_predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(none) dereferenceable(544), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder22with_writer_properties(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(none) dereferenceable(544), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(248)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder22with_commit_properties(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(none) dereferenceable(544), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(none) dereferenceable(544), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(544)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB3e_10operations6delete13DeleteMetricsENtNtB3e_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 16 captures(address) dereferenceable(176), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable6update(ptr dead_on_unwind noalias noundef writable sret([592 x i8]) align 16 captures(address) dereferenceable(592), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB4_13UpdateBuilder22with_writer_properties(ptr dead_on_unwind noalias noundef writable sret([592 x i8]) align 16 captures(none) dereferenceable(592), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(592), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(248)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB5_13UpdateBuilder14with_predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([592 x i8]) align 16 captures(none) dereferenceable(592), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(592), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB4_13UpdateBuilder22with_commit_properties(ptr dead_on_unwind noalias noundef writable sret([592 x i8]) align 16 captures(none) dereferenceable(592), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(592), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB4_13UpdateBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias noundef writable sret([592 x i8]) align 16 captures(none) dereferenceable(592), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(592), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB5_13UpdateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(592)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB3e_10operations6update13UpdateMetricsENtNtB3e_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 16 captures(address) dereferenceable(176), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB5_13UpdateBuilder11with_updateNtNtCs6Po7BT7Nknu_5alloc6string6StringB1t_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([592 x i8]) align 16 captures(none) dereferenceable(592), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(592), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB4_5table10DeltaTable6vacuum(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(address) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i32 } @_RINvCshmPyUV8PP35_6chrono6expectNtNtB2_10time_delta9TimeDeltaECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilder22with_commit_properties(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilder18with_keep_versions(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(224)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB3e_10operations6vacuum13VacuumMetricsENtNtB3e_6errors15DeltaTableErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 16 captures(address) dereferenceable(160), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvNtCs7p2uQeJxui2_9deltalake6reader24convert_stream_to_reader(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types4dictINtNtB9_8instance5BoundNtB5_6PyDictENtB5_13PyDictMethods8set_itemRexECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types4dictINtNtB9_8instance5BoundNtB5_6PyDictENtB5_13PyDictMethods8set_itemRReRxECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB2_5Error14with_backtrace(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #37

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs14_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_14MaxSizeReachedNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs12_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_6Danger7set_red(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtNtB9_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB18_9scheduler14current_thread6HandleEENtNtB16_4core6HeaderE10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtNtB9_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB18_9scheduler12multi_thread6handle6HandleEENtNtB16_4core6HeaderE10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErr4take(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCsgbCypRs12E4_4pyo35types4dict8dict_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBY_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameNtNtBY_5value11HeaderValueEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTRexEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB8_3BoxSINtCsgvKtmFgitAz_12thread_local5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECs7p2uQeJxui2_9deltalake(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCskQDtHcQtBkN_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs7p2uQeJxui2_9deltalake() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB19_4LeafE16push_with_handleCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs7p2uQeJxui2_9deltalake() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB19_4LeafE16push_with_handleCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16), i64 noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryjB1E_E12insert_entry0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4host(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #30

; Function Attrs: nonlazybind uwtable
declare void @_RNvCseo6ZV82fEK1_3url28file_url_segments_to_pathbuf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, ptr noalias noundef readonly captures(address, read_provenance), i64, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #30

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE5sliceCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0
end_hunk_2
