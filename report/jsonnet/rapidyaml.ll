Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 326
begin_hunk_0_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_val_scalar_literalERKNS3_12ScannedBlockE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %i.d, i32 noundef %i.f) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.k = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_move_scalar_left_and_add_newlineENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi { ptr, i64 } [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.010.0.i = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.4.0.i = extractvalue { ptr, i64 } %.pn.i, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2488
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !236  ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !186
  %i.t = or i32 %i.s, 32768
  store i32 %i.t, ptr %i.r, align 8, !tbaa !186
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !101
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit
  %.sroa.010.0.i.pn = phi ptr [ %.sroa.010.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit ], [ %.sroa.05.0.copyload, %bb.d ]
  %.sroa.4.0.i.pn = phi i64 [ %.sroa.4.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit ], [ %.sroa.3.0.copyload, %bb.d ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.sroa.010.0.i.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.sroa.4.0.i.pn, 1
  ret { ptr, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_key_scalar_foldedERKNS3_12ScannedBlockE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !163
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !101 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !102 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !252
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  store ptr %.sroa.0.0.copyload, ptr %2, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.2.0.copyload, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %i.d, i32 noundef %i.f) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.k = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_move_scalar_left_and_add_newlineENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi { ptr, i64 } [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.010.0.i = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.4.0.i = extractvalue { ptr, i64 } %.pn.i, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2488
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !236  ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !186
  %i.t = or i32 %i.s, 16384
  store i32 %i.t, ptr %i.r, align 8, !tbaa !186
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !101
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit
  %.sroa.010.0.i.pn = phi ptr [ %.sroa.010.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit ], [ %.sroa.05.0.copyload, %bb.d ]
  %.sroa.4.0.i.pn = phi i64 [ %.sroa.4.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit ], [ %.sroa.3.0.copyload, %bb.d ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.sroa.010.0.i.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.sroa.4.0.i.pn, 1
  ret { ptr, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_val_scalar_foldedERKNS3_12ScannedBlockE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !163
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !101 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !102 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !252
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  store ptr %.sroa.0.0.copyload, ptr %2, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.2.0.copyload, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %i.d, i32 noundef %i.f) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.k = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_move_scalar_left_and_add_newlineENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi { ptr, i64 } [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.010.0.i = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.4.0.i = extractvalue { ptr, i64 } %.pn.i, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2488
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !236  ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !186
  %i.t = or i32 %i.s, 32768
  store i32 %i.t, ptr %i.r, align 8, !tbaa !186
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !101
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit
  %.sroa.010.0.i.pn = phi ptr [ %.sroa.010.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit ], [ %.sroa.05.0.copyload, %bb.d ]
  %.sroa.4.0.i.pn = phi i64 [ %.sroa.4.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit ], [ %.sroa.3.0.copyload, %bb.d ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.sroa.010.0.i.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.sroa.4.0.i.pn, 1
  ret { ptr, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE19_maybe_skip_commentEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.a = alloca [35 x i8], align 16               ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !138  ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = select i1 %i.h, i1 true, i1 %i.j
  br i1 %i.k, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0710.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.m, 32
  br i1 %.not.i.i, label %bb.b, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, label %.lr.ph.i.i, !llvm.loop !23

_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not.not.i = icmp eq i64 %.0710.i.i, -1        ; 2 uses
  %spec.select.idx.i = select i1 %.not.not.i, i64 0, i64 %.0710.i.i
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %spec.select.idx.i ; 3 uses
  br i1 %.not.not.i, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i
  %i.o = load i8, ptr %spec.select.i, align 1, !tbaa !87
  %i.p = icmp eq i8 %i.o, 35
  br i1 %i.p, label %bb.c, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %2 = ptrtoint ptr %spec.select.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !211  ; 2 uses
  %i.s = add i64 %i.r, %.0710.i.i
  store i64 %i.s, ptr %i.q, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !213  ; 2 uses
  %i.v = add i64 %i.u, %.0710.i.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !213
  %i.w = sub i64 %i.g, %.0710.i.i
  store ptr %spec.select.i, ptr %i.e, align 8, !tbaa !101
  store i64 %i.w, ptr %i.f, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !102
  %.not.i.i1 = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %.not.i.i1, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i

_ZNK2c415basic_substringIKcE11begins_withEc.exit.i: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.05.0.copyload.i = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.y = load i8, ptr %.sroa.05.0.copyload.i, align 1, !tbaa !87
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i

_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i: ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i, %bb.c
  %i.aa = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !87
  switch i8 %i.ab, label %bb.d [
    i8 32, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit
    i8 9, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit
  ], !prof !287

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(35) %i.a, ptr noundef nonnull align 16 dereferenceable(35) @__const._ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.msg, i64 35, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 2456
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 0, ptr %1, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 33316, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx3.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 74, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 2480
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !94
  call void %i.ae(ptr noundef nonnull %i.a, i64 noundef 34, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %1, ptr noundef %i.af), !inline_history !288
  call void @abort() #60
  unreachable

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit: ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i
  %i.ag = add i64 %i.r, %i.g
  store i64 %i.ag, ptr %i.q, align 8, !tbaa !211
  %i.ah = add i64 %i.u, %i.g
  store i64 %i.ah, ptr %i.t, align 8, !tbaa !213
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !101
  store i64 0, ptr %i.f, align 8, !tbaa !102
  br label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread

_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread: ; preds = %bb.b, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i, %bb.a, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit, %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_handle_indentation_pop_from_block_mapEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %2 = alloca %class.anon.30, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2488 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !248  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202  ; 2 uses
  %.01969 = getelementptr inbounds i8, ptr %i.e, i64 -152 ; 2 uses
  %i.j = icmp ugt ptr %.01969, %i.i
  br i1 %i.j, label %.lr.ph, label %.split22

.lr.ph:                                           ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.01972 = phi ptr [ %.01969, %.lr.ph ], [ %.019, %.critedge ] ; 9 uses
  %.071 = phi ptr [ null, %.lr.ph ], [ %.1, %.critedge ] ; 4 uses
  %.pn70 = phi ptr [ %i.e, %.lr.ph ], [ %.01972, %.critedge ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.pn70, i64 -48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !216  ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.l, %i.g
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne ptr %.071, null
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pn70, i64 -56
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !222 ; 2 uses
  %i.o = and i32 %.pre, 13
  %or.cond = icmp eq i32 %i.o, 1
  %or.cond96 = select i1 %.not, i1 %or.cond, i1 false
  br i1 %or.cond96, label %.thread, label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.d
  %i.p = and i32 %.pre, 40
  %i.q = icmp eq i32 %i.p, 40
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %._crit_edge77
  %.sroa.041.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !102 ; 3 uses
  %.not13.i = icmp eq i64 %.sroa.10.0.copyload, 0
  br i1 %.not13.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.0710.i = phi i64 [ %i.t, %bb.f ], [ 0, %bb.e ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload, i64 %.0710.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !87    ; 2 uses
  %.not.i29 = icmp eq i8 %i.s, 32
  br i1 %.not.i29, label %bb.f, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = add nuw i64 %.0710.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %.sroa.10.0.copyload
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit: ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload, i64 %.0710.i
  %.not.i = icmp ne i64 %.0710.i, -1
  %i.v = icmp eq i8 %i.s, 45
  %or.cond97 = and i1 %.not.i, %i.v
  br i1 %or.cond97, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  %i.w = sub nuw i64 %.sroa.10.0.copyload, %.0710.i
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %.thread, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !87
  %i.aa = icmp eq i8 %i.z, 32
  br i1 %i.aa, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit, %._crit_edge77, %bb.c
  %.1 = phi ptr [ %.071, %bb.c ], [ %.01972, %._crit_edge77 ], [ %.01972, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit ], [ %.01972, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit ], [ %.01972, %bb.e ], [ %.01972, %bb.f ] ; 2 uses
  %.019 = getelementptr inbounds i8, ptr %.01972, i64 -152 ; 2 uses
  %i.ab = icmp ugt ptr %.019, %i.i
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !962

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %.0.lcssa = phi ptr [ %.071, %bb.b ], [ %.1, %.critedge ] ; 2 uses
  %.not26 = icmp eq ptr %.0.lcssa, null
  br i1 %.not26, label %.split22, label %.thread

.thread:                                          ; preds = %bb.g, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit, %bb.d, %._crit_edge
  %.262 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.01972, %bb.g ], [ %.071, %bb.d ], [ %.01972, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit ] ; 5 uses
  %.not27 = icmp ult ptr %.262, %i.e
  br i1 %.not27, label %bb.h, label %.split22

bb.h:                                             ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %.262, i64 112
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !210
  %.not28 = icmp ult i64 %i.ad, %i.af
  br i1 %.not28, label %.lr.ph.i31, label %.split22

.lr.ph.i31:                                       ; preds = %bb.h, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i
  %i.ag = phi ptr [ %i.bf, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i ], [ %i.e, %bb.h ]
  %i.ah = phi ptr [ %i.be, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i ], [ %i.d, %bb.h ] ; 2 uses
  %i.ai = phi ptr [ %i.bd, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i ], [ %i.c, %bb.h ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !222 ; 3 uses
  %i.al = and i32 %i.ak, 8
  %.not2.i = icmp eq i32 %i.al, 0
  br i1 %.not2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i31
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_seqEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i

bb.j:                                             ; preds = %.lr.ph.i31
  %i.am = and i32 %i.ak, 4
  %.not3.i = icmp eq i32 %i.am, 0
  br i1 %.not3.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_handle_indentation_popEPKNS0_11ParserStateE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = and i32 %i.ak, 32
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_end_map_blckEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.ai)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 2496 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !239 ; 2 uses
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !tbaa.struct !160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.ap, ptr noundef nonnull align 8 dereferenceable(138) %i.aq, i64 56, i1 false), !tbaa.struct !241
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 2440 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !201
  %i.av = add i64 %i.au, -1                       ; 3 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !201
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 2432
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !202
  %i.ay = icmp ugt i64 %i.av, 1
  %i.az = getelementptr [152 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -304
  %i.bb = select i1 %i.ay, ptr %i.ba, ptr null
  store ptr %i.bb, ptr %i.ao, align 8, !tbaa !239
  %i.bc = getelementptr i8, ptr %i.az, i64 -152
end_hunk_0
