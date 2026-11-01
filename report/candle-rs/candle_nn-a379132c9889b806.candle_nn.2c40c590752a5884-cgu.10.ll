Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.10?download=true
inline.NumInlined: 476
inline.NumDeleted: 205
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE4pathB7_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  store ptr %i.h, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehReECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.n = load i64, ptr %i.b, align 8, !range !12, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !13, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !prof !14

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs3NyA1pFSltE_9candle_nn.exit
  ret void

bb.i:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.r, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.w) #24
  unreachable

bb.k:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = icmp ule i64 %2, %i.q
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  store i64 %i.q, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarE32forget_allocation_drop_remainingCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i
  %.sroa.0.09.i = phi i64 [ %i.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !376, !nonnull !4, !noundef !4
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !377
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.p = icmp eq i64 %i.l, %i.g
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.l, %i.g
  br i1 %i.r, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit8.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !382, !nonnull !4, !noundef !4
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !383
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit8.i unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.x = icmp eq i64 %i.t, %i.g
  br i1 %i.x, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit8.i, %bb.c
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs3NyA1pFSltE_9candle_nn4convNtB5_6Conv2d9absorb_bn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 11 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 11 uses
  %i.g = alloca [80 x i8], align 8                ; 9 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [80 x i8], align 8                ; 8 uses
  %i.k = alloca [80 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 11 uses
  %i.o = alloca [80 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 9 uses
  %i.q = alloca [80 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 13 uses
  %i.s = alloca [80 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 11 uses
  %i.u = alloca [80 x i8], align 8                ; 9 uses
  %i.v = alloca [8 x i8], align 8                 ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.split236, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load double, ptr %i.aa, align 8, !noundef !4
  call void @_RNvXsr_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, double noundef %i.ab)
  %i.ac = load i64, ptr %i.q, align 8, !range !5, !noundef !4 ; 2 uses
  %.not237 = icmp eq i64 %i.ac, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %.not237, label %bb.e, label %bb.d

.split236:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !540
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !540
  %i.af = load i64, ptr %i.a, align 8, !range !12, !noalias !540, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !13, !noalias !540, !noundef !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.c, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3NyA1pFSltE_9candle_nn.exit, !prof !14

bb.c:                                             ; preds = %.split236
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !540
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #24, !noalias !540
  unreachable

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3NyA1pFSltE_9candle_nn.exit: ; preds = %.split236
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !540, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = icmp ugt i64 %i.ai, 39
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !540
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(40) @3, i64 range(i64 0, -9223372036854775808) 40, i1 false), !noalias !541
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ai, ptr %i.an, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 40, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 -9223372036854775766, ptr %i.b, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bs

bb.d:                                             ; preds = %bb.b
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5125.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.ac, ptr %0, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %.sroa.4127.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit300

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.ae, ptr %i.r, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor4sqrt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.h unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit259: ; preds = %bb.k, %bb.l, %bb.g
  %.pn254 = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %i.av, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.ao = load ptr, ptr %i.r, align 8, !alias.scope !545, !nonnull !4, !noundef !4
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !545
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit259
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.az

bb.g:                                             ; preds = %bb.o, %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit259

bb.h:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.s, align 8, !range !5, !noundef !4 ; 2 uses
  %.not238 = icmp eq i64 %i.as, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  br i1 %.not238, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5134.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.as, ptr %0, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4136.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit261

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.au, ptr %i.t, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3div(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.aw = load ptr, ptr %i.t, align 8, !alias.scope !549, !nonnull !4, !noundef !4
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !549
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit259

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit259 unwind label %bb.az

bb.m:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.u, align 8, !range !5, !noundef !4 ; 2 uses
  %.not239 = icmp eq i64 %i.az, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  br i1 %.not239, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5143.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.az, ptr %0, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %.sroa.4145.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.bc = load ptr, ptr %i.t, align 8, !alias.scope !553, !nonnull !4, !noundef !4
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !553
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit261

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit261 unwind label %bb.g

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %i.bb, ptr %i.v, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.bf = load ptr, ptr %i.t, align 8, !alias.scope !557, !nonnull !4, !noundef !4
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !557
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit263

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit263 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.bj = load ptr, ptr %i.r, align 8, !alias.scope !561, !nonnull !4, !noundef !4
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !561
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265 unwind label %bb.az

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit263: ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.bm = load ptr, ptr %i.r, align 8, !alias.scope !565, !nonnull !4, !noundef !4
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !565
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit267

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit263
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit267 unwind label %bb.v

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit279, %bb.aj, %bb.ac, %bb.ad, %bb.r, %bb.s, %bb.v
  %.pn252 = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %i.cc, %bb.ac ], [ %i.bi, %bb.r ], [ %i.bi, %bb.s ], [ %i.cc, %bb.ad ], [ %.pn250, %bb.aj ], [ %.pn250, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit279 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.bp = load ptr, ptr %i.v, align 8, !alias.scope !569, !nonnull !4, !noundef !4
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !569
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.az

bb.v:                                             ; preds = %bb.bb, %bb.ag, %bb.t, %bb.y, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit267
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit267: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit263, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs15_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB8_6tensor6Tensor5dims4(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt)
          to label %bb.w unwind label %bb.v

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit267
  %i.bu = load i64, ptr %i.k, align 8, !range !5, !noundef !4 ; 2 uses
  %.not240 = icmp eq i64 %i.bu, -1
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0147.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  br i1 %.not240, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.7161.0.copyload = load i64, ptr %.sroa.7161.0..sroa_idx, align 8
  %.sroa.8162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.8168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8168.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8162.0..sroa_idx, i64 40, i1 false)
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load <2 x i64>, ptr %.sroa.5159.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.bu, ptr %0, align 8
  store i64 %.sroa.0147.0.copyload, ptr %.sroa.4164.0..sroa_idx, align 8
  store <2 x i64> %i.bv, ptr %.sroa.5165.0..sroa_idx, align 8
  %.sroa.7167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7161.0.copyload, ptr %.sroa.7167.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273.sink.split

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %.sroa.0147.0.copyload, ptr %i.l, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %i.by, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjjjjEECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l)
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bz = load i64, ptr %i.m, align 8, !range !5, !noundef !4 ; 2 uses
  %.not241 = icmp eq i64 %i.bz, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  br i1 %.not241, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5177.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5174.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.bz, ptr %0, align 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %.sroa.4176.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273.sink.split

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.cb, ptr %i.n, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor13broadcast_mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.cd = load ptr, ptr %i.n, align 8, !alias.scope !573, !nonnull !4, !noundef !4
  %i.ce = atomicrmw add ptr %i.cd, i64 -1 release, align 8, !noalias !573
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ad, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265 unwind label %bb.az

bb.ae:                                            ; preds = %bb.ab
  %i.cg = load i64, ptr %i.o, align 8, !range !5, !noundef !4 ; 2 uses
  %.not242 = icmp eq i64 %i.cg, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  br i1 %.not242, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5186.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5183.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.cg, ptr %0, align 8
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %.sroa.4185.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.cj = load ptr, ptr %i.n, align 8, !alias.scope !577, !nonnull !4, !noundef !4
  %i.ck = atomicrmw add ptr %i.cj, i64 -1 release, align 8, !noalias !577
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273 unwind label %bb.v

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store ptr %i.ci, ptr %i.p, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.cm = load ptr, ptr %i.n, align 8, !alias.scope !581, !nonnull !4, !noundef !4
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !581
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit275

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit275 unwind label %bb.ak

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit279: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit290, %bb.bf, %bb.aq, %bb.ar, %bb.ak
  %.pn250 = phi { ptr, i32 } [ %i.cs, %bb.ak ], [ %i.cx, %bb.aq ], [ %i.cx, %bb.ar ], [ %.pn, %bb.bf ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit290 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.cp = load ptr, ptr %i.p, align 8, !alias.scope !585, !nonnull !4, !noundef !4
  %i.cq = atomicrmw add ptr %i.cp, i64 -1 release, align 8, !noalias !585
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit279
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265 unwind label %bb.az

bb.ak:                                            ; preds = %bb.bt, %bb.br, %bb.aw, %bb.au, %bb.ai, %bb.am, %bb.al
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit279

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit275: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ct = load ptr, ptr %1, align 8, !noundef !4
  %.not243 = icmp eq ptr %i.ct, null
  br i1 %.not243, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sub(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.bc unwind label %bb.ak

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.an unwind label %bb.ak

bb.an:                                            ; preds = %bb.am
  %i.cu = load i64, ptr %i.h, align 8, !range !5, !noundef !4 ; 2 uses
  %.not244 = icmp eq i64 %i.cu, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8            ; 5 uses
  br i1 %.not244, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5195.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5192.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.cu, ptr %0, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %.sroa.4194.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit281

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.cw, ptr %i.i, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sub(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.as unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !586
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ar, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit279

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit279 unwind label %bb.az

bb.as:                                            ; preds = %bb.ap
  %i.da = load i64, ptr %i.j, align 8, !range !5, !noundef !4 ; 2 uses
  %.not245 = icmp eq i64 %i.da, -1
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  br i1 %.not245, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5204.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5201.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.da, ptr %0, align 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %.sroa.4203.0..sroa_idx, align 8
  %i.dd = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !587
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit281

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit281 unwind label %bb.ak

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.df = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !588
end_hunk_0
