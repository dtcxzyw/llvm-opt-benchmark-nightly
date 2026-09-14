Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.011?download=true
inline.NumInlined: 4847
inline.NumDeleted: 2086
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtCsl8OoimOLbh_6qdrant9consensus23RaftMessageSenderHandleEEBH_:bb.a

bb.m:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant9consensus23RaftMessageSenderHandleEBF_.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5265, !noundef !17
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsPYQCUnoTxQ_10collection9telemetry25ShardCleanStatusTelemetryEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #37
          to label %common.resume.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !25, !alias.scope !5266, !noundef !17 ; 3 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEBJ_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i
  %i.i = icmp ne i64 %i.g, -9223372036854775805
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp sgt i64 %i.g, -1
  br i1 %i.j, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEBJ_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9telemetry31ShardCleanStatusFailedTelemetryECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9telemetry31ShardCleanStatusFailedTelemetryECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEBJ_.exit

bb.h:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEBJ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9telemetry31ShardCleanStatusFailedTelemetryECsl8OoimOLbh_6qdrant.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5275)
  %i.a = load i8, ptr %0, align 8, !range !34, !alias.scope !5275, !noundef !17 ; 2 uses
  %.not.i = icmp eq i8 %i.a, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5276)
  br i1 %.not.i, label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.b, align 4, !alias.scope !5279, !noundef !17
  %i.c = or i32 %.val1.i.i.i.i, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 1
  br label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !5279, !noundef !17
  %i.l = or i64 %.val2.i.i.i.i, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = mul nuw nsw i64 %i.n, 9
  %i.p = add nuw nsw i64 %i.o, 73
  %i.q = lshr i64 %i.p, 6
  %i.r = add nuw nsw i64 %i.q, 1
  br label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !5279, !noundef !17 ; 3 uses
  %i.t = icmp sgt i64 %.val.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = or i64 %.val.i.i.i.i, 1
  %i.v = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = mul nuw nsw i64 %i.w, 9
  %i.y = add nuw nsw i64 %i.x, 73
  %i.z = lshr i64 %i.y, 6
  %i.aa = add nuw i64 %.val.i.i.i.i, 1
  %i.ab = add nuw i64 %i.aa, %i.z
  br label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

bb.f:                                             ; preds = %bb.b
  br label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = tail call noundef i64 @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map11encoded_lenNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNvNtB4_6string11encoded_lenINvNtB4_7message11encoded_lenB1x_EECsl8OoimOLbh_6qdrant(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac) ; 2 uses
  %i.ae = or i64 %i.ad, 1
  %i.af = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63
  %i.ah = mul nuw nsw i64 %i.ag, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = add i64 %i.ad, 1
  %i.al = add i64 %i.ak, %i.aj
  br label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

bb.h:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5279, !nonnull !17, !noundef !17 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !5279, !noundef !17 ; 2 uses
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %.val3.i.i.i.i, i64 %.val4.i.i.i.i
  %i.ap = tail call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2f_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB37_5accumjNtB56_3Sum3sumIBO_BN_B41_EE0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull readonly align 8 %.val3.i.i.i.i, ptr noundef nonnull readonly %i.ao, i64 noundef 0), !noalias !5279
  %i.aq = add i64 %i.ap, %.val4.i.i.i.i           ; 2 uses
  %i.ar = or i64 %i.aq, 1
  %i.as = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = xor i64 %i.as, 63
  %i.au = mul nuw nsw i64 %i.at, 9
  %i.av = add nuw nsw i64 %i.au, 73
  %i.aw = lshr i64 %i.av, 6
  %i.ax = add i64 %i.aq, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ], [ %i.ay, %bb.h ], [ %i.r, %bb.d ], [ %i.ab, %bb.e ], [ 2, %bb.f ], [ %i.al, %bb.g ], [ 9, %bb.b ] ; 2 uses
  %i.az = or i64 %.sroa.02.0.i.i, 1
  %i.ba = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.az, i1 true)
  %i.bb = xor i64 %i.ba, 63
  %i.bc = mul nuw nsw i64 %i.bb, 9
  %i.bd = add nuw nsw i64 %i.bc, 73
  %i.be = lshr i64 %i.bd, 6
  %i.bf = add i64 %.sroa.02.0.i.i, 1
  %i.bg = add i64 %i.bf, %i.be
  ret i64 %i.bg
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvXs3_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtB11_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(address_is_null) %.0.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5304)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5305, !noalias !51, !noundef !17
  %i.c = load i64, ptr %0, align 8, !alias.scope !5305, !noalias !51, !noundef !17 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5305, !noalias !51, !noundef !17 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5305, !noalias !51, !noundef !17 ; 3 uses
  %i.h = icmp ne ptr %.0.val, null                ; 2 uses
  %i.i = zext i1 %i.h to i64
  %i.j = xor i64 %i.b, %i.i
  %i.k = zext i64 %i.j to i128
  %i.l = mul nuw nsw i128 %i.k, 6364136223846793005 ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = xor i128 %i.m, %i.l
  %i.o = trunc i128 %i.n to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %_RINvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomState8hash_oneRINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %.0.val, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !5306, !nonnull !17, !noundef !17 ; 8 uses
  %i.q = getelementptr i8, ptr %.0.val, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !5306, !noundef !17 ; 10 uses
  %i.r = add i64 %.val1.i.i.i.i.i, %i.o
  %i.s = mul i64 %i.r, 6364136223846793005        ; 3 uses
  %i.t = icmp samesign ugt i64 %.val1.i.i.i.i.i, 8
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i64 %.val1.i.i.i.i.i, 1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %.val1.i.i.i.i.i, 1
  br i1 %i.v, label %bb.f, label %_RNvNtCsyIGusAaLFh_5ahash10operations10read_small.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp samesign ugt i64 %.val1.i.i.i.i.i, 3
  %i.x = getelementptr i8, ptr %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i ; 2 uses
  br i1 %i.w, label %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i.i.i, label %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = load i8, ptr %.val.i.i.i.i.i, align 1, !alias.scope !5307, !noalias !5308, !noundef !17
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  br label %_RNvNtCsyIGusAaLFh_5ahash10operations10read_small.exit.i.i.i.i.i.i.i.i

_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i25.i.i.i.i.i.i.i.i = load i16, ptr %.val.i.i.i.i.i, align 1, !alias.scope !5309, !noalias !5310
  %i.aa = zext i16 %.sroa.0.0.copyload.i25.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr i8, ptr %i.x, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !5307, !noalias !5308, !noundef !17
  %i.ad = zext i8 %i.ac to i64
  br label %_RNvNtCsyIGusAaLFh_5ahash10operations10read_small.exit.i.i.i.i.i.i.i.i

_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i = load i32, ptr %.val.i.i.i.i.i, align 1, !alias.scope !5309, !noalias !5311
  %i.ae = zext i32 %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i to i64
  %i.af = getelementptr i8, ptr %i.x, i64 -4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.af, align 1, !alias.scope !5309, !noalias !5308
  %i.ag = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i to i64
  br label %_RNvNtCsyIGusAaLFh_5ahash10operations10read_small.exit.i.i.i.i.i.i.i.i

_RNvNtCsyIGusAaLFh_5ahash10operations10read_small.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i.i.i, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i.i.i ], [ %i.ad, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i.i.i ], [ %i.z, %bb.f ], [ 0, %bb.d ]
  %.sroa.064.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ae, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i.i.i ], [ %i.aa, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i.i.i ], [ %i.z, %bb.f ], [ 0, %bb.d ]
  %i.ah = xor i64 %.sroa.064.0.i.i.i.i.i.i.i.i, %i.e
  %i.ai = xor i64 %.sroa.7.0.i.i.i.i.i.i.i.i, %i.g
  %i.aj = zext i64 %i.ah to i128
  %i.ak = zext i64 %i.ai to i128
  %i.al = mul nuw i128 %i.aj, %i.ak               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64
  %i.ap = add i64 %i.s, %i.c
  %i.aq = xor i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 23)
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtCsyIGusAaLFh_5ahash13fallback_hash7AHasherECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.as = icmp samesign ugt i64 %.val1.i.i.i.i.i, 16
  br i1 %i.as, label %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i.i.i.i, label %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i.i.i.i

_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.copyload.i29.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i, align 1, !alias.scope !5309, !noalias !5312
  %i.at = getelementptr i8, ptr %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %.sroa.0.0.copyload.i21.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 1, !alias.scope !5309, !noalias !5313
  %i.av = xor i64 %.sroa.0.0.copyload.i29.i.i.i.i.i.i.i.i, %i.e
  %i.aw = xor i64 %.sroa.0.0.copyload.i21.i.i.i.i.i.i.i.i, %i.g
  %i.ax = zext i64 %i.av to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.ba, %i.az
  %i.bc = trunc i128 %i.bb to i64
  %i.bd = add i64 %i.s, %i.c
  %i.be = xor i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 23)
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtCsyIGusAaLFh_5ahash13fallback_hash7AHasherECsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bg = getelementptr i8, ptr %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i = load i128, ptr %i.bh, align 1, !alias.scope !5309, !noalias !5313 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i, 64
  %i.bi = xor i64 %i.e, %.sroa.017.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.bj = zext i64 %i.bi to i128
  %i.bk = zext i64 %i.g to i128                   ; 2 uses
  %i.bl = xor i128 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i, %i.bk
  %i.bm = mul nuw i128 %i.bl, %i.bj               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64
  %i.bq = add i64 %i.s, %i.c
  %i.br = xor i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 23)
  br label %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i

_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0101.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i.i.i.i ], [ %i.bt, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0100.i.i.i.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i.i, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i.i.i.i ], [ %i.bu, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i ]
  %storemerge99.i.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i.i.i.i ], [ %i.ce, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.i.i.i.i.i.i.i.i, i64 16
  %i.bu = add nsw i64 %.sroa.11.0100.i.i.i.i.i.i.i.i, -16 ; 2 uses
  %.sroa.0.0.copyload.i31.i.i.i.i.i.i.i.i = load i128, ptr %.sroa.0.0101.i.i.i.i.i.i.i.i, align 1, !alias.scope !5309, !noalias !5314 ; 2 uses
  %.sroa.018.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i31.i.i.i.i.i.i.i.i to i64
  %.sroa.419.0.extract.shift.i.i.i.i.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i31.i.i.i.i.i.i.i.i, 64
  %i.bv = xor i64 %i.e, %.sroa.018.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.bw = zext i64 %i.bv to i128
  %i.bx = xor i128 %.sroa.419.0.extract.shift.i.i.i.i.i.i.i.i, %i.bk
  %i.by = mul nuw i128 %i.bx, %i.bw               ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = xor i128 %i.bz, %i.by
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = add i64 %storemerge99.i.i.i.i.i.i.i.i, %i.c
  %i.cd = xor i64 %i.cc, %i.cb                    ; 2 uses
  %i.ce = tail call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 23) ; 2 uses
  %i.cf = icmp ugt i64 %i.bu, 16
  br i1 %i.cf, label %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtCsyIGusAaLFh_5ahash13fallback_hash7AHasherECsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtCsyIGusAaLFh_5ahash13fallback_hash7AHasherECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i.i.i.i, %_RNvNtCsyIGusAaLFh_5ahash10operations10read_small.exit.i.i.i.i.i.i.i.i
  %.lcssa.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %_RNvNtCsyIGusAaLFh_5ahash10operations10read_small.exit.i.i.i.i.i.i.i.i ], [ %i.bf, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i.i.i.i ], [ %i.ce, %_RNvXNtCsyIGusAaLFh_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i.i.i.i ]
  %i.cg = xor i64 %.lcssa.sink.i.i.i.i.i.i.i.i, 255
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw nsw i128 %i.ch, 6364136223846793005 ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  br label %_RINvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomState8hash_oneRINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit

_RINvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomState8hash_oneRINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtCsyIGusAaLFh_5ahash13fallback_hash7AHasherECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.cl, %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtCsyIGusAaLFh_5ahash13fallback_hash7AHasherECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %i.o, %bb.a ] ; 2 uses
  %i.cm = zext i64 %.sroa.10.0.i.i to i128
  %i.cn = zext i64 %i.c to i128
  %i.co = mul nuw i128 %i.cm, %i.cn               ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = xor i128 %i.cp, %i.co
  %i.cr = trunc i128 %i.cq to i64                 ; 2 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 %.sroa.10.0.i.i)
  ret i64 %i.cs
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetB1v_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B28_NtNtB2d_12random_state11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %.val2 = load ptr, ptr %i.e, align 8, !alias.scope !51, !noalias !52, !align !20, !noundef !17
  %i.f = tail call fastcc noundef i64 @_RINvXs3_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtB11_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr readonly %.val2) #34
  ret i64 %i.f
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B28_NtNtB2d_12random_state11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %.val2 = load ptr, ptr %i.e, align 8, !alias.scope !51, !noalias !52, !align !20, !noundef !17
  %i.f = tail call fastcc noundef i64 @_RINvXs3_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtB11_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr readonly %.val2) #34
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs577yCKf7gy3_4http3uri3UriyEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_yNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -96
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noundef nonnull align 8 %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs7qyR1EixLKx_12jsonwebtoken10validation21BorrowedCowIfPossibleuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs7qyR1EixLKx_12jsonwebtoken10validation21BorrowedCowIfPossibleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_5boxed3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -40
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -40
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBS_IB1v_lINtNtBW_4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics28OperationDurationsAggregatorEEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBS_IB1v_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBS_IB1v_tINtNtBW_4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics28OperationDurationsAggregatorEEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBS_IB1v_tNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMaplINtNtBW_4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics28OperationDurationsAggregatorEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMaplNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMaptINtNtBW_4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics28OperationDurationsAggregatorEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !17, !align !20, !noundef !17
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMaptNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !20, !noundef !17
  %i.b = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = sub nsw i64 0, %2
end_hunk_0
