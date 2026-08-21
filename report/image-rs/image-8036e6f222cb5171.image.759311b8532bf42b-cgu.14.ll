inline.NumInlined: 553
inline.NumDeleted: 253
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE3newCsa5QsYiPB8Gl_5image:bb.a
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32768, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgidZRN39rux_6flate23mem8CompressECsa5QsYiPB8Gl_5image(ptr nonnull %.sroa.0.0.copyload) #28
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !125, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !126, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #30
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp samesign ugt i64 %i.g, 32767
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0.copyload, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx4, i64 16, i1 false)
  store i64 %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE6finishCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !1091, !noundef !4 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.l = phi i64 [ %i.t, %bb.d ], [ %i.i, %bb.b ] ; 4 uses
  %i.m = load i64, ptr %i.c, align 8, !range !717, !alias.scope !1091, !noundef !4
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !114

bb.c:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #32
  unreachable

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !1091, !nonnull !4, !noundef !4
  call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.l), !noalias !1094
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !1097, !noalias !1094, !noundef !4 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !1097, !noalias !1094, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.n, i64 range(i64 1, -9223372036854775808) %i.l, i1 false)
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1097, !noalias !1094
  %i.s = add i64 %.pre.i.i.i, %i.l
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !1097, !noalias !1094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1091
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.l)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1091
  %i.t = load i64, ptr %i.b, align 8, !alias.scope !1091, !noundef !4 ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.b
  %.val12 = load i64, ptr %i.h, align 8, !noundef !4
  %i.w = call noundef i8 @_RNvXNtCsgidZRN39rux_6flate23zioNtNtB4_3mem8CompressNtB2_3Ops7run_vec(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i8 noundef 4)
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit
  %i.y = call noundef nonnull ptr @_RNvXs7_NtCsgidZRN39rux_6flate23memNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorINtNtBC_7convert4FromNtB5_13CompressErrorE4from()
  br label %.loopexit

bb.f:                                             ; preds = %_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE4dumpCsa5QsYiPB8Gl_5image.exit
  %.val = load i64, ptr %i.h, align 8, !noundef !4
  %i.z = icmp eq i64 %.val12, %.val
  br i1 %i.z, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.y, %bb.e ], [ null, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 9 uses
  %i.m = alloca [88 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = load i64, ptr %1, align 8, !range !1101, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 13 uses
  switch i64 %i.n, label %default.unreachable33 [
    i64 0, label %bb.b
    i64 1, label %bb.ah
    i64 2, label %bb.ai
  ]

default.unreachable33:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 -1, ptr %i.q, align 8, !noalias !1107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1107
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !noalias !1107
  %i.u = load atomic i64, ptr %i.s monotonic, align 8, !noalias !1108 ; 2 uses
  %i.v = load i64, ptr %i.t, align 16, !noalias !1108, !noundef !4 ; 2 uses
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 392 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 408
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 416
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ac = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.i.lr.ph.i
  %i.ae = phi i64 [ %i.v, %.lr.ph.i.lr.ph.i ], [ %i.da, %bb.ad ]
  %i.af = phi i64 [ %i.u, %.lr.ph.i.lr.ph.i ], [ %i.cz, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.ag = phi i64 [ %i.bj, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ %i.ae, %.lr.ph.i.i ]
  %.sroa.02.044.i.i = phi i64 [ %i.bi, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ %i.af, %.lr.ph.i.i ] ; 8 uses
  %.sroa.0.03943.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ 0, %.lr.ph.i.i ] ; 10 uses
  %umin76 = call i32 @llvm.umin.i32(i32 %.sroa.0.03943.i.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %umin76, %umin76           ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03943.i.i, i32 6) ; 2 uses
  %i.ah = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %4 = shl i32 %.sroa.0.03943.i.i, 1
  %5 = or i32 %4, 1
  %i.ai = add i64 %i.ag, -1
  %i.aj = and i64 %i.ai, %.sroa.02.044.i.i        ; 3 uses
  %i.ak = load i64, ptr %i.y, align 8, !noalias !1113, !noundef !4
  %i.al = sub i64 0, %i.ak
  %i.am = and i64 %.sroa.02.044.i.i, %i.al
  %i.an = load ptr, ptr %i.z, align 8, !noalias !1113, !nonnull !4, !noundef !4
  %i.ao = load i64, ptr %i.aa, align 16, !noalias !1113, !noundef !4
  %i.ap = icmp ult i64 %i.aj, %i.ao
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [88 x i8], ptr %i.an, i64 %i.aj ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !1113 ; 2 uses
  %i.at = icmp eq i64 %.sroa.02.044.i.i, %i.as
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = load i64, ptr %i.y, align 8, !noalias !1113, !noundef !4
  %i.av = add i64 %i.au, %i.as
  %i.aw = add i64 %.sroa.02.044.i.i, 1
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ay = add nuw i64 %i.aj, 1
  %i.az = load i64, ptr %i.ab, align 128, !noalias !1113, !noundef !4
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp ult i32 %.sroa.0.03943.i.i, 7
  br i1 %i.bb, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i unwind label %.body.thread31.loopexit.i, !noalias !1107

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03943.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i
  %6 = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.bc = icmp ult i32 %6, 7
  br i1 %i.bc, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit60.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bd = load atomic i64, ptr %i.p monotonic, align 16, !noalias !1113
  %i.be = load i64, ptr %i.y, align 8, !noalias !1113, !noundef !4
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = icmp eq i64 %i.bf, %.sroa.02.044.i.i
  br i1 %i.bg, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.i, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03943.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter70 = and i32 %i.ah, 7                  ; 3 uses
  %i.bh = icmp ult i32 %.sroa.0.03943.i.i, 3
  br i1 %i.bh, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter74 = and i32 %i.ah, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter75 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter75.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  %niter75.next.7 = add i32 %niter75, 8           ; 2 uses
  %niter75.ncmp.7 = icmp eq i32 %niter75.next.7, %unroll_iter74
  br i1 %niter75.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit59.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod79.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod80 = icmp ne i32 %xtraiter77, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter78 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter78.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1113
  %epil.iter78.next = add i32 %epil.iter78, 1     ; 2 uses
  %epil.iter78.cmp.not = icmp eq i32 %epil.iter78.next, %xtraiter77
  br i1 %epil.iter78.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !1114

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit59.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod72.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit59.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod73 = icmp ne i32 %xtraiter70, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter71 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter71.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1113
  %epil.iter71.next = add i32 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i32 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !1115

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit60.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit60.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1113
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1116

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit60.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit59.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bi = load atomic i64, ptr %i.s monotonic, align 16, !noalias !1113 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03943.i.i, 1
  %i.bj = load i64, ptr %i.t, align 16, !noalias !1113, !noundef !4 ; 2 uses
  %i.bk = and i64 %i.bj, %i.bi
  %i.bl = icmp eq i64 %i.bk, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %5
  br i1 %i.bl, label %bb.c, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bm = load i64, ptr %i.y, align 8, !noalias !1113, !noundef !4
  %i.bn = add i64 %i.bm, %i.am
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bo = add i64 %.sroa.02.044.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bo, %bb.j ], [ %i.bn, %bb.i ]
  %i.bp = cmpxchg weak ptr %i.s, i64 %.sroa.02.044.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !1113
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  br i1 %i.bq, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03943.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter77 = and i32 %3, 7                     ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.03943.i.i, 3
  br i1 %i.br, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter81 = and i32 %3, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter82 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter82.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  call void @llvm.x86.sse2.pause(), !noalias !1113
  %niter82.next.7 = add i32 %niter82, 8           ; 2 uses
  %niter82.ncmp.7 = icmp eq i32 %niter82.next.7, %unroll_iter81
  br i1 %niter82.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

.body.thread31.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread31.loopexit.split-lp.i:               ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4send0uEs_0uECsa5QsYiPB8Gl_5image.exit.i.i, %bb.x, %bb.s, %bb.n, %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.h
  %i.bs = load i32, ptr %i.q, align 8, !range !848, !noalias !1107, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.bs, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store ptr %i.aq, ptr %i.g, align 8, !alias.scope !1111, !noalias !1107
  %i.bu = add i64 %.sroa.02.044.i.i, 1            ; 2 uses
  store i64 %i.bu, ptr %i.r, align 8, !alias.scope !1111, !noalias !1107
  %.sroa.019.0.copyload36.i = load i64, ptr %i.l, align 8, !alias.scope !1105, !noalias !1102
  %.sroa.5.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.019.0.copyload36.i, ptr %i.aq, align 8, !noalias !1117
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx37.i, i64 72, i1 false), !noalias !1102
  store atomic i64 %i.bu, ptr %i.bt release, align 8, !noalias !1120
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 320
  call fastcc void @_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bv) #31, !noalias !1107
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.i
  %i.bw = load i64, ptr %i.h, align 8, !noalias !1107, !noundef !4 ; 2 uses
  %i.bx = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %bb.aa unwind label %.body.thread31.loopexit.split-lp.i, !noalias !1107 ; 2 uses

bb.m:                                             ; preds = %bb.ab, %.split.i, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1122
  store ptr %i.g, ptr %i.f, align 8, !noalias !1107
  store ptr %i.p, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1107
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1107
  %i.by = load i8, ptr %i.ad, align 8, !range !1125, !noalias !1126, !noundef !4
  %i.bz = icmp eq i8 %i.by, 1
  br i1 %i.bz, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i, !prof !133

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.m
  %i.ca = invoke noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8 %i.ac, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc12.i unwind label %.body.thread31.loopexit.split-lp.i, !noalias !1107 ; 2 uses

.noexc12.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4send0uEs_0uECsa5QsYiPB8Gl_5image.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i: ; preds = %.noexc12.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.ca, %.noexc12.i ], [ %i.ac, %bb.m ] ; 4 uses
  %i.cc = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1122, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1122
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.u, !prof !114

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1122
  %i.cd = invoke noundef nonnull ptr @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.o unwind label %.body.thread31.loopexit.split-lp.i, !noalias !1107 ; 2 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.cd, ptr %i.e, align 8, !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1122
  store ptr %i.g, ptr %i.c, align 8, !noalias !1122
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !1107
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !1107
  invoke fastcc void @_RNCNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4send0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.cd)
          to label %bb.r unwind label %bb.p, !noalias !1122

bb.p:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.cf = load ptr, ptr %i.e, align 8, !alias.scope !1142, !noalias !1122, !nonnull !4, !noundef !4
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !1143
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.q, label %.body.thread.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #33
          to label %.body.thread.i unwind label %bb.t, !noalias !1122

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1122
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.ci = load ptr, ptr %i.e, align 8, !alias.scope !1153, !noalias !1122, !nonnull !4, !noundef !4
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !1154
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #33
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i.i unwind label %.body.thread31.loopexit.split-lp.i, !noalias !1107

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1122
  br label %bb.ad

bb.t:                                             ; preds = %bb.z, %bb.q
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1122
  unreachable

bb.u:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1122
  store ptr %i.cc, ptr %i.d, align 8, !noalias !1122
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store atomic i64 0, ptr %i.cm release, align 8, !noalias !1122
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store atomic ptr null, ptr %i.cn release, align 8, !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1122
  store ptr %i.g, ptr %i.b, align 8, !noalias !1122
  store ptr %i.p, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !1107
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !1107
  invoke fastcc void @_RNCNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4send0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.cc)
          to label %bb.v unwind label %bb.y, !noalias !1122

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1122
  %i.co = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1122, !noundef !4 ; 3 uses
  store ptr %i.co, ptr %i.a, align 8, !noalias !1122
  store ptr %i.cc, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1122
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !1155
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i unwind label %.body.thread31.loopexit.split-lp.i, !noalias !1107

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1122
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !1164
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.z, label %.body.thread.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %.body.thread.i unwind label %bb.t, !noalias !1122

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4send0uEs_0uECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc12.i
  invoke fastcc void @_RNCINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2g_5error5ErrorEE4send0uEs0_0Csa5QsYiPB8Gl_5image(ptr nonnull %i.f) #31
          to label %bb.ad unwind label %.body.thread31.loopexit.split-lp.i, !noalias !1107

bb.aa:                                            ; preds = %bb.l
  %i.cv = extractvalue { i64, i32 } %i.bx, 0      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, %i.bw
  br i1 %i.cw, label %.split.i, label %bb.ab

.split.i:                                         ; preds = %bb.aa
  %i.cx = extractvalue { i64, i32 } %i.bx, 1      ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 1000000000
  call void @llvm.assume(i1 %i.cy)
  %.not45.i = icmp samesign ult i32 %i.cx, %i.bs
  br i1 %.not45.i, label %bb.m, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not44.i = icmp slt i64 %i.cv, %i.bw
  br i1 %.not44.i, label %bb.m, label %bb.ac

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffNtNtB8_5error10ImageError16from_tiff_encode:bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1297
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.r, align 8, !noalias !1297
  store ptr %i.c, ptr %i.b, align 8, !noalias !1297
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @105, ptr %i.s, align 8, !noalias !1297
  %i.t = invoke noundef zeroext i1 @_RNvXsm_NtCs53gkmrwjETj_4tiff5errorNtB5_20TiffUnsupportedErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1301

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %.body12 unwind label %bb.j, !noalias !1301

bb.h:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.i, label %bb.m, !prof !114

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #32
          to label %.noexc.i unwind label %bb.g, !noalias !1301

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1301
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i8 9, ptr %0, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.z, align 8
  store i8 7, ptr %0, align 8
  br label %bb.o

.body12:                                          ; preds = %bb.g
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #28
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1297
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error20TiffUnsupportedErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.n unwind label %.thread24

.thread24:                                        ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load i64, ptr %1, align 8, !range !756
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ab = phi i64 [ %.pre, %bb.n ], [ %i.i, %bb.l ], [ %i.i, %bb.k ] ; 3 uses
  %i.ac = icmp ne i64 %i.ab, -9223372036854775791
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ult i64 %i.ab, -9223372036854775792
  %i.ae = add nsw i64 %i.ab, 9223372036854775791
  %switch27 = icmp ult i64 %i.ae, 2
  %switch = select i1 %i.ad, i1 true, i1 %switch27
  br i1 %switch, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.v, %bb.q, %.body12
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.q:                                             ; preds = %.body12
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error20TiffUnsupportedErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #28
          to label %.thread unwind label %bb.p

bb.r:                                             ; preds = %bb.o
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.t, %bb.r
  ret void

bb.t:                                             ; preds = %bb.c
  %i.ag = extractvalue { ptr, ptr } %i.n, 0       ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.n, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1290
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ai, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 5, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ag, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %.sroa.515.0..sroa_idx, align 8
  store i8 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s

bb.u:                                             ; preds = %bb.d, %.thread, %bb.v
  %.pn22 = phi { ptr, i32 } [ %.pn23, %.thread ], [ %.pn23, %bb.v ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.pn22

.thread:                                          ; preds = %bb.q, %.thread24
  %.pn23 = phi { ptr, i32 } [ %i.aa, %.thread24 ], [ %i.u, %bb.q ] ; 2 uses
  %i.aj = load i64, ptr %1, align 8, !range !756, !noundef !4 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, -9223372036854775791
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ult i64 %i.aj, -9223372036854775792
  %i.am = add nsw i64 %i.aj, 9223372036854775791
  %switch1128 = icmp ult i64 %i.am, 2
  %switch11 = select i1 %i.al, i1 true, i1 %switch1128
  br i1 %switch11, label %bb.u, label %bb.v

bb.v:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #28
          to label %bb.u unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE4recvCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [72 x i8], align 8          ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = load i64, ptr %1, align 8, !range !1101, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4 ; 15 uses
  switch i64 %i.l, label %default.unreachable26 [
    i64 0, label %bb.b
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

default.unreachable26:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 -1, ptr %i.o, align 8, !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1303
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 400 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 392 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !1303
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %i.y = load atomic i64, ptr %i.n monotonic, align 8, !noalias !1309
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.c
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ 0, %bb.c ] ; 4 uses
  %.sroa.0.039.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ 0, %bb.c ] ; 10 uses
  %.sroa.02.0.i.i = phi i64 [ %i.bc, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ %i.y, %bb.c ] ; 7 uses
  %umin61 = call i32 @llvm.umin.i32(i32 %.sroa.0.039.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %umin61, %umin61           ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.039.i.i, i32 6) ; 2 uses
  %i.z = mul nuw nsw i32 %umin, %umin             ; 2 uses
  %3 = shl i32 %.sroa.0.039.i.i, 1
  %4 = or i32 %3, 1
  %i.aa = load i64, ptr %i.q, align 16, !noalias !1309, !noundef !4
  %i.ab = add i64 %i.aa, -1
  %i.ac = and i64 %i.ab, %.sroa.02.0.i.i          ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !noalias !1309, !noundef !4
  %i.ae = sub i64 0, %i.ad
  %i.af = and i64 %.sroa.02.0.i.i, %i.ae
  %i.ag = load ptr, ptr %i.s, align 8, !noalias !1309, !nonnull !4, !noundef !4
  %i.ah = load i64, ptr %i.t, align 16, !noalias !1309, !noundef !4
  %i.ai = icmp ult i64 %i.ac, %i.ah
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %i.ac ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !1309 ; 3 uses
  %i.am = add i64 %.sroa.02.0.i.i, 1
  %i.an = icmp eq i64 %i.am, %i.al
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp eq i64 %i.al, %.sroa.02.0.i.i
  br i1 %i.ao, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = add nuw i64 %i.ac, 1
  %i.aq = load i64, ptr %i.v, align 128, !noalias !1309, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.as = icmp ult i32 %.sroa.0.039.i.i, 7
  br i1 %i.as, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !1309
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %.sroa.0.039.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i
  %5 = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.at = icmp ult i32 %5, 7
  br i1 %i.at, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit47.unr-lcssa, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %bb.e
  fence seq_cst
  %i.au = load atomic i64, ptr %i.u monotonic, align 16, !noalias !1309 ; 2 uses
  %i.av = load i64, ptr %i.q, align 16, !noalias !1309, !noundef !4 ; 2 uses
  %i.aw = xor i64 %i.av, -1
  %i.ax = and i64 %i.au, %i.aw
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.0.i.i
  br i1 %i.ay, label %bb.j, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.i
  %.not.i13.i.i = icmp eq i32 %.sroa.0.039.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter55 = and i32 %i.z, 7                   ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.039.i.i, 3
  br i1 %i.az, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter59 = and i32 %i.z, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter60 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter60.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  %niter60.next.7 = add i32 %niter60, 8           ; 2 uses
  %niter60.ncmp.7 = icmp eq i32 %niter60.next.7, %unroll_iter59
  br i1 %niter60.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit46.unr-lcssa, label %.lr.ph.i16.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = and i64 %i.av, %i.au
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod64.not = icmp eq i32 %xtraiter62, 0
  br i1 %lcmp.mod64.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter62, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter63 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter63.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1309
  %epil.iter63.next = add i32 %epil.iter63, 1     ; 2 uses
  %epil.iter63.cmp.not = icmp eq i32 %epil.iter63.next, %xtraiter62
  br i1 %epil.iter63.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !1310

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit46.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod57.not = icmp eq i32 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit46.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod58 = icmp ne i32 %xtraiter55, 0
  call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter56 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter56.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1309
  %epil.iter56.next = add i32 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i32 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !1311

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit47.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit47.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod54 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod54)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1309
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1312

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit47.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit46.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, %bb.h
  %i.bc = load atomic i64, ptr %i.n monotonic, align 16, !noalias !1309
  %.sroa.0.1.i.i = add i32 %.sroa.0.039.i.i, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %4
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.bd = load i64, ptr %i.r, align 8, !noalias !1309, !noundef !4
  %i.be = add i64 %i.bd, %i.af
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.01.0.i.i = phi i64 [ %i.be, %bb.k ], [ %i.al, %bb.f ]
  %i.bf = cmpxchg weak ptr %i.n, i64 %.sroa.02.0.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !1309
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  br i1 %i.bg, label %bb.m, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.l
  %.not.i23.i.i = icmp eq i32 %.sroa.0.039.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter62 = and i32 %2, 7                     ; 3 uses
  %i.bh = icmp ult i32 %.sroa.0.039.i.i, 3
  br i1 %i.bh, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter66 = and i32 %2, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter67 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter67.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  call void @llvm.x86.sse2.pause(), !noalias !1309
  %niter67.next.7 = add i32 %niter67, 8           ; 2 uses
  %niter67.ncmp.7 = icmp eq i32 %niter67.next.7, %unroll_iter66
  br i1 %niter67.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.j
  %i.bi = load i32, ptr %i.o, align 8, !range !848, !noalias !1303, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.bi, -1
  br i1 %.not.i, label %bb.q, label %bb.p

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  br label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store ptr %i.aj, ptr %i.i, align 8, !alias.scope !1306, !noalias !1303
  %i.bk = load i64, ptr %i.r, align 8, !noalias !1309, !noundef !4
  %i.bl = add i64 %i.bk, %.sroa.02.0.i.i          ; 2 uses
  store i64 %i.bl, ptr %i.p, align 8, !alias.scope !1306, !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !1313
  store atomic i64 %i.bl, ptr %i.bj release, align 8, !noalias !1313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bm)
          to label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.i unwind label %bb.n, !noalias !1313

bb.n:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %i.h) #28
          to label %common.resume.i unwind label %bb.o, !noalias !1313

bb.o:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1313
  unreachable

common.resume.i:                                  ; preds = %bb.ac, %bb.ab, %bb.t, %bb.s, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.ca, %bb.s ], [ %i.co, %bb.ab ], [ %i.ca, %bb.t ], [ %i.co, %bb.ac ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.m
  %.sroa.0.0.copyload4.i = load i64, ptr %i.h, align 8, !noalias !1303 ; 2 uses
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx5.i, i64 72, i1 false), !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1313
  %i.bp = icmp eq i64 %.sroa.0.0.copyload4.i, -2
  br i1 %i.bp, label %bb.af, label %bb.ag

bb.p:                                             ; preds = %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit.i
  %i.bq = load i64, ptr %i.j, align 8, !noalias !1303, !noundef !4 ; 2 uses
  %i.br = call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !1303 ; 2 uses
  %i.bs = extractvalue { i64, i32 } %i.br, 0      ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  br i1 %i.bt, label %.split.i, label %bb.ad

bb.q:                                             ; preds = %bb.ad, %.split.i, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1316
  store ptr %i.i, ptr %i.f, align 8, !noalias !1303
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1303
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1303
  %i.bu = load i8, ptr %i.x, align 8, !range !1125, !noalias !1319, !noundef !4
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i, !prof !133

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.q
  %i.bw = call noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !1316 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.q
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.bw, %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.w, %bb.q ] ; 4 uses
  %i.by = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1316, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1316
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.x, !prof !114

bb.r:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1316
  %i.bz = call noundef nonnull ptr @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !1316 ; 2 uses
  store ptr %i.bz, ptr %i.e, align 8, !noalias !1316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1316
  store ptr %i.i, ptr %i.c, align 8, !noalias !1316
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !1303
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !1303
  invoke fastcc void @_RNCNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bz)
          to label %bb.u unwind label %bb.s, !noalias !1316

bb.s:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.cb = load ptr, ptr %i.e, align 8, !alias.scope !1335, !noalias !1316, !nonnull !4, !noundef !4
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1336
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.t, label %common.resume.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #33
          to label %common.resume.i unwind label %bb.w, !noalias !1316

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1316
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !1346, !noalias !1316, !nonnull !4, !noundef !4
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !1347
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #33, !noalias !1316
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1316
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit.i

bb.w:                                             ; preds = %bb.ac, %bb.t
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1316
  unreachable

bb.x:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1316
  store ptr %i.by, ptr %i.d, align 8, !noalias !1316
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store atomic i64 0, ptr %i.ci release, align 8, !noalias !1316
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store atomic ptr null, ptr %i.cj release, align 8, !noalias !1316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1316
  store ptr %i.i, ptr %i.b, align 8, !noalias !1316
  store ptr %i.n, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !1303
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !1303
  invoke fastcc void @_RNCNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.by)
          to label %bb.y unwind label %bb.ab, !noalias !1316

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1316
  %i.ck = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1316, !noundef !4 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !noalias !1316
  store ptr %i.by, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !1316
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !1348
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #33, !noalias !1316
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1316
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1357
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ac, label %common.resume.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %common.resume.i unwind label %bb.w, !noalias !1316

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2g_5error5ErrorEE4recvs_0uEs0_0Csa5QsYiPB8Gl_5image(ptr nonnull %i.f) #31, !noalias !1316
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit.i

end_hunk_1
