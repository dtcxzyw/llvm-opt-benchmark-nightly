Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide3new:bb.a
  %i.n = trunc nuw nsw i32 %i.g to i16
  %i.o = insertelement <2 x i16> %i.m, i16 %i.n, i64 1
  %i.p = add nuw nsw <2 x i16> %i.o, splat (i16 2)
  %i.q = udiv <2 x i16> %i.p, splat (i16 3)
  %i.r = add nuw nsw <2 x i16> %i.q, splat (i16 1)
  %i.s = zext nneg <2 x i16> %i.r to <2 x i32>
  store <2 x i32> %i.s, ptr %i.k, align 8, !alias.scope !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false), !alias.scope !19
  store i8 32, ptr %i.u, align 8, !alias.scope !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %0, i8 0, i64 65536, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65536
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65544
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65552
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65556
  store i32 8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 65640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 65656
  store ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 65664
  store i32 %1, ptr %.sroa.6.0..sroa_idx8, align 8
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 65668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx9, i8 0, i64 20, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65688
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65692
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65706
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.9.0..sroa_idx, i8 0, i64 14, i1 false)
  store i8 %i.j, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65707
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 65632
  store ptr %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 65560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.d, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed.i.i, i64 noundef 85196, i64 noundef 1) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMs1_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_15CompressorOxide5reset(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) initializes((0, 65560), (65592, 65624), (65640, 65656), (65668, 65706), (65707, 65708)) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %0, i8 0, i64 65536, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65536
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65544
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65552
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65556
  store i32 8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65668
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65704
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65705
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 65707
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(85196) %i.h, i8 0, i64 85196, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65632
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4320) %i.j, i8 0, i64 4320, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !30, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33026) %i.l, i8 0, i64 33026, i1 false), !noalias !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65568
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !30, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.n, i8 0, i64 65536, i1 false), !alias.scope !31, !noalias !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 65576
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !30, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.p, i8 0, i64 65536, i1 false), !alias.scope !32, !noalias !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 65592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false), !alias.scope !28
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs9_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_3Rle14zero_code_size(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 2 captures(none) dereferenceable(4320) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1152 ; 2 uses
  %i.d = load i32, ptr %0, align 4, !noundef !4   ; 6 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.d, 3
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i32 %i.d, 11
  %i.h = trunc i32 %i.d to i8                     ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1188 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !4
  %i.k = add i16 %i.j, 1
  store i16 %i.k, ptr %i.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = add i8 %i.h, -11
  store i8 18, ptr %i.a, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.n = load i64, ptr %2, align 8, !alias.scope !45, !noalias !46, !noundef !4 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.n, 318
  br i1 %or.cond.not.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1186 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !noundef !4
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = add nsw i8 %i.h, -3
  store i8 17, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.r, ptr %i.s, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.t = load i64, ptr %2, align 8, !alias.scope !47, !noalias !48, !noundef !4 ; 3 uses
  %or.cond.not.i2 = icmp ugt i64 %i.t, 318
  br i1 %or.cond.not.i2, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread

bb.g:                                             ; preds = %bb.d
  %i.u = add nuw nsw i64 %i.n, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.v, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65), !noalias !45
  store i64 %i.u, ptr %2, align 8, !alias.scope !45, !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread

bb.i:                                             ; preds = %bb.e
  %i.w = add nuw nsw i64 %i.t, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.x, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65), !noalias !47
  store i64 %i.w, ptr %2, align 8, !alias.scope !47, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5, %bb.g, %bb.i
  store i32 0, ptr %0, align 4
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread

bb.k:                                             ; preds = %bb.b
  %i.y = load i16, ptr %i.c, align 2, !noundef !4
  %i.z = trunc nuw nsw i32 %i.d to i16
  %i.aa = add i16 %i.y, %i.z
  store i16 %i.aa, ptr %i.c, align 2
  %i.ab = zext nneg i32 %i.d to i64               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.ac = load i64, ptr %2, align 8, !alias.scope !49, !noalias !50, !noundef !4 ; 3 uses
  %i.ad = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = icmp ugt i64 %i.ad, 320
  %or.cond.not.i4 = or i1 %i.ae, %i.af
  br i1 %or.cond.not.i4, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ag, i64 noundef range(i64 0, 4) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, 4) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65), !noalias !49
  store i64 %i.ad, ptr %2, align 8, !alias.scope !49, !noalias !50
  br label %bb.j

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core5write.exit5.thread: ; preds = %bb.k, %bb.j, %bb.a, %bb.h, %bb.f
  %.sroa.0.0 = phi i1 [ true, %bb.f ], [ false, %bb.j ], [ true, %bb.h ], [ false, %bb.a ], [ true, %bb.k ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 captures(address) dereferenceable(4320) %0, i64 noundef range(i64 0, 3) %1, i64 noundef range(i64 19, 289) %2, i64 noundef range(i64 7, 16) %3, i1 noundef zeroext %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 16 uses
  %i.b = alloca [4096 x i8], align 8              ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [1152 x i8], align 2              ; 8 uses
  %i.e = alloca [1152 x i8], align 2              ; 12 uses
  %i.f = alloca [64 x i8], align 4                ; 10 uses
  %i.g = alloca [132 x i8], align 4               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.g, i8 0, i64 132, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %.sroa.04.0.lcssa.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.04.0.lcssa.i.sroa.gep207 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br i1 %4, label %.lr.ph167.preheader, label %.preheader

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1152) %i.e, i8 0, i64 1152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1152) %i.d, i8 0, i64 1152, i1 false)
  %i.h = getelementptr inbounds nuw [576 x i8], ptr %0, i64 %1
  br label %bb.c

bb.b:                                             ; preds = %bb.az
  %i.i = icmp ult i64 %.sroa.04.2, 289
  br i1 %i.i, label %bb.e, label %bb.d, !prof !6

bb.c:                                             ; preds = %.preheader, %bb.az
  %.sroa.042.0156 = phi i64 [ 0, %.preheader ], [ %i.j, %bb.az ] ; 3 uses
  %.sroa.04.0155 = phi i64 [ 0, %.preheader ], [ %.sroa.04.2, %bb.az ] ; 5 uses
  %i.j = add nuw nsw i64 %.sroa.042.0156, 1       ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %.sroa.042.0156
  %i.l = load i16, ptr %i.k, align 2, !noundef !4 ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.az, label %bb.ba

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.04.2, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2048 ; 8 uses
  %.idx.i = shl nuw nsw i64 %.sroa.04.2, 2        ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.p = icmp eq i64 %.sroa.04.2, 0               ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false), !noalias !69
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.q = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.r = and i64 %i.q, 4
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.t = load i16, ptr %i.e, align 2, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.u = and i16 %i.t, 255
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !69, !noundef !4
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !noalias !69
  %i.z = lshr i16 %i.t, 8
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !69, !noundef !4
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !69
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.041.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %i.ae = icmp eq i64 %i.q, 0
  br i1 %i.ae, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.041.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.sroa.0.041.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 4
  %i.ag = load i16, ptr %.sroa.0.041.i, align 2, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.ah = and i16 %i.ag, 255
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !69, !noundef !4
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !noalias !69
  %i.am = lshr i16 %i.ag, 8
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !69, !noundef !4
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 8 ; 2 uses
  %i.as = load i16, ptr %i.af, align 2, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.at = and i16 %i.as, 255
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !69, !noundef !4
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !noalias !69
  %i.ay = lshr i16 %i.as, 8
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !69, !noundef !4
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !noalias !69
  %i.bd = icmp eq ptr %i.ar, %i.o
  br i1 %i.bd, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i64, ptr %i.n, align 8, !noalias !69
  %i.be = icmp eq i64 %.sroa.04.2, %.pre
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %.not.i = phi i1 [ %i.be, %._crit_edge.i.loopexit ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !69
  br label %bb.l

bb.f:                                             ; preds = %bb.l
  br i1 %i.p, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.f, %bb.k
  %.sroa.023.044.i = phi ptr [ %i.cv, %bb.k ], [ %i.e, %bb.f ] ; 3 uses
  %i.bf = load i16, ptr %.sroa.023.044.i, align 2, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.bg = and i16 %i.bf, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !69, !noundef !4 ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.04.2
  br i1 %i.bk, label %bb.k, label %.loopexit.i

._crit_edge47.i:                                  ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br i1 %.not.i, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !69
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.026.043.1.i = phi i64 [ 0, %bb.g ], [ %i.ca, %bb.h ] ; 6 uses
  %.sroa.019.042.1.i = phi i64 [ 0, %bb.g ], [ %i.ce, %bb.h ] ; 2 uses
  %i.bl = or disjoint i64 %.sroa.026.043.1.i, 1   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.1.i
  store i64 %.sroa.019.042.1.i, ptr %i.bm, align 8, !noalias !69
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.026.043.1.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !69, !noundef !4
  %i.bp = add i64 %i.bo, %.sroa.019.042.1.i       ; 2 uses
  %i.bq = or disjoint i64 %.sroa.026.043.1.i, 2   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  store i64 %i.bp, ptr %i.br, align 8, !noalias !69
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !69, !noundef !4
  %i.bu = add i64 %i.bt, %i.bp                    ; 2 uses
  %i.bv = or disjoint i64 %.sroa.026.043.1.i, 3   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  store i64 %i.bu, ptr %i.bw, align 8, !noalias !69
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bq
  %i.by = load i64, ptr %i.bx, align 8, !noalias !69, !noundef !4
  %i.bz = add i64 %i.by, %i.bu                    ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.026.043.1.i, 4   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv
  store i64 %i.bz, ptr %i.cb, align 8, !noalias !69
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bv
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !69, !noundef !4
  %i.ce = add i64 %i.cd, %i.bz
  %exitcond.1.not.i.3 = icmp eq i64 %i.ca, 256
  br i1 %exitcond.1.not.i.3, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  br i1 %i.p, label %._crit_edge47.1.i, label %.lr.ph46.1.i

.lr.ph46.1.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.023.044.1.i = phi ptr [ %i.co, %bb.j ], [ %i.d, %bb.i ] ; 3 uses
  %i.cg = load i16, ptr %.sroa.023.044.1.i, align 2, !alias.scope !68, !noalias !67, !noundef !4 ; 2 uses
  %i.ch = lshr i16 %i.cg, 8
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !69, !noundef !4 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.04.2
  br i1 %i.cl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph46.1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !alias.scope !68, !noalias !67, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.023.044.1.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ck ; 2 uses
  store i16 %i.cg, ptr %i.cp, align 2, !alias.scope !67, !noalias !68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i16 %i.cn, ptr %i.cq, align 2, !alias.scope !67, !noalias !68
  %i.cr = add nuw nsw i64 %i.ck, 1
  store i64 %i.cr, ptr %i.cj, align 8, !noalias !69
  %i.cs = icmp eq ptr %i.co, %i.cf
  br i1 %i.cs, label %._crit_edge47.1.i, label %.lr.ph46.1.i

._crit_edge47.1.i:                                ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit

bb.k:                                             ; preds = %.lr.ph46.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !alias.scope !67, !noalias !68, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bj ; 2 uses
  store i16 %i.bf, ptr %i.cw, align 2, !alias.scope !68, !noalias !67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.cu, ptr %i.cx, align 2, !alias.scope !68, !noalias !67
  %i.cy = add nuw nsw i64 %i.bj, 1
  store i64 %i.cy, ptr %i.bi, align 8, !noalias !69
  %i.cz = icmp eq ptr %i.cv, %i.o
  br i1 %i.cz, label %._crit_edge47.i, label %.lr.ph46.i

.loopexit.i:                                      ; preds = %.lr.ph46.i, %.lr.ph46.1.i
  %.lcssa.i = phi i64 [ %i.ck, %.lr.ph46.1.i ], [ %i.bj, %.lr.ph46.i ]
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i, i64 noundef %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22, !noalias !69
  unreachable

bb.l:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.026.043.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dp, %bb.l ] ; 6 uses
  %.sroa.019.042.i = phi i64 [ 0, %._crit_edge.i ], [ %i.dt, %bb.l ] ; 2 uses
  %i.da = or disjoint i64 %.sroa.026.043.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.026.043.i
  store i64 %.sroa.019.042.i, ptr %i.db, align 8, !noalias !69
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.026.043.i
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !69, !noundef !4
  %i.de = add i64 %i.dd, %.sroa.019.042.i         ; 2 uses
  %i.df = or disjoint i64 %.sroa.026.043.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  store i64 %i.de, ptr %i.dg, align 8, !noalias !69
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.da
  %i.di = load i64, ptr %i.dh, align 8, !noalias !69, !noundef !4
  %i.dj = add i64 %i.di, %i.de                    ; 2 uses
  %i.dk = or disjoint i64 %.sroa.026.043.i, 3     ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.df
  store i64 %i.dj, ptr %i.dl, align 8, !noalias !69
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.df
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !69, !noundef !4
  %i.do = add i64 %i.dn, %i.dj                    ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.026.043.i, 4     ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk
  store i64 %i.do, ptr %i.dq, align 8, !noalias !69
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dk
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !69, !noundef !4
  %i.dt = add i64 %i.ds, %i.do
  %exitcond.not.i.3 = icmp eq i64 %i.dp, 256
  br i1 %exitcond.not.i.3, label %bb.f, label %bb.l

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit: ; preds = %._crit_edge47.i, %._crit_edge47.1.i
  %.sroa.04.0.lcssa.i.sroa.phi = phi ptr [ %.sroa.04.0.lcssa.i.sroa.gep, %._crit_edge47.1.i ], [ %.sroa.04.0.lcssa.i.sroa.gep207, %._crit_edge47.i ]
  %.sroa.04.0.lcssa.i = phi ptr [ %i.e, %._crit_edge47.1.i ], [ %i.d, %._crit_edge47.i ] ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  switch i64 %.sroa.04.2, label %bb.m [
    i64 0, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide21enforce_max_code_size.exit
    i64 1, label %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236
  ]

_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide28calculate_minimum_redundancy.exit.thread236: ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  store i16 1, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !70
  br label %.lr.ph.preheader

bb.m:                                             ; preds = %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide18radix_sort_symbols.exit
  %i.du = load i16, ptr %.sroa.04.0.lcssa.i.sroa.phi, align 2, !alias.scope !70, !noundef !4
  %i.dv = load i16, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !70, !noundef !4
  %i.dw = add i16 %i.dv, %i.du
  store i16 %i.dw, ptr %.sroa.04.0.lcssa.i, align 2, !alias.scope !70
  %i.dx = add nsw i64 %.sroa.04.2, -1             ; 2 uses
  %i.dy = icmp samesign ugt i64 %.sroa.04.2, 2
  br i1 %i.dy, label %.lr.ph.i70, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.m
  %i.dz = getelementptr [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %.sroa.04.2
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  store i16 0, ptr %i.ea, align 2, !alias.scope !70
  br label %._crit_edge85.i

._crit_edge.i72:                                  ; preds = %bb.ad
  %i.eb = add nsw i64 %.sroa.04.2, -2             ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.eb
  store i16 0, ptr %i.ec, align 2, !alias.scope !70
  br label %.lr.ph84.preheader.i

.lr.ph.i70:                                       ; preds = %bb.m, %bb.ad
  %.sroa.0.080.i = phi i64 [ %.sroa.0.2.i, %bb.ad ], [ 0, %bb.m ] ; 8 uses
  %.sroa.09.079.i = phi i64 [ %.sroa.09.2.i, %bb.ad ], [ 2, %bb.m ] ; 4 uses
  %.sroa.034.078.i = phi i64 [ %i.ed, %bb.ad ], [ 1, %bb.m ] ; 8 uses
  %i.ed = add nuw i64 %.sroa.034.078.i, 1         ; 2 uses
  %.not50.i = icmp ult i64 %.sroa.09.079.i, %.sroa.04.2
  br i1 %.not50.i, label %bb.s, label %bb.x

._crit_edge85.i.loopexit:                         ; preds = %bb.r
  %i.ee = trunc nuw nsw i64 %i.eb to i32
  br label %._crit_edge85.i

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit, %._crit_edge.thread.i
  %i.ef = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.ee, %._crit_edge85.i.loopexit ]
  %i.eg = trunc nuw nsw i64 %i.dx to i32
  %i.eh = trunc nuw nsw i64 %.sroa.04.2 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge98.i, %._crit_edge85.i
  %.sroa.020.0103.i = phi i32 [ 1, %._crit_edge85.i ], [ %i.eu, %._crit_edge98.i ] ; 2 uses
  %.sroa.026.0102.i = phi i16 [ 0, %._crit_edge85.i ], [ %i.ev, %._crit_edge98.i ] ; 3 uses
  %.sroa.029.0101.i = phi i32 [ %i.ef, %._crit_edge85.i ], [ %.sroa.029.1.lcssa.i, %._crit_edge98.i ] ; 7 uses
  %.sroa.032.0100.i = phi i32 [ %i.eg, %._crit_edge85.i ], [ %.sroa.032.1.lcssa.i, %._crit_edge98.i ] ; 2 uses
  %i.ei = icmp sgt i32 %.sroa.029.0101.i, -1
  br i1 %i.ei, label %.lr.ph88.preheader.i, label %._crit_edge89.i

.lr.ph88.preheader.i:                             ; preds = %.preheader.i
  %i.ej = add nuw nsw i32 %.sroa.029.0101.i, 1
  %.first_iter133.i = icmp ult i32 %.sroa.029.0101.i, %i.eh
  br i1 %.first_iter133.i, label %.lr.ph88.i.us, label %.lr.ph88.i

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.preheader.i, %bb.n
  %.sroa.023.187.i.us = phi i32 [ %i.eo, %bb.n ], [ 0, %.lr.ph88.preheader.i ] ; 3 uses
  %.sroa.029.186.i.us = phi i32 [ %i.ep, %bb.n ], [ %.sroa.029.0101.i, %.lr.ph88.preheader.i ] ; 3 uses
  %i.ek = zext nneg i32 %.sroa.029.186.i.us to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.lcssa.i, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !alias.scope !70, !noundef !4
  %i.en = icmp eq i16 %i.em, %.sroa.026.0102.i
  br i1 %i.en, label %bb.n, label %._crit_edge89.i

bb.n:                                             ; preds = %.lr.ph88.i.us
  %i.eo = add nuw i32 %.sroa.023.187.i.us, 1
  %i.ep = add nsw i32 %.sroa.029.186.i.us, -1
  %exitcond134.not.i.us = icmp eq i32 %.sroa.023.187.i.us, %.sroa.029.0101.i
  br i1 %exitcond134.not.i.us, label %._crit_edge89.i, label %.lr.ph88.i.us

.lr.ph88.i:                                       ; preds = %.lr.ph88.preheader.i
  %i.eq = zext nneg i32 %.sroa.029.0101.i to i64
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef range(i64 0, 289) %.sroa.04.2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !70
  unreachable

._crit_edge89.i:                                  ; preds = %.lr.ph88.i.us, %bb.n, %.preheader.i
  %.sroa.029.1.lcssa.i = phi i32 [ %.sroa.029.0101.i, %.preheader.i ], [ -1, %bb.n ], [ %.sroa.029.186.i.us, %.lr.ph88.i.us ]
  %.sroa.023.1.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ej, %bb.n ], [ %.sroa.023.187.i.us, %.lr.ph88.i.us ] ; 3 uses
end_hunk_0
