Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizerHelper?download=true
inline.NumInlined: 11701
inline.NumDeleted: 2046
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm15LegalizerHelper11lowerSITOFPERNS_12MachineInstrE:bb.a
  %i.bf = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.011.0.copyload = load i64, ptr %13, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 %.sroa.011.0.copyload, ptr %10, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %.sroa.4143.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i32 %.sroa.013.0.copyload, ptr %11, align 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %.sroa.4139.0..sroa_idx, align 8, !tbaa !261
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.bd, ptr %i.bg, align 8
  %.sroa.0134.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.be, ptr %.sroa.0134.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 1, ptr %.sroa.4135.0..sroa_idx, align 8, !tbaa !261
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call { ptr, ptr } %i.bj(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef 157, ptr nonnull %10, i64 1, ptr nonnull %11, i64 2, i64 0) #19, !inline_history !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 3 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %13, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 %.sroa.09.0.copyload, ptr %8, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 %.sroa.013.0.copyload, ptr %9, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %.sroa.4119.0..sroa_idx, align 8, !tbaa !261
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.bl, ptr %i.bo, align 8
  %.sroa.0114.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.bm, ptr %.sroa.0114.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 1, ptr %.sroa.4115.0..sroa_idx, align 8, !tbaa !261
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !182
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call { ptr, ptr } %i.br(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, i32 noundef 55, ptr nonnull %8, i64 1, ptr nonnull %9, i64 2, i64 0) #19, !inline_history !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0
  %i.bu = extractvalue { ptr, ptr } %i.bs, 1
  %i.bv = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %13, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %.sroa.07.0.copyload, ptr %6, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.bt, ptr %7, align 8
  %.sroa.098.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bu, ptr %.sroa.098.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !261
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.bl, ptr %i.bw, align 8
  %.sroa.095.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.bm, ptr %.sroa.095.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 1, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !261
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !182
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call { ptr, ptr } %i.bz(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, i32 noundef 66, ptr nonnull %6, i64 1, ptr nonnull %7, i64 2, i64 0) #19, !inline_history !1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cb = extractvalue { ptr, ptr } %i.ca, 0
  %i.cc = extractvalue { ptr, ptr } %i.ca, 1
  %i.cd = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %.sroa.0.0.i48, ptr %4, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.cb, ptr %5, align 8
  %.sroa.084.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cc, ptr %.sroa.084.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !261
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !182
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call { ptr, ptr } %i.cg(ptr noundef nonnull align 8 dereferenceable(96) %i.cd, i32 noundef 217, ptr nonnull %4, i64 1, ptr nonnull %5, i64 1, i64 0) #19, !inline_history !33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1      ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 %.sroa.0.0.i48, ptr %2, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %.sroa.480.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ci, ptr %3, align 8
  %.sroa.076.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cj, ptr %.sroa.076.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !261
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !182
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call { ptr, ptr } %i.cn(ptr noundef nonnull align 8 dereferenceable(96) %i.ck, i32 noundef 211, ptr nonnull %2, i64 1, ptr nonnull %3, i64 1, i64 0) #19, !inline_history !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cp = extractvalue { ptr, ptr } %i.co, 0
  %i.cq = extractvalue { ptr, ptr } %i.co, 1
  %i.cr = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %.sroa.04.0.copyload = load i64, ptr %14, align 8, !tbaa !226
  store i64 %.sroa.04.0.copyload, ptr %22, align 8, !tbaa !226
  %i.cs = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.cs, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store ptr %i.bl, ptr %23, align 8, !tbaa !262
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.bm, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !264
  %i.ct = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 1, ptr %i.ct, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %.sroa.03.0.copyload = load i64, ptr %13, align 8, !tbaa !226
  store i64 %.sroa.03.0.copyload, ptr %25, align 8, !tbaa !226
  %i.cu = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !243
  %i.cv = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.cr, ptr noundef nonnull align 8 dereferenceable(20) %25, i64 noundef 0) #19 ; 2 uses
  %i.cw = extractvalue { ptr, ptr } %i.cv, 0
  %i.cx = extractvalue { ptr, ptr } %i.cv, 1
  store ptr %i.cw, ptr %24, align 8, !tbaa !262
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !264
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 1, ptr %i.cy, align 8, !tbaa !246
  %i.cz = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildICmpENS_7CmpInst9PredicateERKNS_5DstOpERKNS_5SrcOpES8_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.cr, i32 noundef 33, ptr noundef nonnull align 8 dereferenceable(20) %22, ptr noundef nonnull align 8 dereferenceable(20) %23, ptr noundef nonnull align 8 dereferenceable(20) %24, i64 0) #19 ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cz, 0
  %i.db = extractvalue { ptr, ptr } %i.cz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.dc = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.02.0.copyload, ptr %26, align 8, !tbaa !238
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 1, ptr %i.dd, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store ptr %i.da, ptr %27, align 8, !tbaa !262
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.db, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !264
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 1, ptr %i.de, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store ptr %i.cp, ptr %28, align 8, !tbaa !262
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.cq, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !264
  %i.df = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 1, ptr %i.df, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  store ptr %i.ci, ptr %29, align 8, !tbaa !262
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.cj, ptr %.sroa.593.0..sroa_idx, align 8, !tbaa !264
  %i.dg = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 1, ptr %i.dg, align 8, !tbaa !246
  %i.dh = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildSelectERKNS_5DstOpERKNS_5SrcOpES6_S6_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.dc, ptr noundef nonnull align 8 dereferenceable(20) %26, ptr noundef nonnull align 8 dereferenceable(20) %27, ptr noundef nonnull align 8 dereferenceable(20) %28, ptr noundef nonnull align 8 dereferenceable(20) %29, i64 0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.di = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.e ], [ 2, %bb.f ], [ 1, %bb.h ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper11lowerFPTOUIERNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %3 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %6 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %7 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %8 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %9 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %10 = alloca %"class.std::tuple.420", align 8   ; 11 uses
  %11 = alloca %"class.llvm::LLT", align 8        ; 5 uses
  %12 = alloca %"class.llvm::LLT", align 8        ; 5 uses
  %13 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %14 = alloca %"class.llvm::APFloat", align 8    ; 9 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %16 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %17 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %20 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %21 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %22 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %23 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %24 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZNK4llvm12MachineInstr16getFirst2RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.420") align 8 %10, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 1152921521786716160, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i64 1152921513196781568, ptr %12, align 8
  %i.d = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %12)
  br i1 %i.e, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %12)
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %11)
  br i1 %i.g, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.h = load i64, ptr %i.b, align 8              ; 10 uses
  %.mask.i.i = and i64 %i.h, -1152921504606846976
  %i.i = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i64 %i.h, 60
  %.off.i.i = add nsw i64 %i.j, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.e, %bb.f
  %i.k = icmp slt i64 %i.h, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.k, %i.i
  %i.l = lshr i64 %i.h, 44
  %i.m = and i64 %i.l, 65535
  %i.n = lshr i64 %i.h, 28
  %i.o = and i64 %i.n, 4294967295
  %i.p = select i1 %spec.select.i.i.i, i64 %i.m, i64 %i.o
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.f
  %i.q = lshr i64 %i.h, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.q, 65535
  %i.r = icmp slt i64 %i.h, -8070450532247928832
  %i.s = lshr i64 %i.h, 44
  %i.t = and i64 %i.s, 65535
  %i.u = lshr i64 %i.h, 28
  %.0.in.i3.i = select i1 %i.r, i64 %i.t, i64 %i.u
  %i.v = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.w = and i64 %i.v, 4294967295
  %i.x = trunc i64 %i.h to i1
  br i1 %i.x, label %bb.g, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i145 = phi i64 [ %i.p, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.w, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ] ; 3 uses
  %i.y = trunc nuw i64 %.sroa.05.0.i145 to i32    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 %i.y, ptr %i.z, align 8, !tbaa !250, !alias.scope !741
  %i.aa = icmp samesign ult i64 %.sroa.05.0.i145, 65
  br i1 %i.aa, label %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i, label %_ZN4llvm5APIntC2Ejmbb.exit.i.i

_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i:            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ab = add nuw nsw i64 %.sroa.05.0.i145, 63
  %i.ac = and i64 %i.ab, 63
  %i.ad = shl nuw i64 1, %i.ac
  br label %bb.h

_ZN4llvm5APIntC2Ejmbb.exit.i.i:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %13, i64 noundef 0, i1 noundef zeroext false) #19
  %.pr.i.i = load i32, ptr %i.z, align 8, !tbaa !250, !alias.scope !741
  %i.ae = add i32 %i.y, -1                        ; 2 uses
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag                    ; 2 uses
  %i.ai = icmp ult i32 %.pr.i.i, 65
  br i1 %i.ai, label %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i, label %bb.i

_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i:        ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %.pre.i.i = load i64, ptr %13, align 8, !tbaa !226, !alias.scope !741
  %i.aj = or i64 %.pre.i.i, %i.ah
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i
  %i.ak = phi i64 [ %i.ad, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i ], [ %i.aj, %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i ]
  store i64 %i.ak, ptr %13, align 8, !tbaa !226, !alias.scope !741
  br label %_ZN4llvm5APInt11getSignMaskEj.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %i.al = load ptr, ptr %13, align 8, !tbaa !226, !alias.scope !741
  %i.am = lshr i32 %i.ae, 6
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !301
  %i.aq = or i64 %i.ap, %i.ah
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !301
  br label %_ZN4llvm5APInt11getSignMaskEj.exit

_ZN4llvm5APInt11getSignMaskEj.exit:               ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ar = load i64, ptr %10, align 8              ; 19 uses
  %.mask.i.i42 = and i64 %i.ar, -1152921504606846976
  %i.as = icmp eq i64 %.mask.i.i42, 4611686018427387904 ; 4 uses
  br i1 %i.as, label %_ZNK4llvm8TypeSizecvmEv.exit54, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5APInt11getSignMaskEj.exit
  %i.at = lshr i64 %i.ar, 60
  %.off.i.i43 = add nsw i64 %i.at, -1
  %switch.i.i44 = icmp ult i64 %.off.i.i43, 3
  br i1 %switch.i.i44, label %_ZNK4llvm8TypeSizecvmEv.exit54, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit53

_ZNK4llvm3LLT13getSizeInBitsEv.exit53:            ; preds = %bb.j
  %i.au = trunc i64 %i.ar to i1
  br i1 %i.au, label %bb.k, label %_ZNK4llvm8TypeSizecvmEv.exit54.thread

_ZNK4llvm8TypeSizecvmEv.exit54.thread:            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit53
  %i.av = icmp slt i64 %i.ar, -8070450532247928832
  %i.aw = lshr i64 %i.ar, 44
  %i.ax = and i64 %i.aw, 65535
  %i.ay = lshr i64 %i.ar, 28
  %.0.in.i3.i46 = select i1 %i.av, i64 %i.ax, i64 %i.ay
  %i.az = lshr i64 %i.ar, 4
  %.sroa.0.0.insert.ext.i.i.i45 = and i64 %i.az, 65535
  %i.ba = mul nuw nsw i64 %.0.in.i3.i46, %.sroa.0.0.insert.ext.i.i.i45
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = icmp eq i64 %i.bb, 32
  %spec.select159 = select i1 %i.bc, ptr @_ZN4llvm11APFloatBase13semIEEEsingleE, ptr @_ZN4llvm11APFloatBase13semIEEEdoubleE
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  br label %bb.l

bb.k:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit53
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit54:                   ; preds = %bb.j, %_ZN4llvm5APInt11getSignMaskEj.exit
  %i.bd = icmp slt i64 %i.ar, -8070450532247928832
  %spec.select.i.i.i52 = or i1 %i.bd, %i.as
  %i.be = lshr i64 %i.ar, 44
  %i.bf = and i64 %i.be, 65535
  %i.bg = lshr i64 %i.ar, 28
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = select i1 %spec.select.i.i.i52, i64 %i.bf, i64 %i.bh
  %i.bj = icmp eq i64 %i.bi, 32
  %spec.select = select i1 %i.bj, ptr @_ZN4llvm11APFloatBase13semIEEEsingleE, ptr @_ZN4llvm11APFloatBase13semIEEEdoubleE ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  br i1 %i.as, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit66.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit54.thread, %_ZNK4llvm8TypeSizecvmEv.exit54
  %spec.select162 = phi ptr [ %spec.select159, %_ZNK4llvm8TypeSizecvmEv.exit54.thread ], [ %spec.select, %_ZNK4llvm8TypeSizecvmEv.exit54 ] ; 2 uses
  %i.bk = lshr i64 %i.ar, 60
  %.off.i.i56 = add nsw i64 %i.bk, -1
  %switch.i.i57 = icmp ult i64 %.off.i.i56, 3
  br i1 %switch.i.i57, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit66.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit66

_ZNK4llvm3LLT13getSizeInBitsEv.exit66.thread:     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit54, %bb.l
  %spec.select161 = phi ptr [ %spec.select, %_ZNK4llvm8TypeSizecvmEv.exit54 ], [ %spec.select162, %bb.l ]
  %i.bl = icmp slt i64 %i.ar, -8070450532247928832
  %spec.select.i.i.i65 = or i1 %i.bl, %i.as
  %i.bm = lshr i64 %i.ar, 44
  %i.bn = and i64 %i.bm, 65535
  %i.bo = lshr i64 %i.ar, 28
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = select i1 %spec.select.i.i.i65, i64 %i.bn, i64 %i.bp
  br label %_ZNK4llvm8TypeSizecvmEv.exit67

_ZNK4llvm3LLT13getSizeInBitsEv.exit66:            ; preds = %bb.l
  %i.br = lshr i64 %i.ar, 4
  %.sroa.0.0.insert.ext.i.i.i58 = and i64 %i.br, 65535
  %i.bs = icmp slt i64 %i.ar, -8070450532247928832
  %i.bt = lshr i64 %i.ar, 44
  %i.bu = and i64 %i.bt, 65535
  %i.bv = lshr i64 %i.ar, 28
  %.0.in.i3.i59 = select i1 %i.bs, i64 %i.bu, i64 %i.bv
  %i.bw = mul nuw nsw i64 %.0.in.i3.i59, %.sroa.0.0.insert.ext.i.i.i58
  %i.bx = and i64 %i.bw, 4294967295
  %i.by = trunc i64 %i.ar to i1
  br i1 %i.by, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit67

bb.m:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit66
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit67:                   ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit66.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit66
  %spec.select160 = phi ptr [ %spec.select161, %_ZNK4llvm3LLT13getSizeInBitsEv.exit66.thread ], [ %spec.select162, %_ZNK4llvm3LLT13getSizeInBitsEv.exit66 ] ; 3 uses
  %.sroa.05.0.i61155 = phi i64 [ %i.bq, %_ZNK4llvm3LLT13getSizeInBitsEv.exit66.thread ], [ %i.bx, %_ZNK4llvm3LLT13getSizeInBitsEv.exit66 ] ; 2 uses
  %i.bz = trunc nuw i64 %.sroa.05.0.i61155 to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !250, !alias.scope !742
  %i.cb = icmp samesign ult i64 %.sroa.05.0.i61155, 65
  br i1 %i.cb, label %bb.n, label %25

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit67
  store i64 0, ptr %15, align 8, !tbaa !226, !alias.scope !742
  br label %_ZN4llvm5APInt7getZeroEj.exit

25:                                               ; preds = %_ZNK4llvm8TypeSizecvmEv.exit67
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %15, i64 noundef 0, i1 noundef zeroext false) #19
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.n, %25
  %.not.i.i = icmp eq ptr %spec.select160, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.o, label %26

26:                                               ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(29) %spec.select160, ptr noundef nonnull align 8 dereferenceable(12) %15) #19
  br label %_ZN4llvm5APInt7getZeroEj.exit.a

bb.o:                                             ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(29) %spec.select160, ptr noundef nonnull align 8 dereferenceable(12) %15) #19
  br label %_ZN4llvm5APInt7getZeroEj.exit.a

_ZN4llvm5APInt7getZeroEj.exit.a:                  ; preds = %26, %bb.o
  %i.cc = load i32, ptr %i.ca, align 8, !tbaa !250
  %i.cd = icmp ugt i32 %i.cc, 64
  br i1 %i.cd, label %bb.p, label %_ZN4llvm5APIntD2Ev.exit

bb.p:                                             ; preds = %_ZN4llvm5APInt7getZeroEj.exit.a
  %i.ce = load ptr, ptr %15, align 8, !tbaa !226  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN4llvm5APIntD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #21
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APInt7getZeroEj.exit.a, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.cg = load ptr, ptr %14, align 8, !tbaa !226
  %.not.i = icmp eq ptr %i.cg, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ch = call noundef i32 @_ZN4llvm6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(12) %13, i1 noundef zeroext false, i8 noundef signext 1) #19 ; 0 uses
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ci = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(12) %13, i1 noundef zeroext false, i8 noundef signext 1) #19 ; 0 uses
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit: ; preds = %bb.r, %bb.s
  %i.cj = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.b, align 8, !tbaa !226
  %.sroa.012.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 %.sroa.013.0.copyload, ptr %8, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %.sroa.4129.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 %.sroa.012.0.copyload, ptr %9, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %.sroa.4125.0..sroa_idx, align 8, !tbaa !261
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !182
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call { ptr, ptr } %i.cm(ptr noundef nonnull align 8 dereferenceable(96) %i.cj, i32 noundef 214, ptr nonnull %8, i64 1, ptr nonnull %9, i64 1, i64 0) #19, !inline_history !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.co = extractvalue { ptr, ptr } %i.cn, 0
  %i.cp = extractvalue { ptr, ptr } %i.cn, 1
  %i.cq = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %.sroa.011.0.copyload = load i64, ptr %10, align 8, !tbaa !226
  store i64 %.sroa.011.0.copyload, ptr %16, align 8, !tbaa !226
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.cr, align 8, !tbaa !243
  %i.cs = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildFConstantERKNS_5DstOpERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(96) %i.cq, ptr noundef nonnull align 8 dereferenceable(20) %16, ptr noundef nonnull align 8 dereferenceable(24) %14) #19 ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0      ; 2 uses
  %i.cu = extractvalue { ptr, ptr } %i.cs, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.cv = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.010.0.copyload = load i64, ptr %10, align 8, !tbaa !226
  %.sroa.09.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %.sroa.010.0.copyload, ptr %6, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.4115.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 %.sroa.09.0.copyload, ptr %7, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %.sroa.4111.0..sroa_idx, align 8, !tbaa !261
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ct, ptr %i.cw, align 8
  %.sroa.0106.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.cu, ptr %.sroa.0106.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 1, ptr %.sroa.4107.0..sroa_idx, align 8, !tbaa !261
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !182
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call { ptr, ptr } %i.cz(ptr noundef nonnull align 8 dereferenceable(96) %i.cv, i32 noundef 194, ptr nonnull %6, i64 1, ptr nonnull %7, i64 2, i64 0) #19, !inline_history !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.db = extractvalue { ptr, ptr } %i.da, 0
  %i.dc = extractvalue { ptr, ptr } %i.da, 1
  %i.dd = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.08.0.copyload = load i64, ptr %i.b, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %.sroa.08.0.copyload, ptr %4, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.db, ptr %5, align 8
  %.sroa.090.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.dc, ptr %.sroa.090.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %.sroa.491.0..sroa_idx, align 8, !tbaa !261
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !182
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call { ptr, ptr } %i.dg(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, i32 noundef 214, ptr nonnull %4, i64 1, ptr nonnull %5, i64 1, i64 0) #19, !inline_history !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.di = extractvalue { ptr, ptr } %i.dh, 0
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1
  %i.dk = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %.sroa.07.0.copyload = load i64, ptr %i.b, align 8, !tbaa !226
  store i64 %.sroa.07.0.copyload, ptr %17, align 8, !tbaa !226
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.dl, align 8, !tbaa !243
  %i.dm = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(96) %i.dk, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(12) %13) #19 ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %i.dm, 0
  %i.do = extractvalue { ptr, ptr } %i.dm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.dp = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.b, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 %.sroa.06.0.copyload, ptr %2, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.di, ptr %3, align 8
  %.sroa.079.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dj, ptr %.sroa.079.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %.sroa.480.0..sroa_idx, align 8, !tbaa !261
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.dn, ptr %i.dq, align 8
  %.sroa.077.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.do, ptr %.sroa.077.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 1, ptr %.sroa.478.0..sroa_idx, align 8, !tbaa !261
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !182
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call { ptr, ptr } %i.dt(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef 66, ptr nonnull %2, i64 1, ptr nonnull %3, i64 2, i64 0) #19, !inline_history !1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.dv = extractvalue { ptr, ptr } %i.du, 0
  %i.dw = extractvalue { ptr, ptr } %i.du, 1
  %i.dx = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store i64 1152921504875282432, ptr %18, align 8, !tbaa !226
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.dy, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %.sroa.03.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238
  store i32 %.sroa.03.0.copyload, ptr %19, align 8, !tbaa !238
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.dz, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %i.ct, ptr %20, align 8, !tbaa !262
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.cu, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !264
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 1, ptr %i.ea, align 8, !tbaa !246
  %i.eb = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildFCmpENS_7CmpInst9PredicateERKNS_5DstOpERKNS_5SrcOpES8_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.dx, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(20) %18, ptr noundef nonnull align 8 dereferenceable(20) %19, ptr noundef nonnull align 8 dereferenceable(20) %20, i64 0) #19 ; 2 uses
  %i.ec = extractvalue { ptr, ptr } %i.eb, 0
  %i.ed = extractvalue { ptr, ptr } %i.eb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.ee = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.02.0.copyload, ptr %21, align 8, !tbaa !238
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 1, ptr %i.ef, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store ptr %i.ec, ptr %22, align 8, !tbaa !262
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.ed, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !264
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 1, ptr %i.eg, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store ptr %i.co, ptr %23, align 8, !tbaa !262
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.cp, ptr %.sroa.4132.0..sroa_idx, align 8, !tbaa !264
  %i.eh = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 1, ptr %i.eh, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store ptr %i.dv, ptr %24, align 8, !tbaa !262
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.dw, ptr %.sroa.487.0..sroa_idx, align 8, !tbaa !264
  %i.ei = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 1, ptr %i.ei, align 8, !tbaa !246
  %i.ej = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildSelectERKNS_5DstOpERKNS_5SrcOpES6_S6_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.ee, ptr noundef nonnull align 8 dereferenceable(20) %21, ptr noundef nonnull align 8 dereferenceable(20) %22, ptr noundef nonnull align 8 dereferenceable(20) %23, ptr noundef nonnull align 8 dereferenceable(20) %24, i64 0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.ek = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.el = load i32, ptr %i.z, align 8, !tbaa !250
  %i.em = icmp ugt i32 %i.el, 64
  br i1 %i.em, label %bb.t, label %_ZN4llvm5APIntD2Ev.exit68

bb.t:                                             ; preds = %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit
  %i.en = load ptr, ptr %13, align 8, !tbaa !226  ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_ZN4llvm5APIntD2Ev.exit68, label %bb.u
end_hunk_0
begin_hunk_1_@_ZN4llvm15SmallVectorImplINS_3ISD10ArgFlagsTyEEaSEOS3_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !228    ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !307

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !354
  br label %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit

_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !227
  store i32 0, ptr %i.m, align 8, !tbaa !227
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !239
  %i.v = icmp ult i32 %i.u, %i.n
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !227
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w, i64 noundef %i.o, i64 noundef 16) #19
  br label %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8, !tbaa !228    ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !308

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit34

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !354
  br label %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit34

_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !227
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.z
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit34
  %i.aa = load ptr, ptr %1, align 8, !tbaa !228
  %.idx39 = shl nuw nsw i64 %.026, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx39
  %i.ac = load ptr, ptr %0, align 8, !tbaa !228
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.026
  %i.ae = sub nsw i64 %i.z, %.026
  %gepdiff = shl nsw i64 %i.ae, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 4 %i.ab, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !227
  store i32 0, ptr %i.m, align 8, !tbaa !227
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN4llvm3ISD10ArgFlagsTyES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplINS_3ISD10ArgFlagsTyEE12assignRemoteEOS3_.exit
  ret ptr %0
}

declare noundef zeroext i16 @_ZN4llvm5RTLIB22getOutlineAtomicHelperERA5_A4_KNS0_7LibcallENS_14AtomicOrderingEm(ptr noundef nonnull align 2 dereferenceable(40), i32 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getHalfTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type11getDoubleTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type13getX86_FP80TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getFP128TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96), ptr, ptr) local_unnamed_addr #2

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

declare noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef) local_unnamed_addr #2

declare void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder17buildConstantPoolERKNS_5DstOpEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm19MachineConstantPool20getConstantPoolIndexEPKNS_8ConstantENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i8) local_unnamed_addr #2

declare void @_ZN4llvm18MachinePointerInfo15getConstantPoolERNS_15MachineFunctionE(ptr dead_on_unwind writable sret(%"struct.llvm::MachinePointerInfo") align 8, ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

declare i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

declare void @_ZN4llvm16MachineIRBuilder26materializeObjectPtrOffsetERNS_8RegisterES1_NS_3LLTEm(ptr dead_on_unwind writable sret(%"class.std::optional.623") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4), i32, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm19matchUnaryPredicateERKNS_19MachineRegisterInfoENS_8RegisterESt8functionIFbPKNS_8ConstantEEEb(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr nofree noundef align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKN4llvm8ConstantEEZL27isNonZeroModBitWidthOrUndefRKNS0_19MachineRegisterInfoENS0_8RegisterEjE3$_0E9_M_invokeERKSt9_Any_dataOS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8
  %.val2 = load ptr, ptr %1, align 8, !tbaa !1158 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val2, null
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIbRZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS0_8RegisterEjE3$_0JPKNS0_8ConstantEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %.val2, align 8, !tbaa !1159
  %i.b = icmp eq i8 %i.a, 5
  br i1 %i.b, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntEKNS_8ConstantEEEDaPT0_.exit.i.i.i, label %"_ZSt10__invoke_rIbRZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS0_8RegisterEjE3$_0JPKNS0_8ConstantEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntEKNS_8ConstantEEEDaPT0_.exit.i.i.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.d = zext i32 %.val to i64
  %i.e = tail call noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 noundef %i.d) #19
  %i.f = icmp ne i64 %i.e, 0
  br label %"_ZSt10__invoke_rIbRZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS0_8RegisterEjE3$_0JPKNS0_8ConstantEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

"_ZSt10__invoke_rIbRZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS0_8RegisterEjE3$_0JPKNS0_8ConstantEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %bb.a, %bb.b, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntEKNS_8ConstantEEEDaPT0_.exit.i.i.i
  %i.g = phi i1 [ %i.f, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntEKNS_8ConstantEEEDaPT0_.exit.i.i.i ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKN4llvm8ConstantEEZL27isNonZeroModBitWidthOrUndefRKNS0_19MachineRegisterInfoENS0_8RegisterEjE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS1_8RegisterEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !507
  br label %"_ZNSt14_Function_base13_Base_managerIZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS1_8RegisterEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1161
  br label %"_ZNSt14_Function_base13_Base_managerIZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS1_8RegisterEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !238
  br label %"_ZNSt14_Function_base13_Base_managerIZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS1_8RegisterEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL27isNonZeroModBitWidthOrUndefRKN4llvm19MachineRegisterInfoENS1_8RegisterEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare noundef i32 @_ZN4llvm6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(12), i1 noundef zeroext, i8 noundef signext) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(12), i1 noundef zeroext, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #15

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i32 noundef) unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29), i32 noundef) unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloat7makeInfEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloat7makeInfEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19GISelChangeObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm19GISelChangeObserverE, i64 16), ptr %0, align 8, !tbaa !182
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !454, !range !293, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !455
  tail call void @free(ptr noundef %i.e) #19
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19GISelChangeObserverD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #20
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm5APInt15setBitsWithWrapEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 65
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.neg.i = add nuw i32 %1, 64
  %i.c = sub nuw i32 %.neg.i, %2
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 -1, %i.d
  %i.f = zext nneg i32 %1 to i64
  %i.g = shl i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !250
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %0, align 8, !tbaa !226
  %i.l = or i64 %i.k, %i.g
  store i64 %i.l, ptr %0, align 8, !tbaa !226
  br label %_ZN4llvm5APInt7setBitsEjj.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !226    ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !301
  %i.o = or i64 %i.n, %i.g
  store i64 %i.o, ptr %i.m, align 8, !tbaa !301
  br label %_ZN4llvm5APInt7setBitsEjj.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) #19
  br label %_ZN4llvm5APInt7setBitsEjj.exit

bb.g:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %_ZN4llvm5APInt10setLowBitsEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ult i32 %2, 65
  br i1 %i.q, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = sub nuw nsw i32 64, %2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = lshr i64 -1, %i.s                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !250
  %i.w = icmp ult i32 %i.v, 65
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %0, align 8, !tbaa !226
  %i.y = or i64 %i.x, %i.t
  store i64 %i.y, ptr %0, align 8, !tbaa !226
  br label %_ZN4llvm5APInt10setLowBitsEj.exit

bb.k:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !226    ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !301
  %i.ab = or i64 %i.aa, %i.t
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !301
  br label %_ZN4llvm5APInt10setLowBitsEj.exit

bb.l:                                             ; preds = %bb.h
  tail call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 0, i32 noundef %2) #19
  br label %_ZN4llvm5APInt10setLowBitsEj.exit

_ZN4llvm5APInt10setLowBitsEj.exit:                ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !250 ; 4 uses
  %i.ae = icmp eq i32 %i.ad, %1
  br i1 %i.ae, label %_ZN4llvm5APInt7setBitsEjj.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm5APInt10setLowBitsEj.exit
  %i.af = icmp ult i32 %i.ad, 65
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.neg = add i32 %1, 64
  %i.ag = sub i32 %.neg, %i.ad
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = zext nneg i32 %1 to i64
  %i.ak = shl i64 %i.ai, %i.aj
  %i.al = load i64, ptr %0, align 8, !tbaa !226
  %i.am = or i64 %i.al, %i.ak
  store i64 %i.am, ptr %0, align 8, !tbaa !226
  br label %_ZN4llvm5APInt7setBitsEjj.exit

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i32 noundef %i.ad) #19
  br label %_ZN4llvm5APInt7setBitsEjj.exit

_ZN4llvm5APInt7setBitsEjj.exit:                   ; preds = %bb.o, %bb.n, %_ZN4llvm5APInt10setLowBitsEj.exit, %bb.f, %bb.e, %bb.d
  ret void
}

declare void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloat11makeLargestEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloat11makeLargestEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm16MachineFrameInfo18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(728), i8) local_unnamed_addr #2

declare void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !228    ; 4 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !227  ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw [160 x i8], ptr %i.c, i64 %i.i
  %i.k = icmp eq ptr %1, %i.j
  %i.l = ptrtoint ptr %3 to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = sdiv exact i64 %i.n, 160                 ; 2 uses
end_hunk_1
