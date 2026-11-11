Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.07?download=true
inline.NumInlined: 958
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvYINtNtNtCs7lddnaOK2f6_4zstd6stream5write7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskeugdADtBsi_12pingora_core:bb.a
  %i.at = extractvalue { i64, ptr } %i.ar, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1292
  %i.au = load i64, ptr %i.o, align 8, !noalias !1292, !noundef !7 ; 5 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !1290
  %i.av = trunc nuw i64 %i.as to i1
  br i1 %i.av, label %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread18, label %bb.h

_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread18: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1292
  br label %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread

bb.f:                                             ; preds = %_RNvMNtNtNtCs7lddnaOK2f6_4zstd6stream3zio6writerINtB2_6WriterINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_3raw7EncoderE17write_from_offsetCskeugdADtBsi_12pingora_core.exit.i.i
  %i.aw = call noundef ptr @_RNvXs4_NtNtCs7lddnaOK2f6_4zstd6stream3rawNtB5_7EncoderNtB5_9Operation6reinit(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %.not11.i.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i.i, label %bb.g, label %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.m, align 1, !alias.scope !1290
  br label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.ax = icmp eq ptr %i.at, null
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.m, align 1, !alias.scope !1290
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not12.i.i = icmp eq i64 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1292
  br i1 %.not12.i.i, label %bb.d, label %bb.l

_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread: ; preds = %bb.f, %bb.c, %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread18
  %storemerge = phi ptr [ %i.at, %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread18 ], [ %i.v, %bb.c ], [ %i.aw, %bb.f ] ; 9 uses
  store i64 1, ptr %i.d, align 8
  store ptr %storemerge, ptr %i.r, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge) ]
  %i.ay = ptrtoint ptr %storemerge to i64         ; 4 uses
  %i.az = and i64 %i.ay, 3
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %bb.k
    i64 3, label %.split35
    i64 0, label %.split36
    i64 1, label %.split
  ], !prof !12

default.unreachable:                              ; preds = %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread
  unreachable

bb.k:                                             ; preds = %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.k
  %i.bb = lshr i64 %i.ay, 32
  %i.bc = trunc nuw i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !7, !noundef !7
  %i.bf = invoke noundef zeroext i1 %i.be(i32 noundef %i.bc)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.s, !inline_history !1

.split35:                                         ; preds = %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread
  %i.bg = lshr i64 %i.ay, 32
  %i.bh = icmp ult ptr %storemerge, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bg to i8
  %spec.select.i.i.i = select i1 %i.bh, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bi = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bj, label %bb.p, label %bb.m

.split36:                                         ; preds = %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !13, !noundef !7
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %.thread.thread, label %bb.m

.split:                                           ; preds = %_RNvXs6_NtNtCs7lddnaOK2f6_4zstd6stream5writeINtB5_7EncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread
  %i.bn = getelementptr i8, ptr %storemerge, i64 31
  %i.bo = load i8, ptr %i.bn, align 8, !range !13, !noundef !7
  %i.bp = icmp eq i8 %i.bo, 35
  br i1 %i.bp, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bq = icmp ugt i64 %i.au, %.sroa.6.053
  br i1 %i.bq, label %bb.n, label %bb.o, !prof !10

bb.m:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split35, %.split36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.au, i64 noundef %.sroa.6.053, i64 noundef %.sroa.6.053, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #25
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.br = sub nuw nsw i64 %.sroa.6.053, %i.au
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 %i.au
  br label %bb.r

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bf, label %.thread.thread, label %bb.m

.loopexit:                                        ; preds = %bb.r, %bb.a, %bb.m
  %.sroa.07.1 = phi ptr [ %storemerge, %bb.m ], [ null, %bb.a ], [ null, %bb.r ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1295
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit

bb.p:                                             ; preds = %.split35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1295
  %i.bt = icmp ult ptr %storemerge, inttoptr (i64 188978561024 to ptr)
  %i.bu = and i64 %i.ay, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bv)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit

bb.q:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1295
  %i.bw = getelementptr i8, ptr %storemerge, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.s, align 8, !alias.scope !1296, !noalias !1295
  store i8 3, ptr %i.a, align 8, !alias.scope !1296, !noalias !1295
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s), !noalias !1295
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit: ; preds = %.thread.thread, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1295
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit
  %.sroa.0.127 = phi ptr [ %.sroa.0.055, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit ], [ %i.bs, %bb.o ]
  %.sroa.6.125 = phi i64 [ %.sroa.6.053, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit ], [ %i.br, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = icmp eq i64 %.sroa.6.125, 0
  br i1 %i.bx, label %.loopexit, label %bb.b

bb.s:                                             ; preds = %.noexc, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #23
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %lpad.thr_comm

bb.u:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCs87coOwG4J0B_6flate22gz5write9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(224) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.split62:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split62
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.ab
  %.sroa.0.065 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.133, %bb.ab ] ; 5 uses
  %.sroa.6.063 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.131, %bb.ab ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.065, ptr %i.e, align 8, !noalias !1315
  store i64 %.sroa.6.063, ptr %i.h, align 8, !noalias !1315
  %i.t = load i8, ptr %i.i, align 8, !range !1316, !alias.scope !1314, !noundef !7
  %i.u = icmp eq i8 %i.t, 6
  br i1 %i.u, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.v = call fastcc noundef ptr @_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3mem10DecompressE4dumpCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0), !noalias !1318 ; 2 uses
  %.not1525.i.i = icmp eq ptr %i.v, null
  br i1 %.not1525.i.i, label %.lr.ph.split.i.i, label %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread19

.lr.ph.split.i.i:                                 ; preds = %bb.b, %bb.d
  %.val18.i.i = load i64, ptr %i.n, align 8, !alias.scope !1319, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1320
  call void @_RNvXs_NtCs87coOwG4J0B_6flate23zioNtNtB6_3mem10DecompressNtB4_3Ops7run_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.065, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, i8 noundef 0), !noalias !1321
  %i.w = load i32, ptr %i.c, align 8, !range !21, !noalias !1320, !noundef !7
  %.not16.i.i = icmp eq i32 %i.w, 2
  br i1 %.not16.i.i, label %bb.c, label %_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3mem10DecompressE17write_with_statusCskeugdADtBsi_12pingora_core.exit.thread19.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !1319, !noundef !7 ; 2 uses
  %i.x = load i8, ptr %i.o, align 4, !range !15, !noalias !1320, !noundef !7
  %i.y = icmp eq i8 %i.x, 2                       ; 2 uses
  %i.z = icmp ne i64 %.val.i.i, %.val18.i.i
  %brmerge.i.i = or i1 %i.z, %i.y
  br i1 %brmerge.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1320
  %i.aa = call fastcc noundef ptr @_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3mem10DecompressE4dumpCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0), !noalias !1321 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.aa, null
  br i1 %.not15.i.i, label %.lr.ph.split.i.i, label %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread19

_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3mem10DecompressE17write_with_statusCskeugdADtBsi_12pingora_core.exit.thread19.i: ; preds = %.lr.ph.split.i.i
  %i.ab = call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 22) #22, !noalias !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1320
  br label %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread19

bb.e:                                             ; preds = %bb.a
  %i.ac = call noundef ptr @_RINvMs_NtCs87coOwG4J0B_6flate22gzNtB5_14GzHeaderParser5parseRShECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) ; 9 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.m, label %bb.h

_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread19: ; preds = %bb.d, %bb.b, %_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3mem10DecompressE17write_with_statusCskeugdADtBsi_12pingora_core.exit.thread19.i
  %.sroa.0.01418.in.i = phi ptr [ %i.ab, %_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3mem10DecompressE17write_with_statusCskeugdADtBsi_12pingora_core.exit.thread19.i ], [ %i.v, %bb.b ], [ %i.aa, %bb.d ] ; 2 uses
  %.sroa.0.01418.i = ptrtoint ptr %.sroa.0.01418.in.i to i64
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.ad = sub i64 %.val.i.i, %.val18.i.i          ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1320
  %i.ae = icmp ult i64 %i.ad, %.sroa.6.063
  %or.cond.i = and i1 %i.y, %i.ae
  br i1 %or.cond.i, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.r, align 8, !alias.scope !1314, !noundef !7 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp samesign ult i64 %i.af, 8
  br i1 %i.ah, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskeugdADtBsi_12pingora_core.exit.i, label %bb.u

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.g
  %i.ai = sub nuw nsw i64 %.sroa.6.063, %i.ad
  %i.aj = sub nuw nsw i64 8, %i.af
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ai) ; 4 uses
  %i.ak = add nuw i64 %..i.i, %i.ad
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %..i.i)
  %i.al = load i64, ptr %i.r, align 8, !alias.scope !1322, !noundef !7 ; 2 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %i.ad
  %i.ao = load ptr, ptr %i.s, align 8, !alias.scope !1322, !nonnull !7, !noundef !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.an, i64 %..i.i, i1 false)
  %.pre.i10.i = load i64, ptr %i.r, align 8, !alias.scope !1322
  %i.aq = add i64 %.pre.i10.i, %..i.i
  store i64 %i.aq, ptr %i.r, align 8, !alias.scope !1322
  br label %bb.u

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1315
  store ptr %i.ac, ptr %i.d, align 8, !noalias !1315
  %i.ar = ptrtoint ptr %i.ac to i64               ; 5 uses
  %i.as = and i64 %i.ar, 3                        ; 2 uses
  switch i64 %i.as, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 0, label %bb.k
    i64 1, label %bb.l
  ], !prof !12

default.unreachable:                              ; preds = %bb.s, %bb.o, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.at = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.i
  %i.au = lshr i64 %i.ar, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !noundef !7
  %i.ay = invoke noundef i8 %i.ax(i32 noundef %i.av)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.n, !inline_history !0

bb.j:                                             ; preds = %bb.h
  %i.az = lshr i64 %i.ar, 32
  %i.ba = icmp ult ptr %i.ac, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.az to i8 ; 2 uses
  %i.bb = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.assume(i1 %i.bb)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.k:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !range !13, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.l:                                             ; preds = %bb.h
  %i.be = getelementptr i8, ptr %i.ac, i64 31
  %i.bf = load i8, ptr %i.be, align 8, !range !13, !noundef !7
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.m:                                             ; preds = %bb.e
  %i.bg = load i64, ptr %i.h, align 8, !noalias !1315, !noundef !7
  %i.bh = sub i64 %.sroa.6.063, %i.bg
  br label %bb.u

bb.n:                                             ; preds = %.noexc.i, %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #23
          to label %common.resume unwind label %bb.r

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.bf, %bb.l ], [ %switch.idx.cast.i.i.i.i, %bb.j ], [ %i.bd, %bb.k ], [ %i.ay, %.noexc.i ]
  %i.bj = icmp eq i8 %.sroa.0.0.i.i, 37
  br i1 %i.bj, label %bb.o, label %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread24

_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread24: ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1315
  br label %bb.s

bb.o:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1323
  switch i64 %i.as, label %default.unreachable [
    i64 2, label %.thread92
    i64 3, label %bb.p
    i64 0, label %.thread92
    i64 1, label %bb.q
  ], !prof !12

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp ult ptr %i.ac, inttoptr (i64 188978561024 to ptr)
  %i.bl = and i64 %i.ar, 1095216660480
  %i.bm = icmp ne i64 %i.bl, 1095216660480
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.assume(i1 %i.bm)
  br label %.thread92

bb.q:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.ac, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  store ptr %i.bn, ptr %i.l, align 8, !alias.scope !1324, !noalias !1323
  store i8 3, ptr %i.b, align 8, !alias.scope !1324, !noalias !1323
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l), !noalias !1325
  br label %.thread92

bb.r:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %lpad.thr_comm, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

.thread92:                                        ; preds = %bb.o, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.f, align 8
  br label %bb.y

bb.s:                                             ; preds = %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread24, %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread19
  %storemerge = phi ptr [ %i.ac, %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread24 ], [ %.sroa.0.01418.in.i, %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread19 ] ; 11 uses
  %.sroa.7.0.i22 = phi i64 [ %i.ar, %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread24 ], [ %.sroa.0.01418.i, %_RNvXs3_NtNtCs87coOwG4J0B_6flate22gz5writeINtB5_9GzDecoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5writeCskeugdADtBsi_12pingora_core.exit.thread19 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.f, align 8
  store ptr %storemerge, ptr %i.k, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge) ]
  %i.bp = and i64 %.sroa.7.0.i22, 3
  switch i64 %i.bp, label %default.unreachable [
    i64 2, label %bb.t
    i64 3, label %.split41
    i64 0, label %.split42
    i64 1, label %.split
  ], !prof !12

bb.t:                                             ; preds = %bb.s
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.t
  %i.br = lshr i64 %.sroa.7.0.i22, 32
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !7, !noundef !7
  %i.bv = invoke noundef zeroext i1 %i.bu(i32 noundef %i.bs)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.ac, !inline_history !1

.split41:                                         ; preds = %bb.s
  %i.bw = lshr i64 %.sroa.7.0.i22, 32
  %i.bx = icmp ult ptr %storemerge, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bw to i8
  %spec.select.i.i.i = select i1 %i.bx, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.by = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.by)
  %i.bz = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bz, label %bb.z, label %bb.w

.split42:                                         ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.cb = load i8, ptr %i.ca, align 8, !range !13, !noundef !7
  %i.cc = icmp eq i8 %i.cb, 35
  br i1 %i.cc, label %.thread.thread, label %bb.w

.split:                                           ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %storemerge, i64 31
  %i.ce = load i8, ptr %i.cd, align 8, !range !13, !noundef !7
  %i.cf = icmp eq i8 %i.ce, 35
  br i1 %i.cf, label %bb.aa, label %bb.w

bb.u:                                             ; preds = %bb.m, %bb.g, %bb.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskeugdADtBsi_12pingora_core.exit.i
  %.sroa.7.0.i.ph = phi i64 [ %i.bh, %bb.m ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ], [ %i.ak, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cg = icmp eq i64 %.sroa.7.0.i.ph, 0
  br i1 %i.cg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = icmp ugt i64 %.sroa.7.0.i.ph, %.sroa.6.063
  br i1 %i.ch, label %bb.x, label %bb.y, !prof !1326

bb.w:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split41, %.split42, %bb.u
  %.sroa.07.0 = phi ptr [ @179, %bb.u ], [ %storemerge, %.split42 ], [ %storemerge, %.split41 ], [ %storemerge, %.split ], [ %storemerge, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.7.0.i.ph, i64 noundef %.sroa.6.063, i64 noundef %.sroa.6.063, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #25
  unreachable

bb.y:                                             ; preds = %.thread92, %bb.v
  %i.ci = phi i64 [ %.sroa.6.063, %.thread92 ], [ %.sroa.7.0.i.ph, %bb.v ] ; 2 uses
  %i.cj = sub nuw nsw i64 %.sroa.6.063, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %i.ci
  br label %bb.ab

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bv, label %.thread.thread, label %bb.w

.loopexit:                                        ; preds = %bb.ab, %.split62, %bb.w
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.w ], [ null, %.split62 ], [ null, %bb.ab ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1327
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit

bb.z:                                             ; preds = %.split41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1327
  %i.cl = icmp ult ptr %storemerge, inttoptr (i64 188978561024 to ptr)
  %i.cm = and i64 %.sroa.7.0.i22, 1095216660480
  %i.cn = icmp ne i64 %i.cm, 1095216660480
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.cn)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit

bb.aa:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1327
  %i.co = getelementptr i8, ptr %storemerge, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  store ptr %i.co, ptr %i.p, align 8, !alias.scope !1328, !noalias !1327
  store i8 3, ptr %i.a, align 8, !alias.scope !1328, !noalias !1327
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !1327
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit: ; preds = %.thread.thread, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1327
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit
  %.sroa.0.133 = phi ptr [ %.sroa.0.065, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit ], [ %i.ck, %bb.y ]
  %.sroa.6.131 = phi i64 [ %.sroa.6.063, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit ], [ %i.cj, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cp = icmp eq i64 %.sroa.6.131, 0
  br i1 %i.cp, label %.loopexit, label %bb.a

bb.ac:                                            ; preds = %.noexc, %bb.t
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #23
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCs87coOwG4J0B_6flate22gz5write9GzEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.058 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.124, %bb.t ] ; 4 uses
  %.sroa.6.057 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.122, %bb.t ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.v = load i64, ptr %i.g, align 8, !alias.scope !1357, !noundef !7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.x = load i64, ptr %i.i, align 8, !alias.scope !1359, !noundef !7 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RNvMNtNtCs87coOwG4J0B_6flate22gz5writeINtB2_9GzEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE12write_headerCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RINvNtNtCs87coOwG4J0B_6flate22gz5write13write_nonzeroINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core.exit.i.i
  %i.aa = phi i64 [ %i.ai, %_RINvNtNtCs87coOwG4J0B_6flate22gz5write13write_nonzeroINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core.exit.i.i ], [ %i.x, %bb.c ] ; 4 uses
  %i.ab = load i64, ptr %i.j, align 8, !range !6, !alias.scope !1359, !noundef !7
  %.not.i.i = icmp eq i64 %i.ab, -1
  br i1 %.not.i.i, label %bb.d, label %_RINvNtNtCs87coOwG4J0B_6flate22gz5write13write_nonzeroINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

_RINvNtNtCs87coOwG4J0B_6flate22gz5write13write_nonzeroINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !alias.scope !1359, !nonnull !7, !noundef !7
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !1360
  %i.ad = load i64, ptr %i.l, align 8, !alias.scope !1361, !noundef !7 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = load ptr, ptr %i.m, align 8, !alias.scope !1361, !nonnull !7, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ac, i64 range(i64 0, -9223372036854775808) %i.aa, i1 false), !noalias !1362
  %.pre.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1361
  %i.ah = add i64 %.pre.i.i.i.i.i, %i.aa
  store i64 %i.ah, ptr %i.l, align 8, !alias.scope !1361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1363
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aa), !noalias !1362
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1363
  %i.ai = load i64, ptr %i.i, align 8, !alias.scope !1359, !noundef !7 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_RNvMNtNtCs87coOwG4J0B_6flate22gz5writeINtB2_9GzEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE12write_headerCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #24, !noalias !1362
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @158, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #24, !noalias !1362
  unreachable

_RNvMNtNtCs87coOwG4J0B_6flate22gz5writeINtB2_9GzEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE12write_headerCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RINvNtNtCs87coOwG4J0B_6flate22gz5write13write_nonzeroINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core.exit.i.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %_RNvMNtNtCs87coOwG4J0B_6flate22gz5writeINtB2_9GzEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE12write_headerCskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.al = load i64, ptr %i.n, align 8, !alias.scope !1366, !noundef !7 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCskeugdADtBsi_12pingora_core.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.h
  %i.ao = phi i64 [ %i.aw, %bb.h ], [ %i.al, %bb.f ] ; 4 uses
  %i.ap = load i64, ptr %i.j, align 8, !range !6, !alias.scope !1366, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.ap, -1
  br i1 %.not.i.i.i, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %.lr.ph.i.i.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #24, !noalias !1367
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = load ptr, ptr %i.o, align 8, !alias.scope !1366, !nonnull !7, !noundef !7
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.ao), !noalias !1368
  %i.ar = load i64, ptr %i.l, align 8, !alias.scope !1369, !noundef !7 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1
  call void @llvm.assume(i1 %i.as)
  %i.at = load ptr, ptr %i.m, align 8, !alias.scope !1369, !nonnull !7, !noundef !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aq, i64 range(i64 0, -9223372036854775808) %i.ao, i1 false), !noalias !1367
  %.pre.i.i.i.i9.i = load i64, ptr %i.l, align 8, !alias.scope !1369
  %i.av = add i64 %.pre.i.i.i.i9.i, %i.ao
  store i64 %i.av, ptr %i.l, align 8, !alias.scope !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1370
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ao), !noalias !1367
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1370
  %i.aw = load i64, ptr %i.n, align 8, !alias.scope !1366, !noundef !7 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCskeugdADtBsi_12pingora_core.exit.i.i, label %.lr.ph.i.i.i

_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.h, %bb.f
  %.val16.i.i = load i64, ptr %i.q, align 8, !alias.scope !1371, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1372
  call void @_RNvXNtCs87coOwG4J0B_6flate23zioNtNtB4_3mem8CompressNtB2_3Ops7run_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.058, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.057, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0, i8 noundef 0), !noalias !1367
  %i.az = load i8, ptr %i.c, align 8, !range !28, !noalias !1372, !noundef !7
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCskeugdADtBsi_12pingora_core.exit.i.i
  %.val.i.i = load i64, ptr %i.q, align 8, !alias.scope !1371, !noundef !7 ; 2 uses
  %i.bb = load i8, ptr %i.r, align 1, !range !15, !noalias !1372, !noundef !7
  %i.bc = icmp eq i8 %i.bb, 2
  %i.bd = icmp ne i64 %.val.i.i, %.val16.i.i      ; 2 uses
  %brmerge.i.i = or i1 %i.bd, %i.bc
  br i1 %brmerge.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1372
  br label %bb.f

bb.k:                                             ; preds = %bb.i
  %i.be = sub i64 %.val.i.i, %.val16.i.i          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1372
  %.not8.i = icmp ugt i64 %i.be, %.sroa.6.057
  br i1 %.not8.i, label %bb.l, label %bb.o, !prof !27

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #24
  unreachable

bb.m:                                             ; preds = %_RNvMs2_NtCs87coOwG4J0B_6flate23zioINtB5_6WriterINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCskeugdADtBsi_12pingora_core.exit.i.i
  %i.bf = call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 22) #22, !noalias !1367 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1372
  store i64 1, ptr %i.e, align 8
  store ptr %i.bf, ptr %i.t, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 4 uses
  %i.bh = and i64 %i.bg, 3
  switch i64 %i.bh, label %default.unreachable [
    i64 2, label %bb.n
    i64 3, label %.split32
    i64 0, label %.split33
    i64 1, label %.split
  ], !prof !12

end_hunk_0
