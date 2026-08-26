Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.06?download=true
inline.NumInlined: 2071
inline.NumDeleted: 839
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvNtNtCslFlrwjHoTci_14polars_compute4cast9binary_to22binary_large_to_binary:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30887
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %2), !dbg !30887
  br label %bb.q, !dbg !30887

bb.t:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.v unwind label %bb.r, !dbg !30890

bb.u:                                             ; preds = %bb.m, %bb.v
  %.pn2335 = phi { ptr, i32 } [ %.pn23.ph, %bb.v ], [ %i.al, %bb.m ]
  resume { ptr, i32 } %.pn2335, !dbg !30889

bb.v:                                             ; preds = %bb.s, %bb.t
  %.pn23.ph = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.ap, %bb.t ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %2) #41
          to label %bb.u unwind label %bb.r, !dbg !30887
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslFlrwjHoTci_14polars_compute4cast9binary_to22binary_to_large_binary(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30893 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !30894
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !30895
  %i.i = load ptr, ptr %i.h, align 8, !dbg !30895, !nonnull !12, !noundef !12 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !30902, !range !5985, !noundef !12
  %i.k = icmp eq i64 %i.j, 3, !dbg !30906
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !30906

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30907
  %i.m = load ptr, ptr %i.l, align 8, !dbg !30907, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !30908
  %i.o = load i64, ptr %i.n, align 8, !dbg !30908, !noundef !12
  store ptr %i.i, ptr %i.g, align 8, !dbg !30909
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !30909
  store ptr %i.m, ptr %i.p, align 8, !dbg !30909
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !30909
  store i64 %i.o, ptr %i.q, align 8, !dbg !30909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !30910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !30910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !30912
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !30913
  invoke void @_RNvXs7_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxEINtNtCscgRAwXFJnXP_4core7convert4FromRIBH_lEE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.d unwind label %bb.p, !dbg !30916

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !30919
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !dbg !30926 ; 0 uses
  br label %bb.b, !dbg !30929

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !30930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !30930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30931
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !30932
  %i.v = load ptr, ptr %i.u, align 8, !dbg !30932, !noundef !12 ; 4 uses
  %.not = icmp eq ptr %i.v, null, !dbg !30932
  br i1 %.not, label %bb.g, label %bb.e, !dbg !30937

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.v, align 8, !dbg !30938, !range !5985, !noalias !30948, !noundef !12
  %i.x = icmp eq i64 %i.w, 3, !dbg !30951
  br i1 %i.x, label %bb.i, label %bb.f, !dbg !30951

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !30952
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !30956, !noalias !30948 ; 0 uses
  br label %bb.i, !dbg !30958

bb.g:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !dbg !30959
  br label %bb.h, !dbg !30960

bb.h:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !30961
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB2_11BinaryArrayxE7try_newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !dbg !30961
  call void @llvm.experimental.noalias.scope.decl(metadata !30964), !dbg !30967
  call void @llvm.experimental.noalias.scope.decl(metadata !30968), !dbg !30967
  %i.aa = load i8, ptr %i.b, align 8, !dbg !30970, !range !6019, !alias.scope !30968, !noalias !30964, !noundef !12
  %i.ab = icmp eq i8 %i.aa, 42, !dbg !30970
  br i1 %i.ab, label %bb.j, label %bb.n, !dbg !30972, !prof !2574

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !30973
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !30974
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8, !dbg !30981, !noalias !30948
  store ptr %i.v, ptr %i.c, align 8, !dbg !30983
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !30983
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !dbg !30973, !noalias !30948
  store <2 x i64> %i.af, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !30983
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !30983
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !30983
  br label %bb.h, !dbg !30984

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30985, !noalias !30986
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !30985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !dbg !30985, !noalias !30964
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #42
          to label %bb.l unwind label %bb.k, !dbg !30987, !noalias !30986

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit8 unwind label %bb.m, !dbg !30988, !noalias !30986

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !30989, !noalias !30986
  unreachable, !dbg !30989

bb.n:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !30990, !alias.scope !30986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !30991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !30992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !30992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !30992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !30993
  ret void, !dbg !30994

bb.o:                                             ; preds = %.thread14, %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !30995
  unreachable, !dbg !30995

bb.p:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.f) #41
          to label %.thread14 unwind label %bb.o, !dbg !30992

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit8: ; preds = %.thread14, %bb.k
  %.pn1217 = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ak, %.thread14 ]
  resume { ptr, i32 } %.pn1217, !dbg !30995

.thread14:                                        ; preds = %bb.p
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit8 unwind label %bb.o, !dbg !30996
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslFlrwjHoTci_14polars_compute4cast9binary_to28fixed_size_binary_to_binview(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30999 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 3 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [8 x i8], align 8                 ; 2 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [128 x i8], align 8              ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !31000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 38, i64 32, i1 false), !dbg !31001
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !31002 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !31002, !noundef !12 ; 8 uses
  %i.ai = icmp ult i64 %i.ah, 13, !dbg !31006
  br i1 %i.ai, label %bb.c, label %bb.b, !dbg !31006

bb.b:                                             ; preds = %bb.a
  store i64 %i.ah, ptr %i.w, align 8, !dbg !31007
  %.inv = icmp ugt i64 %i.ah, 2147483647, !dbg !31009
  %. = select i1 %.inv, i64 4294967294, i64 2147483647, !dbg !31009 ; 4 uses
  %.not = icmp ugt i64 %i.ah, %., !dbg !31011
  br i1 %.not, label %.invoke, label %bb.e, !dbg !31011, !prof !2574

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !31013
  store i64 0, ptr %i.ae, align 8, !dbg !31014
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !31014
  store ptr inttoptr (i64 4 to ptr), ptr %i.aj, align 8, !dbg !31014
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !31014
  store i64 0, ptr %i.ak, align 8, !dbg !31014
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !31017
  %i.am = load ptr, ptr %i.al, align 8, !dbg !31017, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !31021
  %i.ao = load i64, ptr %i.an, align 8, !dbg !31021, !noundef !12
  %i.ap = trunc nuw nsw i64 %i.ah to i8, !dbg !31022
  invoke void @_RNvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4viewNtB4_4View29extend_with_inlinable_strided(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ao, i8 noundef %i.ap)
          to label %bb.ba unwind label %bb.br, !dbg !31023

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62: ; preds = %bb.az, %.thread87
  %.sroa.025.0 = phi i1 [ %.sroa.025.2, %.thread87 ], [ %.sroa.025.274, %bb.az ], !dbg !31024
  %.pn48.pn = phi { ptr, i32 } [ %.pn43, %.thread87 ], [ %.pn4375, %bb.az ] ; 2 uses
  br i1 %.sroa.025.0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread127, !dbg !31025

.split.thread:                                    ; preds = %.invoke
  %lpad.thr_comm148 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread, !dbg !31025

bb.d:                                             ; preds = %bb.aa, %bb.y, %bb.j
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !31026 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !31026, !noundef !12 ; 3 uses
  %i.as = urem i64 %i.ar, %i.ah, !dbg !31031
  %i.at = sub nuw i64 %i.ar, %i.as, !dbg !31031   ; 2 uses
  %i.au = udiv i64 %i.at, %., !dbg !31032
  %i.av = urem i64 %i.at, %., !dbg !31036
  %.not36 = icmp ne i64 %i.av, 0, !dbg !31038
  %i.aw = zext i1 %.not36 to i64, !dbg !31038
  %.sroa.04.0 = add nuw nsw i64 %i.au, %i.aw, !dbg !31038 ; 6 uses
  %i.ax = icmp samesign ult i64 %.sroa.04.0, 4294967295, !dbg !31040
  br i1 %i.ax, label %bb.f, label %.invoke, !dbg !31040, !prof !2840

.invoke:                                          ; preds = %bb.b, %bb.e
  %i.ay = phi ptr [ @139, %bb.e ], [ @135, %bb.b ]
  %i.az = phi i64 [ 49, %bb.e ], [ 46, %bb.b ]
  %i.ba = phi ptr [ @140, %bb.e ], [ @136, %bb.b ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba) #42
          to label %.cont unwind label %.split.thread, !dbg !31042

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !31026
  %.lhs.trunc = trunc nuw i64 %. to i32, !dbg !31043
  %.rhs.trunc = trunc nuw i64 %i.ah to i32, !dbg !31043
  %i.bc = udiv i32 %.lhs.trunc, %.rhs.trunc, !dbg !31043
  %.zext = zext nneg i32 %i.bc to i64, !dbg !31043 ; 2 uses
  %i.bd = mul nuw nsw i64 %i.ah, %.zext, !dbg !31044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !31046
  %i.be = load ptr, ptr %i.bb, align 8, !dbg !31048, !nonnull !12, !noundef !12 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !dbg !31055, !range !5985, !noundef !12
  %i.bg = icmp eq i64 %i.bf, 3, !dbg !31059
  br i1 %i.bg, label %bb.g, label %bb.h, !dbg !31059

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bh = phi i64 [ %.pre, %bb.h ], [ %i.ar, %bb.f ], !dbg !31060
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !31061
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !31061, !noundef !12
  store ptr %i.be, ptr %i.v, align 8, !dbg !31062
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !31062
  store ptr %i.bj, ptr %i.bk, align 8, !dbg !31062
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !31062
  store i64 %i.bh, ptr %i.bl, align 8, !dbg !31062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !31063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !31065
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.04.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.i unwind label %.thread, !dbg !31065

bb.h:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24, !dbg !31074
  %i.bn = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8, !dbg !31081 ; 0 uses
  %.pre = load i64, ptr %i.aq, align 8, !dbg !31060
  br label %bb.g, !dbg !31084

.thread87:                                        ; preds = %.thread94, %bb.aw, %bb.ao, %.thread76
  %.sroa.014.0 = phi i8 [ %.sroa.014.180, %.thread76 ], [ %.sroa.014.3, %bb.ao ], [ %.sroa.014.3, %bb.aw ], [ %.sroa.014.3, %.thread94 ], !dbg !31085
  %.sroa.025.2 = phi i1 [ true, %.thread76 ], [ false, %bb.ao ], [ false, %bb.aw ], [ false, %.thread94 ], !dbg !31001 ; 2 uses
  %.pn43 = phi { ptr, i32 } [ %.pn4182, %.thread76 ], [ %i.ea, %bb.ao ], [ %i.ee, %bb.aw ], [ %i.dm, %.thread94 ] ; 2 uses
  %i.bo = trunc nuw i8 %.sroa.014.0 to i1, !dbg !31086
  br i1 %i.bo, label %bb.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62, !dbg !31086

.thread:                                          ; preds = %bb.g, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az, !dbg !31086

bb.i:                                             ; preds = %bb.g
  %i.bq = load i64, ptr %i.d, align 8, !dbg !31065, !range !1950, !noundef !12
  %i.br = trunc nuw i64 %i.bq to i1, !dbg !31087
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !31088
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !31088, !range !14, !noundef !12 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !31088 ; 2 uses
  br i1 %i.br, label %bb.j, label %bb.k, !dbg !31087, !prof !2574

bb.j:                                             ; preds = %bb.i
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !31089
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bt, i64 %i.bv) #42
          to label %bb.d unwind label %.thread, !dbg !31090

bb.k:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bu, align 8, !dbg !31092, !nonnull !12, !noundef !12
  %i.bx = icmp samesign ule i64 %.sroa.04.0, %i.bt, !dbg !31093
  tail call void @llvm.assume(i1 %i.bx), !dbg !31097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !31100
  store i64 %i.bt, ptr %i.u, align 8, !dbg !31101
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !31101 ; 3 uses
  store ptr %i.bw, ptr %i.by, align 8, !dbg !31101
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !31101 ; 4 uses
  store i64 0, ptr %i.bz, align 8, !dbg !31101
  %i.ca = icmp eq i64 %.sroa.04.0, 0, !dbg !31102 ; 2 uses
  br i1 %i.ca, label %bb.r, label %bb.l, !dbg !31102

bb.l:                                             ; preds = %bb.k
  %i.cb = add nsw i64 %.sroa.04.0, -1, !dbg !31107 ; 2 uses
  %.not138 = icmp eq i64 %i.cb, 0, !dbg !31108
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !dbg !31110

.lr.ph:                                           ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  br label %bb.p, !dbg !31110

._crit_edge.loopexit:                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit61
  %.pre140 = load i64, ptr %i.u, align 8, !dbg !31117, !range !280, !alias.scope !31127, !noalias !31130
  br label %._crit_edge, !dbg !31132

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.cd = phi i64 [ %.pre140, %._crit_edge.loopexit ], [ %i.bt, %bb.l ], !dbg !31117
  %i.ce = phi i64 [ %i.ct, %._crit_edge.loopexit ], [ 0, %bb.l ], !dbg !31133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !31132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !31132
  %i.cf = icmp eq i64 %i.ce, %i.cd, !dbg !31134
  br i1 %i.cf, label %bb.m, label %bb.q, !dbg !31134

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.q unwind label %bb.n, !dbg !31135, !noalias !31130

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread76 unwind label %bb.o, !dbg !31136

bb.o:                                             ; preds = %bb.n
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !31139
  unreachable, !dbg !31139

bb.p:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit61
  %.sroa.028.0133 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit61 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !31140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !31140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !31140
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE8split_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, i64 noundef %i.bd)
          to label %bb.s unwind label %.loopexit, !dbg !31142

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

.loopexit.split-lp:                               ; preds = %bb.r, %bb.x, %bb.y, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

bb.q:                                             ; preds = %bb.m, %._crit_edge
  %i.ci = load ptr, ptr %i.by, align 8, !dbg !31143, !alias.scope !31127, !noalias !31130, !nonnull !12, !noundef !12
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.ce, !dbg !31152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !31155
  %i.ck = add i64 %i.ce, 1, !dbg !31159
  store i64 %i.ck, ptr %i.bz, align 8, !dbg !31159, !alias.scope !31127, !noalias !31130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !31160
  br label %bb.r, !dbg !31161

bb.r:                                             ; preds = %bb.k, %bb.q
  %.sroa.014.3 = phi i8 [ 0, %bb.q ], [ 1, %bb.k ], !dbg !31162 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !31163
  invoke void @_RNvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary8iteratorNtB6_20FixedSizeBinaryArray11values_iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noundef nonnull align 8 %1)
          to label %bb.w unwind label %.loopexit.split-lp, !dbg !31164

bb.s:                                             ; preds = %bb.p
  %i.cl = add nuw nsw i64 %.sroa.028.0133, 1, !dbg !31165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !31171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !31172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !dbg !31173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31171
  %i.cm = load i64, ptr %i.bz, align 8, !dbg !31174, !alias.scope !31177, !noalias !31180, !noundef !12 ; 3 uses
  %i.cn = load i64, ptr %i.u, align 8, !dbg !31182, !range !280, !alias.scope !31177, !noalias !31180, !noundef !12
  %i.co = icmp eq i64 %i.cm, %i.cn, !dbg !31185
  br i1 %i.co, label %bb.t, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit61, !dbg !31185

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit61 unwind label %bb.u, !dbg !31186, !noalias !31180

bb.u:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread76 unwind label %bb.v, !dbg !31187

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !31190
  unreachable, !dbg !31190

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit61: ; preds = %bb.s, %bb.t
  %i.cr = load ptr, ptr %i.by, align 8, !dbg !31191, !alias.scope !31177, !noalias !31180, !nonnull !12, !noundef !12
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cm, !dbg !31196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !31198
  %i.ct = add i64 %i.cm, 1, !dbg !31200           ; 2 uses
  store i64 %i.ct, ptr %i.bz, align 8, !dbg !31200, !alias.scope !31177, !noalias !31180
  %2 = icmp ult i64 %i.cl, %i.cb, !dbg !31108
  br i1 %2, label %bb.p, label %._crit_edge.loopexit, !dbg !31110

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !31201
  %i.cu = load i64, ptr %i.ag, align 8, !dbg !31204, !noundef !12 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0, !dbg !31206
  br i1 %i.cv, label %bb.y, label %bb.x, !dbg !31206

bb.x:                                             ; preds = %bb.w
  %i.cw = load i64, ptr %i.aq, align 8, !dbg !31207, !noundef !12
  %i.cx = udiv i64 %i.cw, %i.cu, !dbg !31206      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31210
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.cx, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
          to label %bb.z unwind label %.loopexit.split-lp, !dbg !31210

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #42
          to label %bb.d unwind label %.loopexit.split-lp, !dbg !31206

bb.z:                                             ; preds = %bb.x
  %i.cy = load i64, ptr %i.c, align 8, !dbg !31210, !range !1950, !noundef !12
  %i.cz = trunc nuw i64 %i.cy to i1, !dbg !31221
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !31222
  %i.db = load i64, ptr %i.da, align 8, !dbg !31222, !range !14, !noundef !12 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !31222 ; 2 uses
  br i1 %i.cz, label %bb.aa, label %bb.ab, !dbg !31221, !prof !2574

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !31223
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.db, i64 %i.dd) #42
          to label %bb.d unwind label %.loopexit.split-lp, !dbg !31224

bb.ab:                                            ; preds = %bb.z
  %i.de = load ptr, ptr %i.dc, align 8, !dbg !31226, !nonnull !12, !noundef !12
  %i.df = icmp ule i64 %i.cx, %i.db, !dbg !31227
  call void @llvm.assume(i1 %i.df), !dbg !31231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31233
  store i64 %i.db, ptr %i.o, align 8, !dbg !31234
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !31234
  store ptr %i.de, ptr %i.dg, align 8, !dbg !31234
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !31234
  store i64 0, ptr %i.dh, align 8, !dbg !31234
  br i1 %i.ca, label %._crit_edge137, label %.lr.ph136, !dbg !31235

.lr.ph136:                                        ; preds = %bb.ab
  store ptr %i.p, ptr %i.m, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.zext, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.w, ptr %i.dj, align 8
  br label %bb.ac, !dbg !31235

._crit_edge137:                                   ; preds = %bb.ax, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !31242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !31243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !31243
  %i.dk = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %bb.ad unwind label %.thread91, !dbg !31244

bb.ac:                                            ; preds = %.lr.ph136, %bb.ax
  %.sroa.026.0134 = phi i64 [ 0, %.lr.ph136 ], [ %i.ef, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !31252
  store i64 %.sroa.026.0134, ptr %i.n, align 8, !dbg !31252
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB20_9enumerate9EnumerateINtNtB20_4take4TakeQINtNtNtB24_5slice4iter11ChunksExacthEEENCNvNtNtCslFlrwjHoTci_14polars_compute4cast9binary_to28fixed_size_binary_to_binview0EEB4h_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.ax unwind label %bb.ay, !dbg !31253

.thread91:                                        ; preds = %._crit_edge137, %bb.ad
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread76, !dbg !31262

bb.ad:                                            ; preds = %._crit_edge137
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull %i.dk)
          to label %bb.ae unwind label %.thread91, !dbg !31263

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !31264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !31265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !31267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 38, i64 32, i1 false), !dbg !31267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !31268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !31268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !31269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !31269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !31269
  %i.dl = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.af unwind label %bb.av, !dbg !31270

.thread94:                                        ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.thread87, !dbg !31279

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferIBI_hEE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.dl)
          to label %bb.ag unwind label %bb.av, !dbg !31280

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !31281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !31282
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31283
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !31283, !noundef !12 ; 4 uses
  %.not37 = icmp eq ptr %i.do, null, !dbg !31283
  br i1 %.not37, label %bb.aj, label %bb.ah, !dbg !31289

bb.ah:                                            ; preds = %bb.ag
  %i.dp = load i64, ptr %i.do, align 8, !dbg !31290, !range !5985, !noalias !31302, !noundef !12
  %i.dq = icmp eq i64 %i.dp, 3, !dbg !31305
  br i1 %i.dq, label %bb.al, label %bb.ai, !dbg !31305

bb.ai:                                            ; preds = %bb.ah
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24, !dbg !31306
  %i.ds = atomicrmw add ptr %i.dr, i64 1 monotonic, align 8, !dbg !31310, !noalias !31302 ; 0 uses
  br label %bb.al, !dbg !31312

bb.aj:                                            ; preds = %bb.ag
  store ptr null, ptr %i.e, align 8, !dbg !31313
  br label %bb.ak, !dbg !31314

bb.ak:                                            ; preds = %bb.al, %bb.aj
  invoke void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE7try_newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.am unwind label %.thread94, !dbg !31265

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !31315
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !31316
  %i.dv = load atomic i64, ptr %i.du monotonic, align 8, !dbg !31323, !noalias !31302
  store ptr %i.do, ptr %i.e, align 8, !dbg !31325
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !31325
  %i.dw = load <2 x i64>, ptr %i.dt, align 8, !dbg !31315, !noalias !31302
  store <2 x i64> %i.dw, ptr %.sroa.468.0..sroa_idx, align 8, !dbg !31325
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !31325
  store i64 %i.dv, ptr %.sroa.670.0..sroa_idx, align 8, !dbg !31325
  br label %bb.ak, !dbg !31326

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !31279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !31279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !31279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !31279
  call void @llvm.experimental.noalias.scope.decl(metadata !31327), !dbg !31330
  call void @llvm.experimental.noalias.scope.decl(metadata !31331), !dbg !31330
  %i.dx = load i8, ptr %i.j, align 8, !dbg !31333, !range !6019, !alias.scope !31331, !noalias !31336, !noundef !12
  %i.dy = icmp eq i8 %i.dx, 42, !dbg !31333
  br i1 %i.dy, label %bb.an, label %bb.ar, !dbg !31338, !prof !2574

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31339, !noalias !31340
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !31339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dz, i64 72, i1 false), !dbg !31339, !noalias !31336
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #42
          to label %bb.ap unwind label %bb.ao, !dbg !31341, !noalias !31343

bb.ao:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #41
          to label %.thread87 unwind label %bb.aq, !dbg !31344, !noalias !31343

bb.ap:                                            ; preds = %bb.an
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !31345, !noalias !31343
  unreachable, !dbg !31345

bb.ar:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.j, i64 128, i1 false), !dbg !31346, !alias.scope !31343, !noalias !31347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !31348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !31349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !31262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !31350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !31351
  %i.ec = trunc nuw i8 %.sroa.014.3 to i1, !dbg !31086
  br i1 %i.ec, label %bb.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit, !dbg !31086

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !31086
  br label %bb.at, !dbg !31352

bb.as:                                            ; preds = %bb.ar
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !31353
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit, !dbg !31353

bb.at:                                            ; preds = %bb.bo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !31025
  ret void, !dbg !31352

bb.au:                                            ; preds = %bb.bp, %bb.az, %bb.av, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread, %bb.br, %bb.bq, %.thread76, %bb.ay, %bb.aw
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !31356
  unreachable, !dbg !31356

bb.av:                                            ; preds = %bb.af, %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aw unwind label %bb.au, !dbg !31357

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.i) #41
          to label %.thread87 unwind label %bb.au, !dbg !31279

bb.ax:                                            ; preds = %bb.ac
  %i.ef = add nuw nsw i64 %.sroa.026.0134, 1, !dbg !31360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !31366
  %3 = icmp samesign ult i64 %i.ef, %.sroa.04.0, !dbg !31367
  br i1 %3, label %bb.ac, label %._crit_edge137, !dbg !31235

bb.ay:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.o) #41
          to label %.thread76 unwind label %bb.au, !dbg !31262

.thread76:                                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.ay, %.thread91, %bb.u, %bb.n
  %.pn4182 = phi { ptr, i32 } [ %i.cp, %bb.u ], [ %i.cg, %bb.n ], [ %lpad.thr_comm, %.thread91 ], [ %lpad.thr_comm.split-lp, %bb.ay ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.sroa.014.180 = phi i8 [ 1, %bb.u ], [ 0, %bb.n ], [ %.sroa.014.3, %.thread91 ], [ %.sroa.014.3, %bb.ay ], [ 0, %.loopexit ], [ %.sroa.014.3, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.u) #41
          to label %.thread87 unwind label %bb.au, !dbg !31351

bb.az:                                            ; preds = %.thread, %.thread87
  %.pn4375 = phi { ptr, i32 } [ %i.bp, %.thread ], [ %.pn43, %.thread87 ]
  %.sroa.025.274 = phi i1 [ true, %.thread ], [ %.sroa.025.2, %.thread87 ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62 unwind label %bb.au, !dbg !31370

.thread112:                                       ; preds = %bb.bb, %bb.ba
  %lpad.thr_comm110 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread, !dbg !31373

bb.ba:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !31374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !31375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !31375
  %i.eg = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac)
          to label %bb.bb unwind label %.thread112, !dbg !31376

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull %i.eg)
          to label %bb.bc unwind label %.thread112, !dbg !31379

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !31380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !31381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !31383
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 38, i64 32, i1 false), !dbg !31383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !31384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !31384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !31385
  %i.eh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE5emptyCslFlrwjHoTci_14polars_compute()
          to label %bb.bd unwind label %bb.bp, !dbg !31386

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferIBI_hEE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull %i.eh)
          to label %bb.be unwind label %bb.bp, !dbg !31388

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !31389
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31390
  %i.ej = load ptr, ptr %i.ei, align 8, !dbg !31390, !noundef !12 ; 4 uses
  %.not45 = icmp eq ptr %i.ej, null, !dbg !31390
  br i1 %.not45, label %bb.bh, label %bb.bf, !dbg !31393

bb.bf:                                            ; preds = %bb.be
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !31394, !range !5985, !noalias !31401, !noundef !12
  %i.el = icmp eq i64 %i.ek, 3, !dbg !31404
  br i1 %i.el, label %bb.bj, label %bb.bg, !dbg !31404

bb.bg:                                            ; preds = %bb.bf
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24, !dbg !31405
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !dbg !31409, !noalias !31401 ; 0 uses
  br label %bb.bj, !dbg !31411

bb.bh:                                            ; preds = %bb.be
  store ptr null, ptr %i.x, align 8, !dbg !31412
  br label %bb.bi, !dbg !31413

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  call void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE7try_newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.x), !dbg !31381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !31414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !31414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !31414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !31414
  call void @llvm.experimental.noalias.scope.decl(metadata !31415), !dbg !31418
  call void @llvm.experimental.noalias.scope.decl(metadata !31419), !dbg !31418
  %i.eo = load i8, ptr %i.ab, align 8, !dbg !31421, !range !6019, !alias.scope !31419, !noalias !31423, !noundef !12
  %i.ep = icmp eq i8 %i.eo, 42, !dbg !31421
  br i1 %i.ep, label %bb.bk, label %bb.bo, !dbg !31425, !prof !2574

bb.bj:                                            ; preds = %bb.bg, %bb.bf
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !31426
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !31427
  %i.es = load atomic i64, ptr %i.er monotonic, align 8, !dbg !31434, !noalias !31401
  store ptr %i.ej, ptr %i.x, align 8, !dbg !31436
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !31436
  %i.et = load <2 x i64>, ptr %i.eq, align 8, !dbg !31426, !noalias !31401
  store <2 x i64> %i.et, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !31436
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !31436
  store i64 %i.es, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !31436
  br label %bb.bi, !dbg !31437

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31438, !noalias !31439
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !31438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.eu, i64 72, i1 false), !dbg !31438, !noalias !31423
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #42
          to label %bb.bm unwind label %bb.bl, !dbg !31440, !noalias !31441

bb.bl:                                            ; preds = %bb.bk
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread127 unwind label %bb.bn, !dbg !31442, !noalias !31441

bb.bm:                                            ; preds = %bb.bk
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !31443, !noalias !31441
  unreachable, !dbg !31443

bb.bo:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.ab, i64 128, i1 false), !dbg !31444, !alias.scope !31441, !noalias !31445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !31446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !31447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !31373
  br label %bb.at, !dbg !31352

bb.bp:                                            ; preds = %bb.bd, %bb.bc
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.bq unwind label %bb.au, !dbg !31448

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.aa) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread127 unwind label %bb.au, !dbg !31414

bb.br:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp111 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread unwind label %bb.au, !dbg !31373

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread127: ; preds = %bb.bq, %bb.bl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62
  %.pn48.pn123 = phi { ptr, i32 } [ %.pn48.pn124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread ], [ %.pn48.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62 ], [ %i.ev, %bb.bl ], [ %i.ex, %bb.bq ]
  resume { ptr, i32 } %.pn48.pn123, !dbg !31356

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread: ; preds = %.split.thread, %.thread112, %bb.br, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62
  %.pn48.pn124 = phi { ptr, i32 } [ %.pn48.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62 ], [ %lpad.thr_comm110, %.thread112 ], [ %lpad.thr_comm.split-lp111, %bb.br ], [ %lpad.thr_comm148, %.split.thread ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.af) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslFlrwjHoTci_14polars_compute.exit62.thread127 unwind label %bb.au, !dbg !31025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0) unnamed_addr #10 !dbg !31451 {
bb.a:
  %i.a = bitcast i16 %0 to half, !dbg !31454
  %.sroa.04.0.vec.extract = fpext half %i.a to float, !dbg !31454
  ret float %.sroa.04.0.vec.extract, !dbg !31466
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %0) unnamed_addr #10 !dbg !31467 {
bb.a:
  %.sroa.0.12.vec.insert = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0, !dbg !31468
  %i.a = tail call <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float> %.sroa.0.12.vec.insert, i32 0), !dbg !31469
  %.sroa.02.0.vec.extract = extractelement <8 x i16> %i.a, i64 0, !dbg !31478
  ret i16 %.sroa.02.0.vec.extract, !dbg !31485
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXCsLMQD3BJNpw_9dyn_cloneNtNtNtCs8774dFTUdNv_12polars_arrow6scalar7boolean13BooleanScalarNtB2_8DynClone11___clone_boxCslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31486 {
bb.a:
  %.val = load i8, ptr %0, align 1, !dbg !31490, !range !19901, !noundef !12
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !31491
  %i.a = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 1, i64 noundef range(i64 1, 9) 1) #39, !dbg !31499 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !31500
  br i1 %i.b, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !31501, !prof !2574

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #42, !dbg !31502
  unreachable, !dbg !31502

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i8 %.val, ptr %i.a, align 1, !dbg !31503
  ret ptr %i.a, !dbg !31505
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscgRAwXFJnXP_4core3anyINtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary15DictionaryArrayaENtB2_3Any7type_idCslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 !dbg !31506 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @143, i64 16, i1 false), !dbg !31508
  ret void, !dbg !31512
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscgRAwXFJnXP_4core3anyINtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary15DictionaryArrayhENtB2_3Any7type_idCslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 !dbg !31513 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @144, i64 16, i1 false), !dbg !31514
  ret void, !dbg !31517
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
end_hunk_0
