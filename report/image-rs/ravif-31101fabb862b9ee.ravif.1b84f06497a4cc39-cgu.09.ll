Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelECs2mu2Cb9JdUH_5ravif:switch.lookup
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
  %i.as = add i64 %.sroa.8.015.ph, 1
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
  %i.bk = add i64 %.sroa.8.015, 2                 ; 2 uses
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
  %2 = shl i64 %.sroa.52.0.copyload, 2            ; 2 uses
  %3 = add i64 %i.b, %.sroa.65.0.copyload6        ; 2 uses
  %i.c = add i64 %2, %.sroa.0.0.copyload7
  %i.d = sub i64 %i.c, %3
  %diff.check = icmp ugt i64 %i.d, -16
  %i.e = add i64 %2, %.sroa.41.0.copyload8
  %i.f = sub i64 %i.e, %3
  %diff.check9 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.g = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.i
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !noalias !1232
  %wide.load10 = load <4 x i32>, ptr %i.k, align 4, !noalias !1232
  %i.l = zext <4 x i32> %wide.load to <4 x i64>
  %i.m = zext <4 x i32> %wide.load10 to <4 x i64>
  %i.n = mul nuw <4 x i64> %i.m, %i.l
  %i.o = add nuw <4 x i64> %i.n, splat (i64 8192)
  %i.p = lshr <4 x i64> %i.o, splat (i64 14)      ; 2 uses
  %i.q = icmp eq <4 x i64> %i.p, zeroinitializer
  %i.r = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.p, <4 x i64> splat (i64 268435455))
  %i.s = trunc nuw nsw <4 x i64> %i.r to <4 x i32>
  %i.t = select <4 x i1> %i.q, <4 x i32> splat (i32 1), <4 x i32> %i.s
  %i.u = getelementptr [4 x i8], ptr %i.h, i64 %index
  store <4 x i32> %i.t, ptr %i.u, align 4, !noalias !1233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.g, %middle.block ]
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.w = phi i64 [ %i.ak, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.015.i.i = phi i64 [ %i.x, %scalar.ph ], [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = add nuw i64 %.sroa.0.015.i.i, 1          ; 2 uses
  %i.y = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.y
  %.val13.i.i = load i32, ptr %i.z, align 4, !noalias !1232, !noundef !4
  %.val14.i.i = load i32, ptr %i.aa, align 4, !noalias !1232, !noundef !4
  %i.ab = zext i32 %.val13.i.i to i64
  %i.ac = zext i32 %.val14.i.i to i64
  %i.ad = mul nuw i64 %i.ac, %i.ab
  %i.ae = add nuw i64 %i.ad, 8192
  %i.af = lshr i64 %i.ae, 14                      ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1125899906318337) %i.af, i64 268435455)
  %i.ah = trunc nuw nsw i64 %..i.i.i.i.i to i32
  %i.ai = select i1 %i.ag, i32 1, i32 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.w
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !1233
  %i.ak = add i64 %i.w, 1                         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.x, %i.a
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1231

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.g, %middle.block ], [ %i.ak, %scalar.ph ]
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
  %2 = shl i64 %.sroa.52.0.copyload, 2            ; 2 uses
  %3 = add i64 %i.b, %.sroa.65.0.copyload6        ; 2 uses
  %i.c = add i64 %2, %.sroa.0.0.copyload7
  %i.d = sub i64 %i.c, %3
  %diff.check = icmp ugt i64 %i.d, -16
  %i.e = add i64 %2, %.sroa.41.0.copyload8
  %i.f = sub i64 %i.e, %3
  %diff.check9 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.g = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.i
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !noalias !1248
  %wide.load10 = load <4 x i32>, ptr %i.k, align 4, !noalias !1248
  %i.l = zext <4 x i32> %wide.load to <4 x i64>
  %i.m = zext <4 x i32> %wide.load10 to <4 x i64>
  %i.n = mul nuw <4 x i64> %i.m, %i.l
  %i.o = add nuw <4 x i64> %i.n, splat (i64 8192)
  %i.p = lshr <4 x i64> %i.o, splat (i64 14)      ; 2 uses
  %i.q = icmp eq <4 x i64> %i.p, zeroinitializer
  %i.r = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.p, <4 x i64> splat (i64 268435455))
  %i.s = trunc nuw nsw <4 x i64> %i.r to <4 x i32>
  %i.t = select <4 x i1> %i.q, <4 x i32> splat (i32 1), <4 x i32> %i.s
  %i.u = getelementptr [4 x i8], ptr %i.h, i64 %index
  store <4 x i32> %i.t, ptr %i.u, align 4, !noalias !1249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.g, %middle.block ]
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.w = phi i64 [ %i.ak, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.015.i.i = phi i64 [ %i.x, %scalar.ph ], [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = add nuw i64 %.sroa.0.015.i.i, 1          ; 2 uses
  %i.y = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.y
  %.val13.i.i = load i32, ptr %i.z, align 4, !noalias !1248, !noundef !4
  %.val14.i.i = load i32, ptr %i.aa, align 4, !noalias !1248, !noundef !4
  %i.ab = zext i32 %.val13.i.i to i64
  %i.ac = zext i32 %.val14.i.i to i64
  %i.ad = mul nuw i64 %i.ac, %i.ab
  %i.ae = add nuw i64 %i.ad, 8192
  %i.af = lshr i64 %i.ae, 14                      ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1125899906318337) %i.af, i64 268435455)
  %i.ah = trunc nuw nsw i64 %..i.i.i.i.i to i32
  %i.ai = select i1 %i.ag, i32 1, i32 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.w
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !1249
  %i.ak = add i64 %i.w, 1                         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.x, %i.a
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1247

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.g, %middle.block ], [ %i.ak, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1248
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i16 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItertEIB1e_lEENCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB1V_19QuantizationContext8quantizelE0ENtNtNtBa_6traits8iterator8Iterator4foldtNvYtNtNtBc_3cmp3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i16 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !21, !noundef !4
  %.val = load i32, ptr %i.b, align 4             ; 3 uses
  %i.c = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.f
  %.val13.i.i = load i16, ptr %i.g, align 2, !noalias !1255, !noundef !4
  %.val14.i.i = load i32, ptr %i.h, align 4, !noalias !1255, !noundef !4
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %.val14.i.i, i1 false)
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
end_hunk_0
