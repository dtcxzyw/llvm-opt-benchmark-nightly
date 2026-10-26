Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_py.yara_x_py.f3424c54d396006c-cgu.08?download=true
inline.NumInlined: 878
inline.NumDeleted: 479
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patternsINtB4_17FormatHexPatternsINtNtB6_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1h_IB1h_IB1J_IB1h_IB1h_IB1J_IB1h_IB1h_INtNtB6_6bubble6BubbleIB2W_IB1h_INtNtB6_8comments16CommentProcessorIB1h_INtNtB6_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5s_6parser6ParserENCINvMs_B6_NtB6_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB75_8PyWriterE0EEEEENCINvMs0_B6_B6H_11format_implB45_Es1_0NCB80_s2_0ENCB80_s3_0NCB80_s4_0EEEEEEEEEEEENtNtNtB4y_6traits8iterator8Iterator4nextB75_:bb.a
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %.not14 = icmp eq i64 %i.an, 0
  br i1 %.not14, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.o, %bb.k
  store i8 1, ptr %i.aj, align 2
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 2 uses
  %i.aq = load i64, ptr %i.l, align 8, !range !16, !noundef !4 ; 2 uses
  %.not15 = icmp ult i64 %i.ap, %i.aq
  %i.ar = select i1 %.not15, i64 0, i64 %i.aq
  %.sroa.04.0 = sub nuw i64 %i.ap, %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.sroa.04.0
  %i.av = load i16, ptr %i.au, align 8, !range !19, !noundef !4
  %i.aw = icmp eq i16 %i.av, 16
  br i1 %i.aw, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 16, ptr %i.b, align 8
  %i.ax = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE14push_front_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.p:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.az = load i8, ptr %i.ay, align 1, !noundef !4
  switch i8 %i.az, label %bb.d [
    i8 123, label %bb.q
    i8 125, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ba = load i8, ptr %i.q, align 1, !range !21, !noundef !4
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.s, label %bb.d

bb.r:                                             ; preds = %bb.p
  %i.bc = load i8, ptr %i.q, align 1, !range !21, !noundef !4
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.t, label %bb.d

bb.s:                                             ; preds = %bb.q
  store i8 1, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.be = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq i64 %i.bg, 0
  br i1 %.not12, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = add i64 %i.bg, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bk = add i64 %i.bh, %i.bj                    ; 2 uses
  %i.bl = load i64, ptr %i.l, align 8, !range !16, !noundef !4 ; 2 uses
  %.not13 = icmp ult i64 %i.bk, %i.bl
  %i.bm = select i1 %.not13, i64 0, i64 %i.bl
  %.sroa.03.0 = sub nuw i64 %i.bk, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %.sroa.03.0
  %i.bq = load i16, ptr %i.bp, align 8, !range !19, !noundef !4
  %i.br = icmp eq i16 %i.bq, 16
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.bs = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 234
  %i.bu = load i8, ptr %i.bt, align 2, !range !21, !noundef !4
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.bw = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 16, ptr %i.e, align 8
  %i.bx = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.z unwind label %bb.ac      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.aa:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt9processorINtB4_9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBH_IBH_IBX_IBH_IBH_IBX_IBH_IBH_INtNtB6_6bubble6BubbleIB22_IBH_INtNtB6_8comments16CommentProcessorIBH_INtNtB6_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB4w_6parser6ParserENCINvMs_B6_NtB6_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB69_8PyWriterE0EEEEENCINvMs0_B6_B5L_11format_implB39_Es1_0NCB74_s2_0ENCB74_s3_0NCB74_s4_0EEEEEEEEEEENtNtNtB3C_6traits8iterator8Iterator4nextB69_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1)
  %i.by = load i16, ptr %i.k, align 8, !range !20, !noundef !4
  %.not11 = icmp eq i16 %i.by, -1
  br i1 %.not11, label %._crit_edge, label %bb.c

bb.ab:                                            ; preds = %bb.ac
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.ac:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #30
          to label %bb.ab unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCscK5W4trzgIe_6anyhow7wrapperINtB4_12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCscK5W4trzgIe_6anyhow7wrapperINtB4_12MessageErrorNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs3_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB4_9CSTStreamINtNtNtCs7gfv9tzbXmh_6yara_x8compiler3wsh22WarningSuppressionHookNtNtB6_6parser6ParserNCINvMs3_BY_NtBY_8Compiler10add_sourceNtBY_10SourceCodeE0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(680) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [14 x i8], align 2            ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerINtNtNtCs7gfv9tzbXmh_6yara_x8compiler3wsh22WarningSuppressionHookNtNtB8_6parser6ParserNCINvMs3_B1h_NtB1h_8Compiler10add_sourceNtB1h_10SourceCodeE0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %.not49 = icmp eq i64 %i.b, -1
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 673
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 674
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit
  %i.f = phi i64 [ %i.b, %.lr.ph ], [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit ] ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.630.0..sroa_idx, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = icmp eq i64 %i.f, -9223372036854775806
  br i1 %i.g, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  switch i16 %.sroa.5.0.copyload, label %bb.e [
    i16 80, label %bb.f
    i16 81, label %bb.g
    i16 82, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  store i64 %i.f, ptr %0, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx5, align 8
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.5.0.copyload, ptr %.sroa.613.0..sroa_idx14, align 8
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.0..sroa_idx22, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.e, align 2, !range !21, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.g:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.d, align 8, !range !21, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.h:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.c, align 1, !range !21, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.i:                                             ; preds = %bb.f
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.685.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 80, ptr %.sroa.584.0..sroa_idx, align 8
  br label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerINtNtNtCs7gfv9tzbXmh_6yara_x8compiler3wsh22WarningSuppressionHookNtNtB8_6parser6ParserNCINvMs3_B1h_NtB1h_8Compiler10add_sourceNtB1h_10SourceCodeE0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %1)
  %i.n = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.g
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.669.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx66, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 81, ptr %.sroa.568.0..sroa_idx, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.h
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.677.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 82, ptr %.sroa.576.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB4_9CSTStreamINtNtNtCs7gfv9tzbXmh_6yara_x8compiler3wsh22WarningSuppressionHookNtNtB6_6parser6ParserNCINvMs3_BY_NtBY_8Compiler10add_sourceReE0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(680) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [14 x i8], align 2            ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerINtNtNtCs7gfv9tzbXmh_6yara_x8compiler3wsh22WarningSuppressionHookNtNtB8_6parser6ParserNCINvMs3_B1h_NtB1h_8Compiler10add_sourceReE0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %.not49 = icmp eq i64 %i.b, -1
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 673
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 674
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit
  %i.f = phi i64 [ %i.b, %.lr.ph ], [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit ] ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.630.0..sroa_idx, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = icmp eq i64 %i.f, -9223372036854775806
  br i1 %i.g, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  switch i16 %.sroa.5.0.copyload, label %bb.e [
    i16 80, label %bb.f
    i16 81, label %bb.g
    i16 82, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  store i64 %i.f, ptr %0, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx5, align 8
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.5.0.copyload, ptr %.sroa.613.0..sroa_idx14, align 8
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.0..sroa_idx22, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.e, align 2, !range !21, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.g:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.d, align 8, !range !21, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.h:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.c, align 1, !range !21, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.i:                                             ; preds = %bb.f
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.685.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 80, ptr %.sroa.584.0..sroa_idx, align 8
  br label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerINtNtNtCs7gfv9tzbXmh_6yara_x8compiler3wsh22WarningSuppressionHookNtNtB8_6parser6ParserNCINvMs3_B1h_NtB1h_8Compiler10add_sourceReE0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %1)
  %i.n = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.g
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.669.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx66, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 81, ptr %.sroa.568.0..sroa_idx, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.h
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.677.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 82, ptr %.sroa.576.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsfF8zpZz1lvn_13yara_x_parser3cstINtB4_9CSTStreamNtNtB6_6parser6ParserENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(488) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [14 x i8], align 2            ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerNtNtB8_6parser6ParserENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %.not49 = icmp eq i64 %i.b, -1
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 481
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 482
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit
  %i.f = phi i64 [ %i.b, %.lr.ph ], [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit ] ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.630.0..sroa_idx, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = icmp eq i64 %i.f, -9223372036854775806
  br i1 %i.g, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  switch i16 %.sroa.5.0.copyload, label %bb.e [
    i16 80, label %bb.f
    i16 81, label %bb.g
    i16 82, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  store i64 %i.f, ptr %0, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx5, align 8
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.5.0.copyload, ptr %.sroa.613.0..sroa_idx14, align 8
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.0..sroa_idx22, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.e, align 2, !range !21, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.g:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.d, align 8, !range !21, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.h:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.c, align 1, !range !21, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit

bb.i:                                             ; preds = %bb.f
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.685.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 80, ptr %.sroa.584.0..sroa_idx, align 8
  br label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerNtNtB8_6parser6ParserENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %1)
  %i.n = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.g
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.669.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx66, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 81, ptr %.sroa.568.0..sroa_idx, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.h
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.677.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7, i64 14, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 82, ptr %.sroa.576.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 %1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB2n_IB2n_IB2Q_IB2n_IB2n_IB2Q_IB2n_IB2n_INtNtB1i_6bubble6BubbleIB43_IB2n_INtNtB1i_8comments16CommentProcessorIB2n_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6f_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB7U_8PyWriterE0EEEEENCINvMs0_B1i_B7v_11format_implB5e_Es1_0NCB8P_s2_0ENCB8P_s3_0NCB8P_s4_0EEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byB7U_(ptr noalias nofree noundef align 8 dereferenceable(240) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1508
  call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patternsINtB4_17FormatHexPatternsINtNtB6_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1h_IB1h_IB1J_IB1h_IB1h_IB1J_IB1h_IB1h_INtNtB6_6bubble6BubbleIB2W_IB1h_INtNtB6_8comments16CommentProcessorIB1h_INtNtB6_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5s_6parser6ParserENCINvMs_B6_NtB6_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB75_8PyWriterE0EEEEENCINvMs0_B6_B6H_11format_implB45_Es1_0NCB80_s2_0ENCB80_s3_0NCB80_s4_0EEEEEEEEEEEENtNtNtB4y_6traits8iterator8Iterator4nextB75_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0)
  %i.c = load i16, ptr %i.b, align 8, !range !20, !noalias !1508, !noundef !4
  %.not7.i = icmp eq i16 %i.c, -1
  br i1 %.not7.i, label %_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB8_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1d_IB1d_IB1F_IB1d_IB1d_IB1F_IB1d_IB1d_INtNtB8_6bubble6BubbleIB2S_IB1d_INtNtB8_8comments16CommentProcessorIB1d_INtNtB8_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5o_6parser6ParserENCINvMs_B8_NtB8_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB71_8PyWriterE0EEEEENCINvMs0_B8_B6D_11format_implB41_Es1_0NCB7W_s2_0ENCB7W_s3_0NCB7W_s4_0EEEEEEEEEEEENtNtNtB4u_6traits8iterator8Iterator8try_foldINtNtNtB4w_3num7nonzero7NonZerojENCNvXs_NvB9d_10advance_byB3_NtBaz_13SpecAdvanceBy15spec_advance_by0INtNtB4w_6option6OptionB9V_EEB71_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1508
  store i64 %1, ptr %i.a, align 8, !noalias !1508
  %i.e = add i64 %1, -1                           ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1508
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB8_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1d_IB1d_IB1F_IB1d_IB1d_IB1F_IB1d_IB1d_INtNtB8_6bubble6BubbleIB2S_IB1d_INtNtB8_8comments16CommentProcessorIB1d_INtNtB8_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5o_6parser6ParserENCINvMs_B8_NtB8_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB71_8PyWriterE0EEEEENCINvMs0_B8_B6D_11format_implB41_Es1_0NCB7W_s2_0ENCB7W_s3_0NCB7W_s4_0EEEEEEEEEEEENtNtNtB4u_6traits8iterator8Iterator8try_foldINtNtNtB4w_3num7nonzero7NonZerojENCNvXs_NvB9d_10advance_byB3_NtBaz_13SpecAdvanceBy15spec_advance_by0INtNtB4w_6option6OptionB9V_EEB71_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1508
  store i64 %i.i, ptr %i.a, align 8, !noalias !1508
  %i.g = add i64 %i.i, -1                         ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1508
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB8_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1d_IB1d_IB1F_IB1d_IB1d_IB1F_IB1d_IB1d_INtNtB8_6bubble6BubbleIB2S_IB1d_INtNtB8_8comments16CommentProcessorIB1d_INtNtB8_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5o_6parser6ParserENCINvMs_B8_NtB8_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB71_8PyWriterE0EEEEENCINvMs0_B8_B6D_11format_implB41_Es1_0NCB7W_s2_0ENCB7W_s3_0NCB7W_s4_0EEEEEEEEEEEENtNtNtB4u_6traits8iterator8Iterator8try_foldINtNtNtB4w_3num7nonzero7NonZerojENCNvXs_NvB9d_10advance_byB3_NtBaz_13SpecAdvanceBy15spec_advance_by0INtNtB4w_6option6OptionB9V_EEB71_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.c
  %i.i = phi i64 [ %i.g, %bb.c ], [ %i.e, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1508
  call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patternsINtB4_17FormatHexPatternsINtNtB6_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1h_IB1h_IB1J_IB1h_IB1h_IB1J_IB1h_IB1h_INtNtB6_6bubble6BubbleIB2W_IB1h_INtNtB6_8comments16CommentProcessorIB1h_INtNtB6_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5s_6parser6ParserENCINvMs_B6_NtB6_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB75_8PyWriterE0EEEEENCINvMs0_B6_B6H_11format_implB45_Es1_0NCB80_s2_0ENCB80_s3_0NCB80_s4_0EEEEEEEEEEEENtNtNtB4y_6traits8iterator8Iterator4nextB75_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0)
  %i.j = load i16, ptr %i.b, align 8, !range !20, !noalias !1508, !noundef !4
  %.not.i = icmp eq i16 %i.j, -1
  br i1 %.not.i, label %_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB8_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1d_IB1d_IB1F_IB1d_IB1d_IB1F_IB1d_IB1d_INtNtB8_6bubble6BubbleIB2S_IB1d_INtNtB8_8comments16CommentProcessorIB1d_INtNtB8_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5o_6parser6ParserENCINvMs_B8_NtB8_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB71_8PyWriterE0EEEEENCINvMs0_B8_B6D_11format_implB41_Es1_0NCB7W_s2_0ENCB7W_s3_0NCB7W_s4_0EEEEEEEEEEEENtNtNtB4u_6traits8iterator8Iterator8try_foldINtNtNtB4w_3num7nonzero7NonZerojENCNvXs_NvB9d_10advance_byB3_NtBaz_13SpecAdvanceBy15spec_advance_by0INtNtB4w_6option6OptionB9V_EEB71_.exit, label %bb.c

_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB8_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1d_IB1d_IB1F_IB1d_IB1d_IB1F_IB1d_IB1d_INtNtB8_6bubble6BubbleIB2S_IB1d_INtNtB8_8comments16CommentProcessorIB1d_INtNtB8_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5o_6parser6ParserENCINvMs_B8_NtB8_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB71_8PyWriterE0EEEEENCINvMs0_B8_B6D_11format_implB41_Es1_0NCB7W_s2_0ENCB7W_s3_0NCB7W_s4_0EEEEEEEEEEEENtNtNtB4u_6traits8iterator8Iterator8try_foldINtNtNtB4w_3num7nonzero7NonZerojENCNvXs_NvB9d_10advance_byB3_NtBaz_13SpecAdvanceBy15spec_advance_by0INtNtB4w_6option6OptionB9V_EEB71_.exit: ; preds = %.lr.ph, %bb.c, %.lr.ph.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %1, %bb.b ], [ 0, %.lr.ph.i ], [ 0, %bb.c ], [ %i.i, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1508
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB8_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1d_IB1d_IB1F_IB1d_IB1d_IB1F_IB1d_IB1d_INtNtB8_6bubble6BubbleIB2S_IB1d_INtNtB8_8comments16CommentProcessorIB1d_INtNtB8_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5o_6parser6ParserENCINvMs_B8_NtB8_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB71_8PyWriterE0EEEEENCINvMs0_B8_B6D_11format_implB41_Es1_0NCB7W_s2_0ENCB7W_s3_0NCB7W_s4_0EEEEEEEEEEEENtNtNtB4u_6traits8iterator8Iterator8try_foldINtNtNtB4w_3num7nonzero7NonZerojENCNvXs_NvB9d_10advance_byB3_NtBaz_13SpecAdvanceBy15spec_advance_by0INtNtB4w_6option6OptionB9V_EEB71_.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB8_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1d_IB1d_IB1F_IB1d_IB1d_IB1F_IB1d_IB1d_INtNtB8_6bubble6BubbleIB2S_IB1d_INtNtB8_8comments16CommentProcessorIB1d_INtNtB8_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5o_6parser6ParserENCINvMs_B8_NtB8_9Formatter6formatNtCskSRqRFwaW70_9yara_x_py8PyReaderNtB71_8PyWriterE0EEEEENCINvMs0_B8_B6D_11format_implB41_Es1_0NCB7W_s2_0ENCB7W_s3_0NCB7W_s4_0EEEEEEEEEEEENtNtNtB4u_6traits8iterator8Iterator8try_foldINtNtNtB4w_3num7nonzero7NonZerojENCNvXs_NvB9d_10advance_byB3_NtBaz_13SpecAdvanceBy15spec_advance_by0INtNtB4w_6option6OptionB9V_EEB71_.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst11syntax_kindNtB5_10SyntaxKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !range !24, !noundef !4
  %i.b = zext nneg i16 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXsa_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst11syntax_kindNtB7_10SyntaxKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !4, !noundef !4
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsa_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst11syntax_kindNtB7_10SyntaxKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsa_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst11syntax_kindNtB7_10SyntaxKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 128, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsj_NtNtCsjq8JwqGjWmS_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = tail call noundef ptr @PyTuple_New(i64 noundef 1) #26, !noalias !1515 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsjq8JwqGjWmS_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.c unwind label %bb.d, !noalias !1515

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %.sink = phi ptr [ %i.c, %bb.j ], [ %1, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.e, %bb.d ]
  tail call void @Py_DecRef(ptr noundef nonnull %.sink) #26, !noalias !4
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.c, i64 noundef 0, ptr noundef nonnull %1) #26, !noalias !1515 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  %i.g = tail call noundef ptr @PyObject_Call(ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef null) #26, !noalias !1518 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.i, align 8, !alias.scope !1518
  store i64 0, ptr %0, align 8, !alias.scope !1518
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1518
  invoke void @_RNvMs_NtCsjq8JwqGjWmS_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a)
          to label %.noexc.i unwind label %bb.j, !noalias !1516

.noexc.i:                                         ; preds = %bb.g
  %i.j = load i64, ptr %i.a, align 8, !range !8, !noalias !1518, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !1518
  br label %.noexc2.i

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCsjq8JwqGjWmS_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b)
end_hunk_0
