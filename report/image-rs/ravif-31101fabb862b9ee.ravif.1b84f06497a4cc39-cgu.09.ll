Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead22compute_motion_vectorshECs2mu2Cb9JdUH_5ravif:bb.a
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead22compute_motion_vectorstECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(12536) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @_RNvMs4_NtNtCsdEEMmLUVy6d_5rav1e7context10block_unitNtB5_11FrameBlocks3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  invoke void @_RINvMNtNtCsdEEMmLUVy6d_5rav1e6tiling5tilerNtB3_10TilingInfo13tile_iter_muttECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(12536) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val3, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.o = mul nuw nsw i64 %.val3, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuttEEINtB2_12SpecFromIterBU_INtBX_18TileContextIterMuttEE9from_iterCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvYINtNtCsfCiG4zJPfKh_5rayon3vec8IntoIterINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuttEENtNtB8_4iter16ParallelIterator8for_eachNCINvNtNtBM_3api9lookahead22compute_motion_vectorstE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val1, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.r = mul nuw nsw i64 %.val1, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i16 noundef %3, ptr noalias nofree noundef nonnull align 4 %4, i64 noundef range(i64 0, 2305843009213693952) %5, i8 noundef range(i8 0, 19) %6, i64 noundef %7, i8 noundef %8, i8 noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = zext nneg i8 %6 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %6 to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif.206, i64 %i.c
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext29 = zext i8 %switch.load28 to i64
  %i.d = add nuw nsw i64 %switch.ext29, %switch.ext ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 8
  %i.f = zext i1 %i.e to i32
  %i.g = icmp samesign ugt i64 %i.d, 10
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h               ; 6 uses
  %notmask = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask, -1                     ; 5 uses
  %i.k = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4dc_q(i8 noundef %0, i8 noundef %8, i64 noundef %7)
  %i.l = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4ac_q(i8 noundef %0, i8 noundef %9, i64 noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitlEEINtNtB7_3map3MapINtBZ_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEINtB5_7ZipImplBW_B27_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.n)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.0.sroa.0.0.copyload18 = ptrtoaddr ptr %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.3.0.copyload19 = ptrtoaddr ptr %.sroa.0.sroa.3.0.copyload to i64
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.p = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %.val1.i.i.i.i.peel = load i32, ptr %i.r, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %.sroa.01.0.peel = zext i16 %i.k to i32
  %i.s = mul i32 %.val1.i.i.i.i.peel, %.sroa.01.0.peel
  %isneg.peel = icmp slt i32 %.val1.i.i.i.i.peel, 0
  %i.t = select i1 %isneg.peel, i32 %i.j, i32 0
  %i.u = add i32 %i.t, %i.s
  %i.v = ashr i32 %i.u, %i.i
  store i32 %i.v, ptr %i.q, align 4
  %exitcond.peel.not = icmp eq i64 %i.p, 1
  br i1 %exitcond.peel.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %.sroa.01.0 = zext i16 %i.l to i32              ; 4 uses
  %i.w = xor i64 %.sroa.0.sroa.5.0.copyload, -1
  %i.x = add i64 %.sroa.0.sroa.6.0.copyload, %i.w ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %i.y = sub i64 %.sroa.0.sroa.3.0.copyload19, %.sroa.0.sroa.0.0.copyload18
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next
  %n.vec = and i64 %i.x, -8                       ; 4 uses
  %i.z = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %i.aa = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert20 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat21 = shufflevector <4 x i32> %broadcast.splatinsert20, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert22 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat23 = shufflevector <4 x i32> %broadcast.splatinsert22, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.reass ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.reass ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !noalias !1207 ; 2 uses
  %wide.load24 = load <4 x i32>, ptr %i.ad, align 4, !noalias !1207 ; 2 uses
  %i.ae = mul <4 x i32> %wide.load, %broadcast.splat
  %i.af = mul <4 x i32> %wide.load24, %broadcast.splat
  %i.ag = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.ah = icmp slt <4 x i32> %wide.load24, zeroinitializer
  %i.ai = select <4 x i1> %i.ag, <4 x i32> %broadcast.splat21, <4 x i32> zeroinitializer
  %i.aj = select <4 x i1> %i.ah, <4 x i32> %broadcast.splat21, <4 x i32> zeroinitializer
  %i.ak = add <4 x i32> %i.ai, %i.ae
  %i.al = add <4 x i32> %i.aj, %i.af
  %i.am = ashr <4 x i32> %i.ak, %broadcast.splat23
  %i.an = ashr <4 x i32> %i.al, %broadcast.splat23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %i.am, ptr %i.ab, align 4
  store <4 x i32> %i.an, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next, %middle.block
  %.sroa.56.016.in.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.z, %middle.block ] ; 2 uses
  %.sroa.8.015.ph = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.aa, %middle.block ] ; 3 uses
  %i.aq = xor i64 %.sroa.8.015.ph, -1
  %i.ar = add i64 %.sroa.0.sroa.6.0.copyload, %i.aq
  %i.as = sub i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  %i.at = and i64 %i.as, 1
  %lcmp.mod.not.not = icmp eq i64 %i.at, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.prol = add nuw i64 %.sroa.56.016.in.ph, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.prol
  %i.av = add nuw i64 %.sroa.8.015.ph, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.prol
  %.val1.i.i.i.i.prol = load i32, ptr %i.aw, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %i.ax = mul i32 %.val1.i.i.i.i.prol, %.sroa.01.0
  %isneg.prol = icmp slt i32 %.val1.i.i.i.i.prol, 0
  %i.ay = select i1 %isneg.prol, i32 %i.j, i32 0
  %i.az = add i32 %i.ay, %i.ax
  %i.ba = ashr i32 %i.az, %i.i
  store i32 %i.ba, ptr %i.au, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.in.unr = phi i64 [ %.sroa.56.016.in.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %.sroa.56.016.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %.sroa.8.015.unr = phi i64 [ %.sroa.8.015.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.av, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.bb = icmp eq i64 %i.ar, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bb, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.56.016.in = phi i64 [ %.sroa.56.016.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.56.016.in.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 2 uses
  %.sroa.8.015 = phi i64 [ %i.bj, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.8.015.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ]
  %.sroa.56.016 = add nuw i64 %.sroa.56.016.in, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016
  %.val1.i.i.i.i = load i32, ptr %i.bd, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %i.be = mul i32 %.val1.i.i.i.i, %.sroa.01.0
  %isneg = icmp slt i32 %.val1.i.i.i.i, 0
  %i.bf = select i1 %isneg, i32 %i.j, i32 0
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = ashr i32 %i.bg, %i.i
  store i32 %i.bh, ptr %i.bc, align 4
  %.sroa.56.016.1 = add nuw i64 %.sroa.56.016.in, 2 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.1
  %i.bj = add nuw i64 %.sroa.8.015, 2             ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.1
  %.val1.i.i.i.i.1 = load i32, ptr %i.bk, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %i.bl = mul i32 %.val1.i.i.i.i.1, %.sroa.01.0
  %isneg.1 = icmp slt i32 %.val1.i.i.i.i.1, 0
  %i.bm = select i1 %isneg.1, i32 %i.j, i32 0
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = ashr i32 %i.bn, %i.i
  store i32 %i.bo, ptr %i.bi, align 4
  %exitcond.not.1 = icmp eq i64 %i.bj, %i.p
  br i1 %exitcond.not.1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !1206

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %switch.lookup
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i16 noundef %3, ptr noalias nofree noundef nonnull align 2 %4, i64 noundef range(i64 0, 4611686018427387904) %5, i8 noundef range(i8 0, 19) %6, i64 noundef %7, i8 noundef %8, i8 noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = zext nneg i8 %6 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %6 to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif.206, i64 %i.c
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %switch.ext28 = zext i8 %switch.load27 to i64
  %i.d = add nuw nsw i64 %switch.ext28, %switch.ext ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 8
  %i.f = zext i1 %i.e to i32
  %i.g = icmp samesign ugt i64 %i.d, 10
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h               ; 6 uses
  %notmask = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask, -1                     ; 5 uses
  %i.k = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4dc_q(i8 noundef %0, i8 noundef %8, i64 noundef %7)
  %i.l = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4ac_q(i8 noundef %0, i8 noundef %9, i64 noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %5
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitsEEINtNtB7_3map3MapINtBZ_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEINtB5_7ZipImplBW_B27_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.n)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.0.sroa.0.0.copyload18 = ptrtoaddr ptr %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.3.0.copyload19 = ptrtoaddr ptr %.sroa.0.sroa.3.0.copyload to i64
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.p = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %.val1.i.i.i.i.peel = load i16, ptr %i.r, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.s = sext i16 %.val1.i.i.i.i.peel to i32
  %.sroa.01.0.peel = zext i16 %i.k to i32
  %i.t = mul nsw i32 %i.s, %.sroa.01.0.peel
  %isneg.peel = icmp slt i16 %.val1.i.i.i.i.peel, 0
  %i.u = select i1 %isneg.peel, i32 %i.j, i32 0
  %i.v = add nsw i32 %i.t, %i.u
  %i.w = ashr i32 %i.v, %i.i
  %i.x = trunc i32 %i.w to i16
  store i16 %i.x, ptr %i.q, align 2
  %exitcond.peel.not = icmp eq i64 %i.p, 1
  br i1 %exitcond.peel.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %.sroa.01.0 = zext i16 %i.l to i32              ; 4 uses
  %i.y = xor i64 %.sroa.0.sroa.5.0.copyload, -1
  %i.z = add i64 %.sroa.0.sroa.6.0.copyload, %i.y ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %.sroa.0.sroa.3.0.copyload19, %.sroa.0.sroa.0.0.copyload18
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.ab = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %i.ac = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.reass
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.reass
  %wide.load = load <8 x i16>, ptr %i.ae, align 2, !noalias !1217 ; 2 uses
  %i.af = sext <8 x i16> %wide.load to <8 x i32>
  %i.ag = mul nsw <8 x i32> %broadcast.splat, %i.af
  %i.ah = icmp slt <8 x i16> %wide.load, zeroinitializer
  %i.ai = select <8 x i1> %i.ah, <8 x i32> %broadcast.splat21, <8 x i32> zeroinitializer
  %i.aj = add nsw <8 x i32> %i.ag, %i.ai
  %i.ak = ashr <8 x i32> %i.aj, %broadcast.splat23
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  store <8 x i16> %i.al, ptr %i.ad, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next, %middle.block
  %.sroa.56.016.in.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.ab, %middle.block ] ; 2 uses
  %.sroa.8.015.ph = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.ac, %middle.block ] ; 3 uses
  %i.an = xor i64 %.sroa.8.015.ph, -1
  %i.ao = add i64 %.sroa.0.sroa.6.0.copyload, %i.an
  %i.ap = sub i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  %i.aq = and i64 %i.ap, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aq, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.prol = add nuw i64 %.sroa.56.016.in.ph, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.prol
  %i.as = add nuw i64 %.sroa.8.015.ph, 1
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.prol
  %.val1.i.i.i.i.prol = load i16, ptr %i.at, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.au = sext i16 %.val1.i.i.i.i.prol to i32
  %i.av = mul nsw i32 %i.au, %.sroa.01.0
  %isneg.prol = icmp slt i16 %.val1.i.i.i.i.prol, 0
  %i.aw = select i1 %isneg.prol, i32 %i.j, i32 0
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = ashr i32 %i.ax, %i.i
  %i.az = trunc i32 %i.ay to i16
  store i16 %i.az, ptr %i.ar, align 2
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.in.unr = phi i64 [ %.sroa.56.016.in.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %.sroa.56.016.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %.sroa.8.015.unr = phi i64 [ %.sroa.8.015.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.ba = icmp eq i64 %i.ao, %.sroa.0.sroa.5.0.copyload
  br i1 %i.ba, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.56.016.in = phi i64 [ %.sroa.56.016.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.56.016.in.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 2 uses
  %.sroa.8.015 = phi i64 [ %i.bk, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.8.015.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ]
  %.sroa.56.016 = add nuw i64 %.sroa.56.016.in, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016
  %.val1.i.i.i.i = load i16, ptr %i.bc, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.bd = sext i16 %.val1.i.i.i.i to i32
  %i.be = mul nsw i32 %i.bd, %.sroa.01.0
  %isneg = icmp slt i16 %.val1.i.i.i.i, 0
  %i.bf = select i1 %isneg, i32 %i.j, i32 0
  %i.bg = add nsw i32 %i.be, %i.bf
  %i.bh = ashr i32 %i.bg, %i.i
  %i.bi = trunc i32 %i.bh to i16
  store i16 %i.bi, ptr %i.bb, align 2
  %.sroa.56.016.1 = add nuw i64 %.sroa.56.016.in, 2 ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.1
  %i.bk = add nuw i64 %.sroa.8.015, 2             ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.1
  %.val1.i.i.i.i.1 = load i16, ptr %i.bl, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.bm = sext i16 %.val1.i.i.i.i.1 to i32
  %i.bn = mul nsw i32 %i.bm, %.sroa.01.0
  %isneg.1 = icmp slt i16 %.val1.i.i.i.i.1, 0
  %i.bo = select i1 %isneg.1, i32 %i.j, i32 0
  %i.bp = add nsw i32 %i.bn, %i.bo
  %i.bq = ashr i32 %i.bp, %i.i
  %i.br = trunc i32 %i.bq to i16
  store i16 %i.br, ptr %i.bj, align 2
  %exitcond.not.1 = icmp eq i64 %i.bk, %i.p
  br i1 %exitcond.not.1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !1216

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %switch.lookup
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEB1d_ENCNvMs3_NtB1H_7encoderINtB2A_14CodedFrameDatahE29compute_spatiotemporal_scores0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB1D_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB1D_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload7 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.41.0.copyload8 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0.copyload6 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = add i64 %i.b, %.sroa.65.0.copyload6      ; 2 uses
  %i.d = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %i.e = add i64 %i.d, %.sroa.0.0.copyload7
  %i.f = sub i64 %i.e, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = add i64 %i.d, %.sroa.41.0.copyload8
  %i.h = sub i64 %i.g, %i.c
  %diff.check9 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.i = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !noalias !1232
  %wide.load10 = load <4 x i32>, ptr %i.m, align 4, !noalias !1232
  %i.n = zext <4 x i32> %wide.load to <4 x i64>
  %i.o = zext <4 x i32> %wide.load10 to <4 x i64>
  %i.p = mul nuw <4 x i64> %i.o, %i.n
  %i.q = add nuw <4 x i64> %i.p, splat (i64 8192)
  %i.r = lshr <4 x i64> %i.q, splat (i64 14)      ; 2 uses
  %i.s = icmp eq <4 x i64> %i.r, zeroinitializer
  %i.t = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.r, <4 x i64> splat (i64 268435455))
  %i.u = trunc nuw nsw <4 x i64> %i.t to <4 x i32>
  %i.v = select <4 x i1> %i.s, <4 x i32> splat (i32 1), <4 x i32> %i.u
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %index
  store <4 x i32> %i.v, ptr %i.w, align 4, !noalias !1233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.i, %middle.block ]
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.y = phi i64 [ %i.am, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.015.i.i = phi i64 [ %i.z, %scalar.ph ], [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = add nuw i64 %.sroa.0.015.i.i, 1          ; 2 uses
  %i.aa = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.aa
  %.val13.i.i = load i32, ptr %i.ab, align 4, !noalias !1232, !noundef !4
  %.val14.i.i = load i32, ptr %i.ac, align 4, !noalias !1232, !noundef !4
  %i.ad = zext i32 %.val13.i.i to i64
  %i.ae = zext i32 %.val14.i.i to i64
  %i.af = mul nuw i64 %i.ae, %i.ad
  %i.ag = add nuw i64 %i.af, 8192
  %i.ah = lshr i64 %i.ag, 14                      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1125899906318337) %i.ah, i64 268435455)
  %i.aj = trunc nuw nsw i64 %..i.i.i.i.i to i32
  %i.ak = select i1 %i.ai, i32 1, i32 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.y
  store i32 %i.ak, ptr %i.al, align 4, !noalias !1233
  %i.am = add i64 %i.y, 1                         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.a
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1231

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1232
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEB1d_ENCNvMs3_NtB1H_7encoderINtB2A_14CodedFrameDatatE29compute_spatiotemporal_scores0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB1D_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB1D_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload7 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.41.0.copyload8 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0.copyload6 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = add i64 %i.b, %.sroa.65.0.copyload6      ; 2 uses
  %i.d = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %i.e = add i64 %i.d, %.sroa.0.0.copyload7
  %i.f = sub i64 %i.e, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = add i64 %i.d, %.sroa.41.0.copyload8
  %i.h = sub i64 %i.g, %i.c
  %diff.check9 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.i = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !noalias !1248
  %wide.load10 = load <4 x i32>, ptr %i.m, align 4, !noalias !1248
  %i.n = zext <4 x i32> %wide.load to <4 x i64>
  %i.o = zext <4 x i32> %wide.load10 to <4 x i64>
  %i.p = mul nuw <4 x i64> %i.o, %i.n
  %i.q = add nuw <4 x i64> %i.p, splat (i64 8192)
  %i.r = lshr <4 x i64> %i.q, splat (i64 14)      ; 2 uses
  %i.s = icmp eq <4 x i64> %i.r, zeroinitializer
  %i.t = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.r, <4 x i64> splat (i64 268435455))
  %i.u = trunc nuw nsw <4 x i64> %i.t to <4 x i32>
  %i.v = select <4 x i1> %i.s, <4 x i32> splat (i32 1), <4 x i32> %i.u
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %index
  store <4 x i32> %i.v, ptr %i.w, align 4, !noalias !1249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItertEIB1e_lEENCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB1V_19QuantizationContext8quantizelE0ENtNtNtBa_6traits8iterator8Iterator4foldtNvYtNtNtBc_3cmp3Ord3maxECs2mu2Cb9JdUH_5ravif:bb.a
  %.not.i.i.i.i = icmp slt i32 %.sroa.0.0.i.i.i.i.i, %.val
  %i.i = tail call i16 @llvm.umax.i16(i16 %.val13.i.i, i16 %.sroa.0.017.i.i)
  %..i.i.i.i.i = select i1 %.not.i.i.i.i, i16 %.sroa.0.017.i.i, i16 %i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.02.016.i.i, 2         ; 2 uses
  %i.k = add i64 %i.e, %.sroa.52.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %.val13.i.i.1 = load i16, ptr %i.l, align 2, !noalias !1255, !noundef !4
  %.val14.i.i.1 = load i32, ptr %i.m, align 4, !noalias !1255, !noundef !4
  %.sroa.0.0.i.i.i.i.i.1 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %.val14.i.i.1, i1 false)
  %.not.i.i.i.i.1 = icmp slt i32 %.sroa.0.0.i.i.i.i.i.1, %.val
  %i.n = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.1, i16 %..i.i.i.i.i)
  %..i.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %..i.i.i.i.i, i16 %i.n ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, label %bb.b

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.017.i.i.epil.init = phi i16 [ %1, %.lr.ph.i.i ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.o = add i64 %.sroa.02.016.i.i.epil.init, %.sroa.52.0.copyload ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %.val13.i.i.epil = load i16, ptr %i.p, align 2, !noalias !1255, !noundef !4
  %.val14.i.i.epil = load i32, ptr %i.q, align 4, !noalias !1255, !noundef !4
  %.sroa.0.0.i.i.i.i.i.epil = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %.val14.i.i.epil, i1 false)
  %.not.i.i.i.i.epil = icmp slt i32 %.sroa.0.0.i.i.i.i.i.epil, %.val
  %i.r = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.epil, i16 %.sroa.0.017.i.i.epil.init)
  %..i.i.i.i.i.epil = select i1 %.not.i.i.i.i.epil, i16 %.sroa.0.017.i.i.epil.init, i16 %i.r
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i16 [ %1, %bb.a ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.i.epil, %.epil.preheader ]
  ret i16 %.sroa.0.0.lcssa.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i16 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItertEIB1e_sEENCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB1V_19QuantizationContext8quantizesE0ENtNtNtBa_6traits8iterator8Iterator4foldtNvYtNtNtBc_3cmp3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i16 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !1261, !noundef !4
  %.val = load i16, ptr %i.b, align 2             ; 3 uses
  %i.c = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %.neg = add i64 %.sroa.52.0.copyload, 1
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i64 %.sroa.6.0.copyload, %.neg
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.c, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %.sroa.0.017.i.i = phi i16 [ %1, %.lr.ph.i.i.new ], [ %..i.i.i.i.i.1, %bb.b ] ; 2 uses
  %.sroa.02.016.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.j, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
  %i.e = or disjoint i64 %.sroa.02.016.i.i, 1
  %i.f = add i64 %.sroa.02.016.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.f
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.f
  %.val13.i.i = load i16, ptr %i.g, align 2, !noalias !1262, !noundef !4
  %.val14.i.i = load i16, ptr %i.h, align 2, !noalias !1262, !noundef !4
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %.val14.i.i, i1 false)
  %.not.i.i.i.i = icmp slt i16 %.sroa.0.0.i.i.i.i.i, %.val
  %i.i = tail call i16 @llvm.umax.i16(i16 %.val13.i.i, i16 %.sroa.0.017.i.i)
  %..i.i.i.i.i = select i1 %.not.i.i.i.i, i16 %.sroa.0.017.i.i, i16 %i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.02.016.i.i, 2         ; 2 uses
  %i.k = add i64 %i.e, %.sroa.52.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %.val13.i.i.1 = load i16, ptr %i.l, align 2, !noalias !1262, !noundef !4
  %.val14.i.i.1 = load i16, ptr %i.m, align 2, !noalias !1262, !noundef !4
  %.sroa.0.0.i.i.i.i.i.1 = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %.val14.i.i.1, i1 false)
  %.not.i.i.i.i.1 = icmp slt i16 %.sroa.0.0.i.i.i.i.i.1, %.val
  %i.n = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.1, i16 %..i.i.i.i.i)
  %..i.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %..i.i.i.i.i, i16 %i.n ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, label %bb.b

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.017.i.i.epil.init = phi i16 [ %1, %.lr.ph.i.i ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.o = add i64 %.sroa.02.016.i.i.epil.init, %.sroa.52.0.copyload ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %.val13.i.i.epil = load i16, ptr %i.p, align 2, !noalias !1262, !noundef !4
  %.val14.i.i.epil = load i16, ptr %i.q, align 2, !noalias !1262, !noundef !4
  %.sroa.0.0.i.i.i.i.i.epil = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %.val14.i.i.epil, i1 false)
  %.not.i.i.i.i.epil = icmp slt i16 %.sroa.0.0.i.i.i.i.i.epil, %.val
  %i.r = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.epil, i16 %.sroa.0.017.i.i.epil.init)
  %..i.i.i.i.i.epil = select i1 %.not.i.i.i.i.epil, i16 %.sroa.0.017.i.i.epil.init, i16 %i.r
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i16 [ %1, %bb.a ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.i.epil, %.epil.preheader ]
  ret i16 %.sroa.0.0.lcssa.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden i48 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_INtNtNtBc_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB1l_EB1l_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtB1Q_3rgb3RgbtENvYB4o_NtNtNtBc_3ops5arith3Add3addEB2N_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i48 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.a, label %bb.b, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.b = icmp eq ptr %.sroa.4.0.copyload, %.sroa.5.0.copyload
  br i1 %i.b, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = lshr exact i64 %i.e, 2                   ; 2 uses
  %extract.t.i.i.i = trunc i48 %1 to i16          ; 2 uses
  %extract.i.i.i = lshr i48 %1, 16
  %extract.t23.i.i.i = trunc i48 %extract.i.i.i to i16 ; 2 uses
  %extract26.i.i.i = lshr i48 %1, 32
  %extract.t27.i.i.i = trunc nuw i48 %extract26.i.i.i to i16 ; 2 uses
  %i.g = icmp eq i64 %i.e, 4
  br i1 %i.g, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.f, 4611686018427387902
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.new
  %.sroa.05.0.off0.i.i.i = phi i16 [ %extract.t.i.i.i, %.new ], [ %i.x, %bb.e ]
  %.sroa.05.0.off16.i.i.i = phi i16 [ %extract.t23.i.i.i, %.new ], [ %i.y, %bb.e ]
  %.sroa.05.0.off32.i.i.i = phi i16 [ %extract.t27.i.i.i, %.new ], [ %i.z, %bb.e ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.e ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.07.0.i.i.i ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1303, !noalias !1304, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1305, !noalias !1304, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1306, !noalias !1304, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i = zext i8 %i.i to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i = zext i8 %i.k to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i = zext i8 %i.m to i16
  %i.n = add i16 %.sroa.05.0.off0.i.i.i, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.o = add i16 %.sroa.05.0.off16.i.i.i, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i
  %i.p = add i16 %.sroa.05.0.off32.i.i.i, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.07.0.i.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1303, !noalias !1304, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1305, !noalias !1304, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !1306, !noalias !1304, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.1 = zext i8 %i.s to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.1 = zext i8 %i.u to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.1 = zext i8 %i.w to i16
  %i.x = add i16 %i.n, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.y = add i16 %i.o, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.z = add i16 %i.p, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.aa = add nuw nsw i64 %.sroa.07.0.i.i.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.unr-lcssa, label %bb.e

.loopexit.i.i.i.unr-lcssa:                        ; preds = %bb.e
  %i.ab = and i64 %i.e, 4
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.i.unr-lcssa, %bb.d
  %.sroa.05.0.off0.i.i.i.epil.init = phi i16 [ %extract.t.i.i.i, %bb.d ], [ %i.x, %.loopexit.i.i.i.unr-lcssa ]
  %.sroa.05.0.off16.i.i.i.epil.init = phi i16 [ %extract.t23.i.i.i, %bb.d ], [ %i.y, %.loopexit.i.i.i.unr-lcssa ]
  %.sroa.05.0.off32.i.i.i.epil.init = phi i16 [ %extract.t27.i.i.i, %bb.d ], [ %i.z, %.loopexit.i.i.i.unr-lcssa ]
  %.sroa.07.0.i.i.i.epil.init = phi i64 [ 0, %bb.d ], [ %i.aa, %.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod52 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.07.0.i.i.i.epil.init ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !1303, !noalias !1304, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !1305, !noalias !1304, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1306, !noalias !1304, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.epil = zext i8 %i.ad to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.epil = zext i8 %i.af to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.epil = zext i8 %i.ah to i16
  %i.ai = add i16 %.sroa.05.0.off0.i.i.i.epil.init, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.epil
  %i.aj = add i16 %.sroa.05.0.off16.i.i.i.epil.init, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.epil
  %i.ak = add i16 %.sroa.05.0.off32.i.i.i.epil.init, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.epil
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa48 = phi i16 [ %i.x, %.loopexit.i.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ]
  %.lcssa47 = phi i16 [ %i.y, %.loopexit.i.i.i.unr-lcssa ], [ %i.aj, %.epil.preheader ]
  %.lcssa46 = phi i16 [ %i.z, %.loopexit.i.i.i.unr-lcssa ], [ %i.ak, %.epil.preheader ]
  %.sroa.39.0.insert.ext.i.i.i.i.i.le.i.i.i = zext i16 %.lcssa46 to i48
  %.sroa.39.0.insert.shift.i.i.i.i.i.le.i.i.i = shl nuw i48 %.sroa.39.0.insert.ext.i.i.i.i.i.le.i.i.i, 32
  %.sroa.28.0.insert.ext.i.i.i.i.i.le.i.i.i = zext i16 %.lcssa47 to i48
  %.sroa.28.0.insert.shift.i.i.i.i.i.le.i.i.i = shl nuw nsw i48 %.sroa.28.0.insert.ext.i.i.i.i.i.le.i.i.i, 16
  %.sroa.28.0.insert.insert.i.i.i.i.i.le.i.i.i = or disjoint i48 %.sroa.39.0.insert.shift.i.i.i.i.i.le.i.i.i, %.sroa.28.0.insert.shift.i.i.i.i.i.le.i.i.i
  %.sroa.07.0.insert.ext.i.i.i.i.i.le.i.i.i = zext i16 %.lcssa48 to i48
  %.sroa.07.0.insert.insert.i.i.i.i.i.le.i.i.i = or disjoint i48 %.sroa.28.0.insert.insert.i.i.i.i.i.le.i.i.i, %.sroa.07.0.insert.ext.i.i.i.i.i.le.i.i.i
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i48 [ %1, %bb.b ], [ %1, %bb.c ], [ %.sroa.07.0.insert.insert.i.i.i.i.i.le.i.i.i, %.loopexit.i.i.i ] ; 5 uses
  %.not20.i.i = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %.not20.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.al = icmp eq ptr %.sroa.6.0.copyload, %.sroa.7.0.copyload
  br i1 %i.al, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.an = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.ao = sub nuw i64 %i.am, %i.an                ; 3 uses
  %i.ap = lshr exact i64 %i.ao, 2                 ; 2 uses
  %extract.t.i21.i.i = trunc i48 %.sroa.01.0.i.i to i16 ; 2 uses
  %extract.i22.i.i = lshr i48 %.sroa.01.0.i.i, 16
  %extract.t23.i23.i.i = trunc i48 %extract.i22.i.i to i16 ; 2 uses
  %extract26.i24.i.i = lshr i48 %.sroa.01.0.i.i, 32
  %extract.t27.i25.i.i = trunc nuw i48 %extract26.i24.i.i to i16 ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 4
  br i1 %i.aq, label %.epil.preheader54, label %.new53

.new53:                                           ; preds = %bb.g
  %unroll_iter61 = and i64 %i.ap, 4611686018427387902
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new53
  %.sroa.05.0.off0.i26.i.i = phi i16 [ %extract.t.i21.i.i, %.new53 ], [ %i.bh, %bb.h ]
  %.sroa.05.0.off16.i27.i.i = phi i16 [ %extract.t23.i23.i.i, %.new53 ], [ %i.bi, %bb.h ]
  %.sroa.05.0.off32.i28.i.i = phi i16 [ %extract.t27.i25.i.i, %.new53 ], [ %i.bj, %bb.h ]
  %.sroa.07.0.i29.i.i = phi i64 [ 0, %.new53 ], [ %i.bk, %bb.h ] ; 3 uses
  %niter62 = phi i64 [ 0, %.new53 ], [ %niter62.next.1, %bb.h ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.07.0.i29.i.i ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !1307, !noalias !1304, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !1308, !noalias !1304, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !1309, !noalias !1304, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i = zext i8 %i.as to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i = zext i8 %i.au to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i = zext i8 %i.aw to i16
  %i.ax = add i16 %.sroa.05.0.off0.i26.i.i, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i
  %i.ay = add i16 %.sroa.05.0.off16.i27.i.i, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i
  %i.az = add i16 %.sroa.05.0.off32.i28.i.i, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.07.0.i29.i.i ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !1307, !noalias !1304, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !1308, !noalias !1304, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !1309, !noalias !1304, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.1 = zext i8 %i.bc to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.1 = zext i8 %i.be to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.1 = zext i8 %i.bg to i16
  %i.bh = add i16 %i.ax, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.1 ; 3 uses
  %i.bi = add i16 %i.ay, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.1 ; 3 uses
  %i.bj = add i16 %i.az, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.1 ; 3 uses
  %i.bk = add nuw nsw i64 %.sroa.07.0.i29.i.i, 2  ; 2 uses
  %niter62.next.1 = add i64 %niter62, 2           ; 2 uses
  %niter62.ncmp.1 = icmp eq i64 %niter62.next.1, %unroll_iter61
  br i1 %niter62.ncmp.1, label %.loopexit.i30.i.i.unr-lcssa, label %bb.h

.loopexit.i30.i.i.unr-lcssa:                      ; preds = %bb.h
  %i.bl = and i64 %i.ao, 4
  %lcmp.mod56.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod56.not, label %.loopexit.i30.i.i, label %.epil.preheader54

.epil.preheader54:                                ; preds = %.loopexit.i30.i.i.unr-lcssa, %bb.g
  %.sroa.05.0.off0.i26.i.i.epil.init = phi i16 [ %extract.t.i21.i.i, %bb.g ], [ %i.bh, %.loopexit.i30.i.i.unr-lcssa ]
  %.sroa.05.0.off16.i27.i.i.epil.init = phi i16 [ %extract.t23.i23.i.i, %bb.g ], [ %i.bi, %.loopexit.i30.i.i.unr-lcssa ]
  %.sroa.05.0.off32.i28.i.i.epil.init = phi i16 [ %extract.t27.i25.i.i, %bb.g ], [ %i.bj, %.loopexit.i30.i.i.unr-lcssa ]
  %.sroa.07.0.i29.i.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.bk, %.loopexit.i30.i.i.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.07.0.i29.i.i.epil.init ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1307, !noalias !1304, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !1308, !noalias !1304, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !1309, !noalias !1304, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.epil = zext i8 %i.bn to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.epil = zext i8 %i.bp to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.epil = zext i8 %i.br to i16
  %i.bs = add i16 %.sroa.05.0.off0.i26.i.i.epil.init, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.epil
  %i.bt = add i16 %.sroa.05.0.off16.i27.i.i.epil.init, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.epil
  %i.bu = add i16 %.sroa.05.0.off32.i28.i.i.epil.init, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.epil
  br label %.loopexit.i30.i.i

.loopexit.i30.i.i:                                ; preds = %.loopexit.i30.i.i.unr-lcssa, %.epil.preheader54
  %.lcssa45 = phi i16 [ %i.bh, %.loopexit.i30.i.i.unr-lcssa ], [ %i.bs, %.epil.preheader54 ]
  %.lcssa44 = phi i16 [ %i.bi, %.loopexit.i30.i.i.unr-lcssa ], [ %i.bt, %.epil.preheader54 ]
  %.lcssa43 = phi i16 [ %i.bj, %.loopexit.i30.i.i.unr-lcssa ], [ %i.bu, %.epil.preheader54 ]
  %.sroa.39.0.insert.ext.i.i.i.i.le.i.i.i = zext i16 %.lcssa43 to i48
  %.sroa.39.0.insert.shift.i.i.i.i.le.i.i.i = shl nuw i48 %.sroa.39.0.insert.ext.i.i.i.i.le.i.i.i, 32
  %.sroa.28.0.insert.ext.i.i.i.i.le.i.i.i = zext i16 %.lcssa44 to i48
  %.sroa.28.0.insert.shift.i.i.i.i.le.i.i.i = shl nuw nsw i48 %.sroa.28.0.insert.ext.i.i.i.i.le.i.i.i, 16
  %.sroa.28.0.insert.insert.i.i.i.i.le.i.i.i = or disjoint i48 %.sroa.39.0.insert.shift.i.i.i.i.le.i.i.i, %.sroa.28.0.insert.shift.i.i.i.i.le.i.i.i
  %.sroa.07.0.insert.ext.i.i.i.i.le.i.i.i = zext i16 %.lcssa45 to i48
  %.sroa.07.0.insert.insert.i.i.i.i.le.i.i.i = or disjoint i48 %.sroa.28.0.insert.insert.i.i.i.i.le.i.i.i, %.sroa.07.0.insert.ext.i.i.i.i.le.i.i.i
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i: ; preds = %.loopexit.i30.i.i, %bb.f, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i, %bb.a
  %.sroa.01.0.i = phi i48 [ %1, %bb.a ], [ %.sroa.01.0.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i ], [ %.sroa.01.0.i.i, %bb.f ], [ %.sroa.07.0.insert.insert.i.i.i.i.le.i.i.i, %.loopexit.i30.i.i ] ; 5 uses
  %.not.i = icmp eq ptr %.sroa.8.0.copyload, null
  br i1 %.not.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1z_3rgb3RgbtENCINvNtB7_3map8map_foldRB1u_B31_B31_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB31_NtNtNtBb_3ops5arith3Add3addE0EB42_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  %i.bv = icmp eq ptr %.sroa.8.0.copyload, %.sroa.9.0.copyload
  br i1 %i.bv, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1z_3rgb3RgbtENCINvNtB7_3map8map_foldRB1u_B31_B31_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB31_NtNtNtBb_3ops5arith3Add3addE0EB42_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = ptrtoint ptr %.sroa.9.0.copyload to i64
  %i.bx = ptrtoint ptr %.sroa.8.0.copyload to i64
  %i.by = sub nuw i64 %i.bw, %i.bx                ; 3 uses
  %i.bz = lshr exact i64 %i.by, 2                 ; 2 uses
  %extract.t.i.i = trunc i48 %.sroa.01.0.i to i16 ; 2 uses
  %extract.i.i = lshr i48 %.sroa.01.0.i, 16
  %extract.t23.i.i = trunc i48 %extract.i.i to i16 ; 2 uses
  %extract26.i.i = lshr i48 %.sroa.01.0.i, 32
  %extract.t27.i.i = trunc nuw i48 %extract26.i.i to i16 ; 2 uses
  %i.ca = icmp eq i64 %i.by, 4
  br i1 %i.ca, label %.epil.preheader64, label %.new63

.new63:                                           ; preds = %bb.j
  %unroll_iter71 = and i64 %i.bz, 4611686018427387902
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new63
  %.sroa.05.0.off0.i.i = phi i16 [ %extract.t.i.i, %.new63 ], [ %i.cr, %bb.k ]
  %.sroa.05.0.off16.i.i = phi i16 [ %extract.t23.i.i, %.new63 ], [ %i.cs, %bb.k ]
  %.sroa.05.0.off32.i.i = phi i16 [ %extract.t27.i.i, %.new63 ], [ %i.ct, %bb.k ]
  %.sroa.07.0.i20.i = phi i64 [ 0, %.new63 ], [ %i.cu, %bb.k ] ; 3 uses
  %niter72 = phi i64 [ 0, %.new63 ], [ %niter72.next.1, %bb.k ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.07.0.i20.i ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !1310, !noalias !1311, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !1312, !noalias !1311, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !1313, !noalias !1311, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i = zext i8 %i.cc to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i = zext i8 %i.ce to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i = zext i8 %i.cg to i16
  %i.ch = add i16 %.sroa.05.0.off0.i.i, %.sroa.05.0.extract.trunc.i.i.i.i.i
  %i.ci = add i16 %.sroa.05.0.off16.i.i, %.sroa.05.2.extract.trunc.i.i.i.i.i
  %i.cj = add i16 %.sroa.05.0.off32.i.i, %.sroa.05.4.extract.trunc.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.07.0.i20.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !1310, !noalias !1311, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !1312, !noalias !1311, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !1313, !noalias !1311, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.1 = zext i8 %i.cm to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.1 = zext i8 %i.co to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.1 = zext i8 %i.cq to i16
  %i.cr = add i16 %i.ch, %.sroa.05.0.extract.trunc.i.i.i.i.i.1 ; 3 uses
  %i.cs = add i16 %i.ci, %.sroa.05.2.extract.trunc.i.i.i.i.i.1 ; 3 uses
  %i.ct = add i16 %i.cj, %.sroa.05.4.extract.trunc.i.i.i.i.i.1 ; 3 uses
  %i.cu = add nuw nsw i64 %.sroa.07.0.i20.i, 2    ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.loopexit.i.i.unr-lcssa, label %bb.k

.loopexit.i.i.unr-lcssa:                          ; preds = %bb.k
  %i.cv = and i64 %i.by, 4
  %lcmp.mod66.not = icmp eq i64 %i.cv, 0
  br i1 %lcmp.mod66.not, label %.loopexit.i.i, label %.epil.preheader64

.epil.preheader64:                                ; preds = %.loopexit.i.i.unr-lcssa, %bb.j
  %.sroa.05.0.off0.i.i.epil.init = phi i16 [ %extract.t.i.i, %bb.j ], [ %i.cr, %.loopexit.i.i.unr-lcssa ]
  %.sroa.05.0.off16.i.i.epil.init = phi i16 [ %extract.t23.i.i, %bb.j ], [ %i.cs, %.loopexit.i.i.unr-lcssa ]
  %.sroa.05.0.off32.i.i.epil.init = phi i16 [ %extract.t27.i.i, %bb.j ], [ %i.ct, %.loopexit.i.i.unr-lcssa ]
  %.sroa.07.0.i20.i.epil.init = phi i64 [ 0, %bb.j ], [ %i.cu, %.loopexit.i.i.unr-lcssa ]
  %lcmp.mod70 = trunc i64 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.07.0.i20.i.epil.init ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !1310, !noalias !1311, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1312, !noalias !1311, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !1313, !noalias !1311, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.epil = zext i8 %i.cx to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.epil = zext i8 %i.cz to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.epil = zext i8 %i.db to i16
  %i.dc = add i16 %.sroa.05.0.off0.i.i.epil.init, %.sroa.05.0.extract.trunc.i.i.i.i.i.epil
  %i.dd = add i16 %.sroa.05.0.off16.i.i.epil.init, %.sroa.05.2.extract.trunc.i.i.i.i.i.epil
  %i.de = add i16 %.sroa.05.0.off32.i.i.epil.init, %.sroa.05.4.extract.trunc.i.i.i.i.i.epil
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.unr-lcssa, %.epil.preheader64
  %.lcssa42 = phi i16 [ %i.cr, %.loopexit.i.i.unr-lcssa ], [ %i.dc, %.epil.preheader64 ]
  %.lcssa41 = phi i16 [ %i.cs, %.loopexit.i.i.unr-lcssa ], [ %i.dd, %.epil.preheader64 ]
  %.lcssa = phi i16 [ %i.ct, %.loopexit.i.i.unr-lcssa ], [ %i.de, %.epil.preheader64 ]
  %.sroa.39.0.insert.ext.i.i.i.le.i.i = zext i16 %.lcssa to i48
  %.sroa.39.0.insert.shift.i.i.i.le.i.i = shl nuw i48 %.sroa.39.0.insert.ext.i.i.i.le.i.i, 32
  %.sroa.28.0.insert.ext.i.i.i.le.i.i = zext i16 %.lcssa41 to i48
  %.sroa.28.0.insert.shift.i.i.i.le.i.i = shl nuw nsw i48 %.sroa.28.0.insert.ext.i.i.i.le.i.i, 16
  %.sroa.28.0.insert.insert.i.i.i.le.i.i = or disjoint i48 %.sroa.39.0.insert.shift.i.i.i.le.i.i, %.sroa.28.0.insert.shift.i.i.i.le.i.i
  %.sroa.07.0.insert.ext.i.i.i.le.i.i = zext i16 %.lcssa42 to i48
  %.sroa.07.0.insert.insert.i.i.i.le.i.i = or disjoint i48 %.sroa.28.0.insert.insert.i.i.i.le.i.i, %.sroa.07.0.insert.ext.i.i.i.le.i.i
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1z_3rgb3RgbtENCINvNtB7_3map8map_foldRB1u_B31_B31_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB31_NtNtNtBb_3ops5arith3Add3addE0EB42_.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1z_3rgb3RgbtENCINvNtB7_3map8map_foldRB1u_B31_B31_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB31_NtNtNtBb_3ops5arith3Add3addE0EB42_.exit: ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i, %bb.i, %.loopexit.i.i
  %.sroa.07.0.i = phi i48 [ %.sroa.01.0.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i ], [ %.sroa.01.0.i, %bb.i ], [ %.sroa.07.0.insert.insert.i.i.i.le.i.i, %.loopexit.i.i ]
  ret i48 %.sroa.07.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1W_B1T_3lenEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjjEjNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouphEs3_0E0EB2T_4foldINtNtBc_3cmp11KeyAndValuejB3H_ENvYB4W_NtB4Z_3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1347, !noalias !1349, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1347, !noalias !1349, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1347, !noalias !1349, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.h = icmp eq ptr %i.c, %i.e
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !1354
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.6.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !1355, !noalias !1347
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouphEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1357
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val.i.i.i = load i64, ptr %i.p, align 8, !noalias !1357, !noundef !4 ; 4 uses
  %i.q = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i.i.i, ptr %i.m, align 8, !noalias !1358
  store i64 %.val.i.i.i, ptr %.sroa.6.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1358
  store i64 %.val.i.i.i, ptr %.sroa.7.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1358
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1359, !noalias !1360, !noundef !4
  %i.r = icmp ult i64 %.val.i.i.i, %.val1.i.i.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.a, ptr %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !1357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1356
  %i.s = add i64 %.sroa.0.0.i.i.i, 1
  %i.t = add nuw nsw i64 %.sroa.01.0.i.i.i, 1     ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouphEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouphEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1W_B1T_3lenEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjjEjNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0EB2T_4foldINtNtBc_3cmp11KeyAndValuejB3H_ENvYB4W_NtB4Z_3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1395, !noalias !1397, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1395, !noalias !1397, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1395, !noalias !1397, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.h = icmp eq ptr %i.c, %i.e
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !1402
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.6.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !1403, !noalias !1395
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1405
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val.i.i.i = load i64, ptr %i.p, align 8, !noalias !1405, !noundef !4 ; 4 uses
  %i.q = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i.i.i, ptr %i.m, align 8, !noalias !1406
  store i64 %.val.i.i.i, ptr %.sroa.6.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1406
  store i64 %.val.i.i.i, ptr %.sroa.7.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1406
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1407, !noalias !1408, !noundef !4
  %i.r = icmp ult i64 %.val.i.i.i, %.val1.i.i.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.a, ptr %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1404
  %i.s = add i64 %.sroa.0.0.i.i.i, 1
  %i.t = add nuw nsw i64 %.sroa.01.0.i.i.i, 1     ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter11ChunksExactmEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNvMs0_NtNtB2Y_3api8internalINtB3F_12ContextInnerhE24update_block_importances0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB5E_13FlattenCompatppE9iter_fold7flattenIBO_IBY_IB1q_IB1q_INtB1N_4ItermEIB6R_fEEIB2t_IB6R_B2U_EEEENCNCB3z_00EuNCINvNvXsi_B5E_B5R_B4P_4fold7flattenB6y_uNCINvNvB4P_8for_each4callTfxxENCB3z_s_0E0E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.07.i.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.a = alloca [160 x i8], align 8               ; 16 uses
  %i.b = alloca [168 x i8], align 8               ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0..sroa_idx, i64 168, i1 false)
  %.sroa.42.8.copyload = load ptr, ptr %0, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1460, !noalias !1461, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.val14.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1460, !noalias !1461, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %.val14.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1464, !noalias !1465, !noundef !4 ; 3 uses
  %i.g = icmp eq i64 %.val14.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #28, !noalias !1466
  unreachable

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1464, !noalias !1465 ; 2 uses
  %i.i = udiv i64 %.val.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1464, !noalias !1465, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.m = icmp ugt i64 %.val14.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1464, !noalias !1465, !noundef !4 ; 2 uses
  %i.p = add nuw i64 %i.o, 1
  %i.q = icmp ne i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = udiv i64 %i.i, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1464, !noalias !1465, !noundef !4 ; 2 uses
  %i.u = add nuw i64 %i.t, 1
  %i.v = add i64 %i.i, -1
  %i.w = icmp ne i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = udiv i64 %i.v, %i.u
  %i.y = add nuw i64 %i.x, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ]
  %i.z = sub i64 %.val14.i.i.i.i.i, %.val.i.i.i.i.i
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.z) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnerhE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.i.i.i.i.i.i, i64 48
  %.sroa.4.0..sroa_idx.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.bo, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.025.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ae, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.ae = add nuw i64 %.sroa.01.025.i.i.i.i, 1    ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !1467, !noalias !1468, !noundef !4 ; 4 uses
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !1467, !noalias !1468, !noundef !4
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i64 %i.af, 1
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !1467, !noalias !1468
  %i.aj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.b, i64 noundef %i.af), !noalias !1468 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa, i64 noundef %i.af), !noalias !1468 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.617.0.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.415.0.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ undef, %bb.g ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.ap = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1469, !noalias !1470, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %i.ar = load i64, ptr %i.ac, align 8, !alias.scope !1469, !noalias !1470
  store i8 0, ptr %i.j, align 8, !alias.scope !1469, !noalias !1470
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1471, !noalias !1470, !noundef !4 ; 5 uses
  %i.at = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %i.as) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0
  %i.av = select i1 %i.aq, i64 0, i64 %i.au       ; 3 uses
  %i.aw = extractvalue { i64, i1 } %i.at, 1
  %not..i.i.i.i.i.i = xor i1 %i.aq, true
  %i.ax = select i1 %not..i.i.i.i.i.i, i1 %i.aw, i1 false
  br i1 %i.ax, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.ay = load i64, ptr %i.h, align 8, !alias.scope !1471, !noalias !1470, !noundef !4 ; 2 uses
  %i.az = icmp ult i64 %i.av, %i.ay
  br i1 %i.az, label %bb.j, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ab, align 8, !alias.scope !1471, !noalias !1470, !nonnull !4, !align !21, !noundef !4
  %i.bb = sub nuw i64 %i.ay, %i.av                ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.av ; 3 uses
  store ptr %i.bc, ptr %i.ab, align 8, !alias.scope !1471, !noalias !1470, !captures !25
  store i64 %i.bb, ptr %i.h, align 8, !alias.scope !1471, !noalias !1470
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.as, %i.bb
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.as
  %i.be = sub nuw i64 %i.bb, %i.as
  store ptr %i.bd, ptr %i.ab, align 8, !alias.scope !1471, !noalias !1470, !captures !25
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i: ; preds = %bb.k, %bb.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.be, %bb.k ], [ 0, %bb.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.ph.i.i.i.i = phi ptr [ %i.bc, %bb.k ], [ null, %bb.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.h, align 8, !alias.scope !1471, !noalias !1470
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %.sroa.0.1.i.i.i.ph.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1473
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i.i, i64 %.sroa.415.0.i.i.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %.sroa.617.0.i.i.i.i
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.07.i.i.i.i.i.i.i, ptr noundef nonnull %.sink.i.i.i.i.i.i, ptr noundef nonnull %i.bf, ptr noundef nonnull %.sroa.5.0.i.i.i.i, ptr noundef nonnull %i.bg), !noalias !1474
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !1473
  %i.bi = load ptr, ptr %.sroa.42.8.copyload, align 8, !noalias !1475, !nonnull !4, !align !15, !noundef !4
  %i.bj = load ptr, ptr %.sroa.6.8.copyload, align 8, !noalias !1475, !nonnull !4, !align !15, !noundef !4
  %i.bk = load i8, ptr %.sroa.7.8.copyload, align 1, !range !26, !noalias !1475, !noundef !4
  %i.bl = load i64, ptr %.sroa.8.8.copyload, align 8, !noalias !1475, !noundef !4
  %i.bm = load ptr, ptr %.sroa.9.8.copyload, align 8, !noalias !1475, !nonnull !4, !align !15, !noundef !4
  %i.bn = load i64, ptr %.sroa.10.8.copyload, align 8, !noalias !1475, !noundef !4
  store ptr %i.bi, ptr %i.a, align 8, !noalias !1473
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i.i, align 8, !noalias !1473
  store ptr %i.bm, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i, align 8, !noalias !1473
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i13.i.i.i.i, align 8, !noalias !1473
  store i64 %i.bl, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1473
  store i64 %i.bn, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1473
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.en = mul i64 %i.ej, %i.dy
  %i.eo = add i64 %i.en, %i.dv                    ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.aq
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = fmul float %i.eg, %i.dr
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.eo ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !noalias !1696, !noundef !4
  %i.et = fadd float %i.eq, %i.es
  store float %i.et, ptr %i.er, align 4, !noalias !1696
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1696
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.z, %switch.lookup
  %i.eu = sub i64 %i.bp, %i.dw                    ; 2 uses
  %i.ev = mul i64 %i.ed, %i.eu
  %i.ew = sitofp i64 %i.ev to float
  %i.ex = fmul nnan float %i.ew, f0x39800000
  %i.ey = ashr exact i64 %i.ea, 6                 ; 4 uses
  %i.ez = icmp sgt i64 %i.ea, -64                 ; 2 uses
  %or.cond.i15.i.i.i.i.i.i.i.i.i = and i1 %i.ei, %i.ez
  br i1 %or.cond.i15.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i
  %i.fa = load i64, ptr %i.ar, align 8, !noalias !1697, !noundef !4 ; 2 uses
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.af, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr %i.as, align 8, !noalias !1697, !noundef !4
  %i.fd = icmp ult i64 %i.dy, %i.fc
  br i1 %i.fd, label %bb.ag, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fe = mul i64 %i.fa, %i.dy
  %i.ff = add i64 %i.fe, %i.ey                    ; 3 uses
  %i.fg = icmp ult i64 %i.ff, %i.aq
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fh = fmul float %i.ex, %i.dr
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ff ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !noalias !1697, !noundef !4
  %i.fk = fadd float %i.fh, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !noalias !1697
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ff, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1697
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af, %bb.ae, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i
  %i.fl = sub i64 %i.br, %i.dz                    ; 2 uses
  %i.fm = mul i64 %i.ec, %i.fl
  %i.fn = sitofp i64 %i.fm to float
  %i.fo = fmul nnan float %i.fn, f0x39800000
  %i.fp = ashr exact i64 %i.eb, 6                 ; 4 uses
  %i.fq = icmp sgt i64 %i.eb, -64                 ; 2 uses
  %or.cond.i17.i.i.i.i.i.i.i.i.i = and i1 %i.eh, %i.fq
  br i1 %or.cond.i17.i.i.i.i.i.i.i.i.i, label %bb.aj, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i
  %i.fr = load i64, ptr %i.ar, align 8, !noalias !1698, !noundef !4 ; 2 uses
  %i.fs = icmp ult i64 %i.dv, %i.fr
  br i1 %i.fs, label %bb.ak, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ft = load i64, ptr %i.as, align 8, !noalias !1698, !noundef !4
  %i.fu = icmp ult i64 %i.fp, %i.ft
  br i1 %i.fu, label %bb.al, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul i64 %i.fr, %i.fp
  %i.fw = add i64 %i.fv, %i.dv                    ; 3 uses
  %i.fx = icmp ult i64 %i.fw, %i.aq
  br i1 %i.fx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fy = fmul float %i.fo, %i.dr
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.fw ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !noalias !1698, !noundef !4
  %i.gb = fadd float %i.fy, %i.ga
  store float %i.gb, ptr %i.fz, align 4, !noalias !1698
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fw, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1698
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.ak, %bb.aj, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i
  %i.gc = mul i64 %i.eu, %i.fl
  %i.gd = sitofp i64 %i.gc to float
  %i.ge = fmul nnan float %i.gd, f0x39800000
  %or.cond.i19.i.i.i.i.i.i.i.i.i = and i1 %i.fq, %i.ez
  br i1 %or.cond.i19.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.ao:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i
  %i.gf = load i64, ptr %i.ar, align 8, !noalias !1699, !noundef !4 ; 2 uses
  %i.gg = icmp ult i64 %i.ey, %i.gf
  br i1 %i.gg, label %bb.ap, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.gh = load i64, ptr %i.as, align 8, !noalias !1699, !noundef !4
  %i.gi = icmp ult i64 %i.fp, %i.gh
  br i1 %i.gi, label %bb.aq, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.gj = mul i64 %i.gf, %i.fp
  %i.gk = add i64 %i.gj, %i.ey                    ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %i.aq
  br i1 %i.gl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gm = fmul float %i.ge, %i.dr
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.gk ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !noalias !1699, !noundef !4
  %i.gp = fadd float %i.gm, %i.go
  store float %i.gp, ptr %i.gn, align 4, !noalias !1699
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1699
  unreachable

_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.ar, %bb.ap, %bb.ao, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnertE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i
  %i.gq = add i64 %i.ax, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ay, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnertE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnertE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjRlETB2P_iENCNvNtNtCsdEEMmLUVy6d_5rav1e4cdef4rust17first_max_element0E0EB1Z_4foldINtNtBc_3cmp11KeyAndValueB2S_B2N_ENvYB47_NtB4a_3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1725, !noalias !1727, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1725, !noalias !1727, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1725, !noalias !1727, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %i.h = icmp eq ptr %i.c, %i.e
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !1730
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.63.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.8.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !1731, !noalias !1725
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueTRliETjB2E_EENCINvNtB7_3map8map_foldB2I_B2e_B2e_NCINvNvB1B_10max_by_key3keyB2I_B2D_NCNvNtNtCsdEEMmLUVy6d_5rav1e4cdef4rust17first_max_element0E0NvYB2e_NtB2h_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.g, %bb.b ], [ %i.t, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1733
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %i.p = sub i64 0, %.sroa.0.0.i.i                ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !noalias !1736
  store i64 %i.p, ptr %.sroa.63.32..sroa_idx.i.i.i.i, align 8, !noalias !1736
  store i64 %.sroa.0.0.i.i, ptr %.sroa.7.32..sroa_idx.i.i.i.i, align 8, !noalias !1736
  store ptr %i.o, ptr %.sroa.8.32..sroa_idx.i.i.i.i, align 8, !noalias !1736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1737, !noalias !1738, !nonnull !4, !align !21, !noundef !4
  %.val3.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1737, !noalias !1738
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.o, align 4, !alias.scope !1739, !noalias !1740, !noundef !4 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i = load i32, ptr %.val2.i.i.i.i.i.i, align 4, !noalias !1740, !noundef !4 ; 2 uses
  %i.q = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i
  %i.r = icmp slt i32 %.val.i.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i
  %i.s = icmp sgt i64 %.val3.i.i.i.i.i.i, %i.p
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.q, i1 %i.s, i1 %i.r
  %..i.i.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.a, ptr %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i.i.i.i, i64 32, i1 false), !noalias !1733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1732
  %i.t = add i64 %.sroa.0.0.i.i, 1
  %i.u = add nuw nsw i64 %.sroa.01.0.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.l
  br i1 %i.v, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueTRliETjB2E_EENCINvNtB7_3map8map_foldB2I_B2e_B2e_NCINvNvB1B_10max_by_key3keyB2I_B2D_NCNvNtNtCsdEEMmLUVy6d_5rav1e4cdef4rust17first_max_element0E0NvYB2e_NtB2h_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueTRliETjB2E_EENCINvNtB7_3map8map_foldB2I_B2e_B2e_NCINvNvB1B_10max_by_key3keyB2I_B2D_NCNvNtNtCsdEEMmLUVy6d_5rav1e4cdef4rust17first_max_element0E0NvYB2e_NtB2h_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB1w_6BufferNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VecB4d_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val6.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1744
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENCINvNtB1r_12segmentation27segmentation_optimize_innerhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4g_3VecsE14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innerhE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.g, align 4, !noalias !1753, !noundef !4 ; 5 uses
  %i.h = icmp eq i32 %.val15.i, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val15.i, i1 true) ; 3 uses
  %i.j = icmp ugt i32 %.val15.i, 65535
  %i.k = sub nsw i32 16, %i.i
  %i.l = lshr i32 %.val15.i, %i.k
  %i.m = xor i32 %i.i, 16
  %i.n = shl i32 %.val15.i, %i.m
  %.sroa.01.0.i.i.i.i = select i1 %i.j, i32 %i.l, i32 %i.n
  %i.o = add i32 %.sroa.01.0.i.i.i.i, -49152      ; 4 uses
  %i.p = mul i32 %i.o, -1402
  %i.q = ashr i32 %i.p, 15
  %i.r = add nsw i32 %i.q, 2546
  %i.s = mul i32 %i.r, %i.o
  %i.t = ashr i32 %i.s, 15
  %i.u = add nsw i32 %i.t, -5216
  %i.v = mul i32 %i.u, %i.o
  %i.w = ashr i32 %i.v, 15
  %i.x = add nsw i32 %i.w, 15745
  %i.y = mul i32 %i.x, %i.o
  %i.z = ashr i32 %i.y, 15
  %i.aa = add nsw i32 %i.z, 517491
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = shl nuw nsw i32 %i.i, 11
  %reass.sub4.i.i.i.i = sub nsw i32 %i.ab, %i.ac
  %i.ad = trunc i32 %reass.sub4.i.i.i.i to i16
  %i.ae = add i16 %i.ad, -28672
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.ae, %bb.d ], [ -28673, %bb.c ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.af, align 2, !noalias !1754
  %i.ag = add i64 %i.f, 1                         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.01.0.i, 1        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innerhE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innerhE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ag, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1753
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENCINvNtB1r_12segmentation27segmentation_optimize_innertE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4g_3VecsE14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innertE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.g, align 4, !noalias !1763, !noundef !4 ; 5 uses
  %i.h = icmp eq i32 %.val15.i, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val15.i, i1 true) ; 3 uses
  %i.j = icmp ugt i32 %.val15.i, 65535
  %i.k = sub nsw i32 16, %i.i
  %i.l = lshr i32 %.val15.i, %i.k
  %i.m = xor i32 %i.i, 16
  %i.n = shl i32 %.val15.i, %i.m
  %.sroa.01.0.i.i.i.i = select i1 %i.j, i32 %i.l, i32 %i.n
  %i.o = add i32 %.sroa.01.0.i.i.i.i, -49152      ; 4 uses
  %i.p = mul i32 %i.o, -1402
  %i.q = ashr i32 %i.p, 15
  %i.r = add nsw i32 %i.q, 2546
  %i.s = mul i32 %i.r, %i.o
  %i.t = ashr i32 %i.s, 15
  %i.u = add nsw i32 %i.t, -5216
  %i.v = mul i32 %i.u, %i.o
  %i.w = ashr i32 %i.v, 15
  %i.x = add nsw i32 %i.w, 15745
  %i.y = mul i32 %i.x, %i.o
  %i.z = ashr i32 %i.y, 15
  %i.aa = add nsw i32 %i.z, 517491
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = shl nuw nsw i32 %i.i, 11
  %reass.sub4.i.i.i.i = sub nsw i32 %i.ab, %i.ac
  %i.ad = trunc i32 %reass.sub4.i.i.i.i to i16
  %i.ae = add i16 %i.ad, -28672
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.ae, %bb.d ], [ -28673, %bb.c ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.af, align 2, !noalias !1764
  %i.ag = add i64 %i.f, 1                         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.01.0.i, 1        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innertE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innertE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ag, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1763
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENCNvMs2_NtNtB1u_6tiling10tile_stateINtB2e_12TileStateMuthE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtB2g_17tile_motion_stats14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB51_3VecB4b_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = icmp eq ptr %i.a, %i.c
  br i1 %i.e, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuthE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.k = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1783, !noundef !4
  %i.l = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1783, !noundef !4
  %i.m = add i64 %i.l, 62
  %i.n = and i64 %i.m, 63                         ; 2 uses
  %i.o = shl i64 %i.k, %i.n                       ; 5 uses
  %i.p = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1783, !noundef !4
  %i.q = shl i64 %i.p, %i.n                       ; 4 uses
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1783, !noundef !4
  %i.s = lshr i64 %i.r, 2                         ; 2 uses
  %i.t = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !1783, !noundef !4
  %i.u = lshr i64 %i.t, 2                         ; 2 uses
  %i.v = add i64 %i.s, %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1784, !noalias !1785, !noundef !4 ; 6 uses
  %.not.i.i.i.i = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i.i.i, label %.invoke, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.u, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1784, !noalias !1785, !noundef !4
  %.not5.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not5.i.i.i.i, label %.invoke, label %bb.e, !prof !8

.invoke:                                          ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ @72, %bb.c ], [ @75, %bb.d ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.cont unwind label %bb.j, !noalias !1786

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.j, align 8, !alias.scope !1784, !noalias !1785, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1784, !noalias !1785, !noundef !4 ; 2 uses
  %i.af = mul i64 %i.x, %i.q                      ; 3 uses
  %i.ag = add i64 %i.q, 1
  %i.ah = mul i64 %i.x, %i.ag                     ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %.not6.i.i.i.i = icmp ugt i64 %i.ah, %i.ae
  %or.cond.i.i.i.i = or i1 %i.ai, %.not6.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp ult i64 %i.o, %i.x
  br i1 %i.aj, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc16.i unwind label %bb.j, !noalias !1786

.noexc16.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc17.i unwind label %bb.j, !noalias !1786

.noexc17.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.o
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 6 uses
  store ptr %i.al, ptr %i.am, align 8, !noalias !1787
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1787
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.q, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1787
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.s, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !1787
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %i.u, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !1787
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %i.x, ptr %.sroa.86.0..sroa_idx.i.i, align 8, !noalias !1787
  %i.an = add i64 %.val10.i, 1                    ; 2 uses
  %i.ao = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.i
  br i1 %i.ap, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuthE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.j:                                             ; preds = %.invoke, %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1786
  resume { ptr, i32 } %i.aq

_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuthE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.an, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1786
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENCNvMs2_NtNtB1u_6tiling10tile_stateINtB2e_12TileStateMuttE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtB2g_17tile_motion_stats14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB51_3VecB4b_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = icmp eq ptr %i.a, %i.c
  br i1 %i.e, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuttE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.k = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1806, !noundef !4
  %i.l = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1806, !noundef !4
  %i.m = add i64 %i.l, 62
  %i.n = and i64 %i.m, 63                         ; 2 uses
  %i.o = shl i64 %i.k, %i.n                       ; 5 uses
  %i.p = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1806, !noundef !4
  %i.q = shl i64 %i.p, %i.n                       ; 4 uses
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1806, !noundef !4
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENCNvMs0_NtB1u_4tileINtB2z_12TileStateMuthE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callNtB1s_14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4L_3VecB4g_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif:bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1824
  %i.l = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1825, !noundef !4
  %i.m = shl i64 %i.l, 4
  %i.n = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1825, !noundef !4
  %i.o = shl i64 %i.n, 4
  %i.p = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1825, !noundef !4
  %i.q = lshr i64 %i.p, 2
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1825, !noundef !4
  %i.s = lshr i64 %i.r, 2
  invoke void @_RNvMsw_NtNtCs65NEs4fedBE_14av_scenechange4data6motionNtB5_14TileMEStatsMut3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s)
          to label %bb.d unwind label %bb.e, !noalias !1826

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1827
  %i.u = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1824
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.j
  br i1 %i.w, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuthE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1826
  resume { ptr, i32 } %i.x

_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuthE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1826
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENCNvMs0_NtB1u_4tileINtB2z_12TileStateMuttE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callNtB1s_14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4L_3VecB4g_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuttE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1841
  %i.l = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1842, !noundef !4
  %i.m = shl i64 %i.l, 4
  %i.n = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1842, !noundef !4
  %i.o = shl i64 %i.n, 4
  %i.p = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1842, !noundef !4
  %i.q = lshr i64 %i.p, 2
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1842, !noundef !4
  %i.s = lshr i64 %i.r, 2
  invoke void @_RNvMsw_NtNtCs65NEs4fedBE_14av_scenechange4data6motionNtB5_14TileMEStatsMut3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s)
          to label %bb.d unwind label %bb.e, !noalias !1843

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1844
  %i.u = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1841
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.j
  br i1 %i.w, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuttE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1843
  resume { ptr, i32 } %i.x

_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuttE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1843
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1z_3rgb3RgbmEENCINvNtB7_3map8map_foldRB1u_TtB33_EB31_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB42_s_0E0EB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !6, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  %i.d = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
  %.sroa.018.0.copyload19.i = load i32, ptr %2, align 4, !alias.scope !1894, !noalias !1895 ; 2 uses
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.5.0.copyload21.i = load i32, ptr %.sroa.5.0..sroa_idx20.i, align 4, !alias.scope !1894, !noalias !1895 ; 2 uses
  %.sroa.6.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.6.0.copyload23.i = load i32, ptr %.sroa.6.0..sroa_idx22.i, align 4, !alias.scope !1894, !noalias !1895 ; 2 uses
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.7.0.copyload25.i = load i32, ptr %.sroa.7.0..sroa_idx24.i, align 4, !alias.scope !1894, !noalias !1895 ; 2 uses
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.f = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i, %bb.d
  %.sroa.8.0.i.i = phi i32 [ %.sroa.7.0.copyload25.i, %bb.d ], [ %i.ac, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.7.0.i.i = phi i32 [ %.sroa.6.0.copyload23.i, %bb.d ], [ %i.ab, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.612.0.i.i = phi i32 [ %.sroa.5.0.copyload21.i, %bb.d ], [ %i.aa, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.09.0.i.i = phi i32 [ %.sroa.018.0.copyload19.i, %bb.d ], [ %i.z, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ad, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1896, !noalias !1897, !noundef !4 ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !1896, !noalias !1897, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1896, !noalias !1897, !noundef !4
  %i.q = load i8, ptr %i.i, align 1, !alias.scope !1896, !noalias !1897, !noundef !4
  %i.r = zext i8 %i.k to i32
  %i.s = sub nuw nsw i32 256, %i.r                ; 4 uses
  %i.t = zext i8 %i.q to i32
  %i.u = mul nuw nsw i32 %i.s, %i.t
  %i.v = zext i8 %i.p to i32
  %i.w = mul nuw nsw i32 %i.s, %i.v
  %i.x = zext i8 %i.n to i32
  %i.y = mul nuw nsw i32 %i.s, %i.x
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink3.i.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %.sink2.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ 0, %bb.e ]
  %.sink1.i.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.e ]
  %.sink.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = add i32 %.sink3.i.i.i.i.i.i, %.sroa.09.0.i.i ; 2 uses
  %i.aa = add i32 %.sink2.i.i.i.i.i.i, %.sroa.612.0.i.i ; 2 uses
  %i.ab = add i32 %.sink1.i.i.i.i.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.ac = add i32 %.sink.i.i.i.i.i.i, %.sroa.8.0.i.i ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.01.0.i.i, 1      ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.h
  br i1 %i.ae, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i, label %bb.e

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i, %bb.c
  %.sroa.7.0.i = phi i32 [ %.sroa.7.0.copyload25.i, %bb.c ], [ %i.ac, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.copyload23.i, %bb.c ], [ %i.ab, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.copyload21.i, %bb.c ], [ %i.aa, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.018.0.i = phi i32 [ %.sroa.018.0.copyload19.i, %bb.c ], [ %i.z, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  store i32 %.sroa.018.0.i, ptr %2, align 4, !alias.scope !1891, !noalias !1895
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx20.i, align 4, !alias.scope !1891, !noalias !1895
  store i32 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx22.i, align 4, !alias.scope !1891, !noalias !1895
  store i32 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx24.i, align 4, !alias.scope !1891, !noalias !1895
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i, %bb.b
  %.not2.i = icmp eq ptr %.sroa.5.0.copyload, null
  br i1 %.not2.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  %i.af = icmp eq ptr %.sroa.5.0.copyload, %.sroa.6.0.copyload
  %.sroa.026.0.copyload27.i = load i32, ptr %2, align 4, !alias.scope !1900, !noalias !1895 ; 2 uses
  %.sroa.528.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.528.0.copyload30.i = load i32, ptr %.sroa.528.0..sroa_idx29.i, align 4, !alias.scope !1900, !noalias !1895 ; 2 uses
  %.sroa.631.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.631.0.copyload33.i = load i32, ptr %.sroa.631.0..sroa_idx32.i, align 4, !alias.scope !1900, !noalias !1895 ; 2 uses
  %.sroa.734.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.734.0.copyload36.i = load i32, ptr %.sroa.734.0..sroa_idx35.i, align 4, !alias.scope !1900, !noalias !1895 ; 2 uses
  br i1 %i.af, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3w_s_0E0EB3C_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.ah = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.ai = sub nuw i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 2
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i, %bb.i
  %.sroa.8.0.i10.i = phi i32 [ %.sroa.734.0.copyload36.i, %bb.i ], [ %i.be, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.7.0.i11.i = phi i32 [ %.sroa.631.0.copyload33.i, %bb.i ], [ %i.bd, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.612.0.i12.i = phi i32 [ %.sroa.528.0.copyload30.i, %bb.i ], [ %i.bc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.09.0.i13.i = phi i32 [ %.sroa.026.0.copyload27.i, %bb.i ], [ %i.bb, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.01.0.i14.i = phi i64 [ 0, %bb.i ], [ %i.bf, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i14.i ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1901, !noalias !1902, !noundef !4 ; 2 uses
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !1901, !noalias !1902, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !1901, !noalias !1902, !noundef !4
  %i.as = load i8, ptr %i.ak, align 1, !alias.scope !1901, !noalias !1902, !noundef !4
  %i.at = zext i8 %i.am to i32
  %i.au = sub nuw nsw i32 256, %i.at              ; 4 uses
  %i.av = zext i8 %i.as to i32
  %i.aw = mul nuw nsw i32 %i.au, %i.av
  %i.ax = zext i8 %i.ar to i32
  %i.ay = mul nuw nsw i32 %i.au, %i.ax
  %i.az = zext i8 %i.ap to i32
  %i.ba = mul nuw nsw i32 %i.au, %i.az
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sink3.i.i.i.i.i = phi i32 [ %i.au, %bb.k ], [ 0, %bb.j ]
  %.sink2.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ 0, %bb.j ]
  %.sink1.i.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ 0, %bb.j ]
  %.sink.i.i.i.i.i = phi i32 [ %i.ba, %bb.k ], [ 0, %bb.j ]
  %i.bb = add i32 %.sink3.i.i.i.i.i, %.sroa.09.0.i13.i ; 2 uses
  %i.bc = add i32 %.sink2.i.i.i.i.i, %.sroa.612.0.i12.i ; 2 uses
  %i.bd = add i32 %.sink1.i.i.i.i.i, %.sroa.7.0.i11.i ; 2 uses
  %i.be = add i32 %.sink.i.i.i.i.i, %.sroa.8.0.i10.i ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.01.0.i14.i, 1    ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %i.aj
  br i1 %i.bg, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3w_s_0E0EB3C_.exit.i, label %bb.j

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3w_s_0E0EB3C_.exit.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i, %bb.h
  %.sroa.631.0.i = phi i32 [ %.sroa.631.0.copyload33.i, %bb.h ], [ %i.bd, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.528.0.i = phi i32 [ %.sroa.528.0.copyload30.i, %bb.h ], [ %i.bc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.026.0.i = phi i32 [ %.sroa.026.0.copyload27.i, %bb.h ], [ %i.bb, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.734.0.i = phi i32 [ %.sroa.734.0.copyload36.i, %bb.h ], [ %i.be, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  store i32 %.sroa.026.0.i, ptr %2, align 4, !alias.scope !1891, !noalias !1895
  store i32 %.sroa.528.0.i, ptr %.sroa.528.0..sroa_idx29.i, align 4, !alias.scope !1891, !noalias !1895
  store i32 %.sroa.631.0.i, ptr %.sroa.631.0..sroa_idx32.i, align 4, !alias.scope !1891, !noalias !1895
  store i32 %.sroa.734.0.i, ptr %.sroa.734.0..sroa_idx35.i, align 4, !alias.scope !1891, !noalias !1895
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3w_s_0E0EB3C_.exit.i, %bb.g, %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !noundef !4 ; 4 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  %i.bl = icmp eq ptr %i.bi, %i.bk
  %.sroa.04.0.copyload5 = load i32, ptr %2, align 4, !alias.scope !1905 ; 2 uses
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.56.0.copyload8 = load i32, ptr %.sroa.56.0..sroa_idx7, align 4, !alias.scope !1905 ; 2 uses
  %.sroa.69.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.69.0.copyload11 = load i32, ptr %.sroa.69.0..sroa_idx10, align 4, !alias.scope !1905 ; 2 uses
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.7.0.copyload13 = load i32, ptr %.sroa.7.0..sroa_idx12, align 4, !alias.scope !1905 ; 2 uses
  br i1 %i.bl, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEENCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3v_s_0E0EB3B_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub nuw i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 2
  br label %bb.n

bb.n:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i, %bb.m
  %.sroa.8.0.i = phi i32 [ %.sroa.7.0.copyload13, %bb.m ], [ %i.ck, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  %.sroa.7.0.i3 = phi i32 [ %.sroa.69.0.copyload11, %bb.m ], [ %i.cj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  %.sroa.611.0.i = phi i32 [ %.sroa.56.0.copyload8, %bb.m ], [ %i.ci, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  %.sroa.08.0.i = phi i32 [ %.sroa.04.0.copyload5, %bb.m ], [ %i.ch, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  %.sroa.01.0.i = phi i64 [ 0, %bb.m ], [ %i.cl, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.01.0.i ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !1906, !noalias !1907, !noundef !4 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !1906, !noalias !1907, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !1906, !noalias !1907, !noundef !4
  %i.by = load i8, ptr %i.bq, align 1, !alias.scope !1906, !noalias !1907, !noundef !4
  %i.bz = zext i8 %i.bs to i32
  %i.ca = sub nuw nsw i32 256, %i.bz              ; 4 uses
  %i.cb = zext i8 %i.by to i32
  %i.cc = mul nuw nsw i32 %i.ca, %i.cb
  %i.cd = zext i8 %i.bx to i32
  %i.ce = mul nuw nsw i32 %i.ca, %i.cd
  %i.cf = zext i8 %i.bv to i32
  %i.cg = mul nuw nsw i32 %i.ca, %i.cf
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i: ; preds = %bb.o, %bb.n
  %.sink3.i.i.i = phi i32 [ %i.ca, %bb.o ], [ 0, %bb.n ]
  %.sink2.i.i.i = phi i32 [ %i.cc, %bb.o ], [ 0, %bb.n ]
  %.sink1.i.i.i = phi i32 [ %i.ce, %bb.o ], [ 0, %bb.n ]
  %.sink.i.i.i = phi i32 [ %i.cg, %bb.o ], [ 0, %bb.n ]
  %i.ch = add i32 %.sink3.i.i.i, %.sroa.08.0.i    ; 2 uses
  %i.ci = add i32 %.sink2.i.i.i, %.sroa.611.0.i   ; 2 uses
  %i.cj = add i32 %.sink1.i.i.i, %.sroa.7.0.i3    ; 2 uses
  %i.ck = add i32 %.sink.i.i.i, %.sroa.8.0.i      ; 2 uses
  %i.cl = add nuw nsw i64 %.sroa.01.0.i, 1        ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %i.bp
  br i1 %i.cm, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEENCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3v_s_0E0EB3B_.exit, label %bb.n

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEENCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3v_s_0E0EB3B_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i, %bb.l
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload13, %bb.l ], [ %i.ck, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  %.sroa.69.0 = phi i32 [ %.sroa.69.0.copyload11, %bb.l ], [ %i.cj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  %.sroa.56.0 = phi i32 [ %.sroa.56.0.copyload8, %bb.l ], [ %i.ci, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  %.sroa.04.0 = phi i32 [ %.sroa.04.0.copyload5, %bb.l ], [ %i.ch, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB10_3rgb3RgbmEETmB1G_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB29_s_0E0B2f_.exit.i ]
  store i32 %.sroa.04.0, ptr %2, align 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.69.0, ptr %.sroa.69.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.p

bb.p:                                             ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEENCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3v_s_0E0EB3B_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2o_3any5checkRB1u_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB3E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1922, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1924, !nonnull !4, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.c ] ; 3 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.not.not.i.not.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2R_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !alias.scope !1924
  %i.i = getelementptr i8, ptr %i.g, i64 3
  %.val.i.i = load i8, ptr %i.i, align 1, !noalias !1925, !noundef !4
  %i.j = icmp eq i8 %.val.i.i, 0
  br i1 %i.j, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2P_.exit, label %bb.d

bb.f:                                             ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2R_.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1922, !noundef !4 ; 2 uses
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2f_3any5checkRB1q_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB3w_.exit, label %bb.g

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQQNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2R_.exit.i: ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !alias.scope !1922
  br label %bb.f

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1927, !nonnull !4, !noundef !4
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.o = phi ptr [ %i.p, %bb.i ], [ %i.l, %bb.g ] ; 3 uses
  %.not.not.not.i7.not.not.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.not.not.i7.not.not.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2f_3any5checkRB1q_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB3w_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !alias.scope !1927
  %i.q = getelementptr i8, ptr %i.o, i64 3
  %.val.i8.i = load i8, ptr %i.q, align 1, !noalias !1928, !noundef !4
  %i.r = icmp eq i8 %.val.i8.i, 0
  br i1 %i.r, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2P_.exit, label %bb.h

bb.j:                                             ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2f_3any5checkRB1q_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB3w_.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2P_.exit, label %bb.k

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2f_3any5checkRB1q_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB3w_.exit: ; preds = %bb.h, %bb.f
  store i64 0, ptr %0, align 8
  br label %bb.j

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2P_.exit: ; preds = %bb.e, %bb.i, %bb.l, %bb.m, %bb.j
  %.sroa.0.0 = phi i1 [ %.not.not.not.i.not.not.not, %bb.l ], [ false, %bb.j ], [ true, %bb.i ], [ %.not.not.not.i.not.not.not, %bb.m ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1930, !nonnull !4, !noundef !4
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.w = phi ptr [ %i.x, %bb.m ], [ %i.t, %bb.k ] ; 3 uses
  %.not.not.not.i.not.not.not = icmp ne ptr %i.w, %i.v ; 3 uses
  br i1 %.not.not.not.i.not.not.not, label %bb.m, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2P_.exit

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !alias.scope !1930
  %i.y = getelementptr i8, ptr %i.w, i64 3
  %.val.i = load i8, ptr %i.y, align 1, !noalias !1929, !noundef !4
  %i.z = icmp eq i8 %.val.i, 0
  br i1 %i.z, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_3any5checkRBJ_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha19blurred_dirty_alpha00E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2P_.exit, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterhEB10_ENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !1935
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub nuw i64 %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %1, %bb.c ], [ %i.k, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.04.0.i
  %i.k = call noundef i32 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0INtB7_5FnMutTmRhEE8call_mutCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.sroa.02.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j) ; 2 uses
  %i.l = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.i
  br i1 %i.m, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.d

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.0.i = phi i32 [ %1, %bb.b ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, %bb.a
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit ], [ %1, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noundef !4 ; 5 uses
  %.not7 = icmp eq ptr %i.o, null
  br i1 %.not7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub nuw i64 %i.s, %i.t                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.0, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %wide.load = load <4 x i8>, ptr %i.w, align 1
  %wide.load19 = load <4 x i8>, ptr %i.x, align 1
  %i.y = zext <4 x i8> %wide.load to <4 x i32>
  %i.z = zext <4 x i8> %wide.load19 to <4 x i32>
  %i.aa = add <4 x i32> %vec.phi, %i.y            ; 2 uses
  %i.ab = add <4 x i32> %vec.phi18, %i.z          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1933

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa
  %i.ad = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
end_hunk_3
begin_hunk_4_@_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterhEB10_ENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif:bb.a
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !1940
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub nuw i64 %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %1, %bb.c ], [ %i.k, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.04.0.i
  %i.k = call noundef i32 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0INtB7_5FnMutTmRhEE8call_mutCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.sroa.02.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j) ; 2 uses
  %i.l = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.i
  br i1 %i.m, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.d

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.0.i = phi i32 [ %1, %bb.b ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, %bb.a
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit ], [ %1, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noundef !4 ; 5 uses
  %.not7 = icmp eq ptr %i.o, null
  br i1 %.not7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub nuw i64 %i.s, %i.t                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.0, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %wide.load = load <4 x i8>, ptr %i.w, align 1
  %wide.load19 = load <4 x i8>, ptr %i.x, align 1
  %i.y = zext <4 x i8> %wide.load to <4 x i32>
  %i.z = zext <4 x i8> %wide.load19 to <4 x i32>
  %i.aa = add <4 x i32> %vec.phi, %i.y            ; 2 uses
  %i.ab = add <4 x i32> %vec.phi18, %i.z          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1938

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa
  %i.ad = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.sroa.04.0.i8.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i9.ph = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i8 = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.04.0.i8.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i9 = phi i32 [ %i.ag, %scalar.ph ], [ %.sroa.02.0.i9.ph, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i8
  %.val.i = load i8, ptr %i.ae, align 1, !noundef !4
  %i.af = zext i8 %.val.i to i32
  %i.ag = add i32 %.sroa.02.0.i9, %i.af           ; 2 uses
  %i.ah = add nuw i64 %.sroa.04.0.i8, 1           ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.u
  br i1 %i.ai, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1939

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dchE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.f, %bb.e
  %.sroa.04.0 = phi i32 [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.f ], [ %i.ad, %middle.block ], [ %i.ag, %scalar.ph ]
  ret i32 %.sroa.04.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItertEB10_ENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !1945
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %1, %bb.c ], [ %i.l, %bb.d ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.l = call noundef i32 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0INtB7_5FnMutTmRtEE8call_mutCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.sroa.02.0.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.k) ; 2 uses
  %i.m = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.j
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.d

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.0.i = phi i32 [ %1, %bb.b ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, %bb.a
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit ], [ %1, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 5 uses
  %.not7 = icmp eq ptr %i.p, null
  br i1 %.not7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub nuw i64 %i.t, %i.u                   ; 2 uses
  %i.w = lshr exact i64 %i.v, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.x = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.0, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.x, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %wide.load = load <4 x i16>, ptr %i.y, align 2
  %wide.load19 = load <4 x i16>, ptr %i.z, align 2
  %i.aa = zext <4 x i16> %wide.load to <4 x i32>
  %i.ab = zext <4 x i16> %wide.load19 to <4 x i32>
  %i.ac = add <4 x i32> %vec.phi, %i.aa           ; 2 uses
  %i.ad = add <4 x i32> %vec.phi18, %i.ab         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1943

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ad, %i.ac
  %i.af = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.sroa.04.0.i8.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i9.ph = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i8 = phi i64 [ %i.aj, %scalar.ph ], [ %.sroa.04.0.i8.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i9 = phi i32 [ %i.ai, %scalar.ph ], [ %.sroa.02.0.i9.ph, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i8
  %.val.i = load i16, ptr %i.ag, align 2, !noundef !4
  %i.ah = zext i16 %.val.i to i32
  %i.ai = add i32 %.sroa.02.0.i9, %i.ah           ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.04.0.i8, 1       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.w
  br i1 %i.ak, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1944

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtCsdEEMmLUVy6d_5rav1e7predict4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.f, %bb.e
  %.sroa.04.0 = phi i32 [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.f ], [ %i.af, %middle.block ], [ %i.ai, %scalar.ph ]
  ret i32 %.sroa.04.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4ItertEB10_ENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !1950
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %1, %bb.c ], [ %i.l, %bb.d ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.l = call noundef i32 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0INtB7_5FnMutTmRtEE8call_mutCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.sroa.02.0.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.k) ; 2 uses
  %i.m = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.j
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.d

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.0.i = phi i32 [ %1, %bb.b ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, %bb.a
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmQNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit ], [ %1, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 5 uses
  %.not7 = icmp eq ptr %i.p, null
  br i1 %.not7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub nuw i64 %i.t, %i.u                   ; 2 uses
  %i.w = lshr exact i64 %i.v, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.x = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.0, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.x, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %wide.load = load <4 x i16>, ptr %i.y, align 2
  %wide.load19 = load <4 x i16>, ptr %i.z, align 2
  %i.aa = zext <4 x i16> %wide.load to <4 x i32>
  %i.ab = zext <4 x i16> %wide.load19 to <4 x i32>
  %i.ac = add <4 x i32> %vec.phi, %i.aa           ; 2 uses
  %i.ad = add <4 x i32> %vec.phi18, %i.ab         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1948

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ad, %i.ac
  %i.af = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.sroa.04.0.i8.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i9.ph = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i8 = phi i64 [ %i.aj, %scalar.ph ], [ %.sroa.04.0.i8.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i9 = phi i32 [ %i.ai, %scalar.ph ], [ %.sroa.02.0.i9.ph, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i8
  %.val.i = load i16, ptr %i.ag, align 2, !noundef !4
  %i.ah = zext i16 %.val.i to i32
  %i.ai = add i32 %.sroa.02.0.i9, %i.ah           ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.04.0.i8, 1       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.w
  br i1 %i.ak, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1949

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtNtCs65NEs4fedBE_14av_scenechange7analyze5intra4rust7pred_dctE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.f, %bb.e
  %.sroa.04.0 = phi i32 [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.f ], [ %i.af, %middle.block ], [ %i.ai, %scalar.ph ]
  ret i32 %.sroa.04.0
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvMs2_NtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_stateINtB5_12TileStateMuthE15left_block_infoCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(776) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 1
  %.not = icmp eq i64 %i.a, 0
  %i.b = select i1 %.not, i64 0, i64 %3           ; 2 uses
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %2, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 %4, i64 0
  %.sroa.05.0 = add i64 %i.f, %2                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  %i.i = mul i64 %i.h, %.sroa.05.0                ; 3 uses
  %i.j = add i64 %.sroa.05.0, 1
  %i.k = mul i64 %i.h, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.p = icmp ult i64 %i.k, %i.i
  %.not13 = icmp ugt i64 %i.k, %i.o
  %or.cond = or i1 %i.p, %.not13
  br i1 %or.cond, label %bb.d, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0.insert.insert = phi i32 [ %.sroa.09.0.copyload, %bb.f ], [ 255, %bb.a ]
  ret i32 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.k, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = xor i64 %i.b, -1
  %i.r = add i64 %1, %i.q                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.h
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %.sroa.09.0.copyload = load i32, ptr %i.u, align 1
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvMs2_NtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_stateINtB5_12TileStateMuthE16above_block_infoCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(776) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 1
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 %3, i64 0
  %spec.select = add i64 %i.c, %1                 ; 3 uses
  %i.d = and i64 %2, 1
  %.not = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not, i64 0, i64 %4           ; 2 uses
  %i.f = icmp eq i64 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0 = sub i64 %2, %i.e                  ; 2 uses
  %i.g = add i64 %.sroa.06.0, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 4 uses
  %i.j = mul i64 %i.i, %i.g                       ; 3 uses
  %i.k = mul i64 %i.i, %.sroa.06.0                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.p = icmp ult i64 %i.k, %i.j
  %.not13 = icmp ugt i64 %i.k, %i.o
  %or.cond = or i1 %i.p, %.not13
  br i1 %or.cond, label %bb.d, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0.insert.insert = phi i32 [ %.sroa.010.0.copyload, %bb.f ], [ 255, %bb.a ]
  ret i32 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %i.k, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %spec.select, %i.i
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %spec.select
  %.sroa.010.0.copyload = load i32, ptr %i.s, align 1
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %spec.select, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_stateINtB5_12TileStateMuthE3newCs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([776 x i8]) align 8 captures(none) dereferenceable(776) %0, ptr noalias nofree noundef align 8 dereferenceable(12536) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 %7, i64 noundef range(i64 0, 288230376151711744) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [6 x i8], align 1                 ; 5 uses
  %i.h = alloca [6 x i8], align 1                 ; 5 uses
  %i.i = alloca [6 x i8], align 1                 ; 5 uses
  %.sroa.513.i = alloca [6 x i8], align 8         ; 4 uses
  %.sroa.5.i = alloca [6 x i8], align 8           ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.549 = alloca [6 x i8], align 8           ; 4 uses
  %.sroa.952 = alloca [6 x i8], align 8           ; 4 uses
  %.sroa.13 = alloca [6 x i8], align 8            ; 4 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [16 x i8], align 16               ; 5 uses
  store i64 %2, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store i64 %3, ptr %i.s, align 8
  store i64 %4, ptr %i.q, align 8
  store i64 %5, ptr %i.p, align 8
  store i64 %6, ptr %i.o, align 8
  %i.t = and i64 %4, 63                           ; 5 uses
  %i.u = shl nuw i64 1, %i.t                      ; 2 uses
  %i.v = add i64 %i.u, -1                         ; 2 uses
  %i.w = add i64 %i.v, %5                         ; 2 uses
  %i.x = sub i64 0, %i.u                          ; 2 uses
  %i.y = and i64 %i.w, %i.x                       ; 8 uses
  %i.z = add i64 %i.v, %6                         ; 2 uses
  %i.aa = and i64 %i.z, %i.x                      ; 8 uses
  %i.ab = shl i64 %2, %i.t                        ; 12 uses
  %i.ac = shl i64 %3, %i.t                        ; 10 uses
  %i.ad = lshr i64 %5, 2                          ; 2 uses
  %i.ae = lshr i64 %6, 2                          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 25 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !2022, !noalias !2023, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !2024, !noalias !2025, !noundef !4
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !2024, !noalias !2025
  %i.ap = icmp eq i64 %i.ao, 0
  %or.cond.i10 = select i1 %i.am, i1 true, i1 %i.ap, !prof !11
  br i1 %or.cond.i10, label %_RNvMss_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_11PlaneRegionhE10from_sliceCs2mu2Cb9JdUH_5ravif.exit15, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !2024, !noalias !2025, !noundef !4 ; 3 uses
  %i.as = sub i64 0, %i.ar
  %.not.i11 = icmp slt i64 %i.ab, %i.as
  br i1 %.not.i11, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !2026
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2024, !noalias !2025, !noundef !4 ; 2 uses
  %i.av = sub i64 0, %i.au
  %.not5.i12 = icmp slt i64 %i.ac, %i.av
  br i1 %.not5.i12, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !2026
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aw = add i64 %i.y, %i.ab
  %i.ax = add i64 %i.aw, %i.ar
  %i.ay = load i64, ptr %i.aj, align 8, !alias.scope !2024, !noalias !2025, !noundef !4 ; 2 uses
  %.not6.i13 = icmp sgt i64 %i.ax, %i.ay
  br i1 %.not6.i13, label %bb.g, label %bb.h, !prof !8
end_hunk_4
