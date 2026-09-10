Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/generic_clustering_graph?download=true
inline.NumInlined: 290
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@cbor_serializeTypeSuccessor:bb.a
  %i.k = extractvalue { i32, ptr } %i.i, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.j, ptr %i.k, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %A1C_MapBuilder_tryAdd.exit

bb.e:                                             ; preds = %bb.a
  %i.l = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.c, 1
  br label %A1C_MapBuilder_tryAdd.exit

A1C_MapBuilder_tryAdd.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %.pre-phi = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.c, %bb.e ] ; 3 uses
  %.fca.1.insert.merged.i = phi { i32, ptr } [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.m = extractvalue { i32, ptr } %.fca.1.insert.merged.i, 0 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %A1C_MapBuilder_tryAdd.exit
  %i.n = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %8, i32 %i.m, ptr %.pre-phi, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cbor_serializeTypeSuccessor, i32 noundef 146, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.n, 0
  %i.p = extractvalue { i32, ptr } %i.n, 1
  %i.q = ptrtoint ptr %i.p to i64
  br label %bb.z

bb.g:                                             ; preds = %A1C_MapBuilder_tryAdd.exit
  call void @A1C_Item_string_refCStr(ptr noundef %.pre-phi, ptr noundef nonnull @.str.63) #16
  %i.r = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 32
  %i.s = load i32, ptr %3, align 8, !tbaa !43
  %i.t = zext i32 %i.s to i64
  call void @A1C_Item_int64(ptr noundef nonnull %i.r, i64 noundef %i.t) #16
  %.sroa.0111.0.copyload = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.u = call ptr @A1C_MapBuilder_add(ptr noundef nonnull byval(%struct.A1C_MapBuilder) align 8 %9) #16 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq ptr %.sroa.0111.0.copyload, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_MapBuilder_tryAdd.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 99, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 3 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0
  %i.z = extractvalue { i32, ptr } %i.x, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.y, ptr %i.z, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %A1C_MapBuilder_tryAdd.exit40

bb.j:                                             ; preds = %bb.h
  %i.aa = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_MapBuilder_tryAdd.__zl_static_error_info.61, ptr noundef nonnull %6, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 101, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 3 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0
  %i.ac = extractvalue { i32, ptr } %i.aa, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ab, ptr %i.ac, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %A1C_MapBuilder_tryAdd.exit40

bb.k:                                             ; preds = %bb.g
  %i.ad = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.u, 1
  br label %A1C_MapBuilder_tryAdd.exit40

A1C_MapBuilder_tryAdd.exit40:                     ; preds = %bb.i, %bb.j, %bb.k
  %.pre-phi99 = phi ptr [ %i.z, %bb.i ], [ %i.ac, %bb.j ], [ %i.u, %bb.k ] ; 3 uses
  %.fca.1.insert.merged.i39 = phi { i32, ptr } [ %i.x, %bb.i ], [ %i.aa, %bb.j ], [ %i.ad, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ae = extractvalue { i32, ptr } %.fca.1.insert.merged.i39, 0 ; 2 uses
  %.not.i41 = icmp eq i32 %i.ae, 0
  br i1 %.not.i41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %A1C_MapBuilder_tryAdd.exit40
  %i.af = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %8, i32 %i.ae, ptr %.pre-phi99, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cbor_serializeTypeSuccessor, i32 noundef 151, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.af, 0
  %i.ah = extractvalue { i32, ptr } %i.af, 1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %bb.z

bb.m:                                             ; preds = %A1C_MapBuilder_tryAdd.exit40
  call void @A1C_Item_string_refCStr(ptr noundef %.pre-phi99, ptr noundef nonnull @.str.64) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre-phi99, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !44
  call void @A1C_Item_int64(ptr noundef nonnull %i.aj, i64 noundef %i.al) #16
  %.sroa.0113.0.copyload = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.am = call ptr @A1C_MapBuilder_add(ptr noundef nonnull byval(%struct.A1C_MapBuilder) align 8 %9) #16 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp eq ptr %.sroa.0113.0.copyload, null
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_MapBuilder_tryAdd.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 99, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 3 uses
  %i.aq = extractvalue { i32, ptr } %i.ap, 0
  %i.ar = extractvalue { i32, ptr } %i.ap, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aq, ptr %i.ar, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %A1C_MapBuilder_tryAdd.exit47

bb.p:                                             ; preds = %bb.n
  %i.as = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_MapBuilder_tryAdd.__zl_static_error_info.61, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 101, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 3 uses
  %i.at = extractvalue { i32, ptr } %i.as, 0
  %i.au = extractvalue { i32, ptr } %i.as, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.at, ptr %i.au, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %A1C_MapBuilder_tryAdd.exit47

bb.q:                                             ; preds = %bb.m
  %i.av = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.am, 1
  br label %A1C_MapBuilder_tryAdd.exit47

A1C_MapBuilder_tryAdd.exit47:                     ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi101 = phi ptr [ %i.ar, %bb.o ], [ %i.au, %bb.p ], [ %i.am, %bb.q ] ; 3 uses
  %.fca.1.insert.merged.i46 = phi { i32, ptr } [ %i.ap, %bb.o ], [ %i.as, %bb.p ], [ %i.av, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.aw = extractvalue { i32, ptr } %.fca.1.insert.merged.i46, 0 ; 2 uses
  %.not.i48 = icmp eq i32 %i.aw, 0
  br i1 %.not.i48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %A1C_MapBuilder_tryAdd.exit47
  %i.ax = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %8, i32 %i.aw, ptr %.pre-phi101, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cbor_serializeTypeSuccessor, i32 noundef 156, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.ay = extractvalue { i32, ptr } %i.ax, 0
  %i.az = extractvalue { i32, ptr } %i.ax, 1
  %i.ba = ptrtoint ptr %i.az to i64
  br label %bb.z

bb.s:                                             ; preds = %A1C_MapBuilder_tryAdd.exit47
  call void @A1C_Item_string_refCStr(ptr noundef %.pre-phi101, ptr noundef nonnull @.str.65) #16
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre-phi101, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !45
  call void @A1C_Item_int64(ptr noundef nonnull %i.bb, i64 noundef %i.bd) #16
  %.sroa.0115.0.copyload = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.be = call ptr @A1C_MapBuilder_add(ptr noundef nonnull byval(%struct.A1C_MapBuilder) align 8 %9) #16 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bg = icmp eq ptr %.sroa.0115.0.copyload, null
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_MapBuilder_tryAdd.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 99, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 3 uses
  %i.bi = extractvalue { i32, ptr } %i.bh, 0
  %i.bj = extractvalue { i32, ptr } %i.bh, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bi, ptr %i.bj, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %A1C_MapBuilder_tryAdd.exit54

bb.v:                                             ; preds = %bb.t
  %i.bk = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_MapBuilder_tryAdd.__zl_static_error_info.61, ptr noundef nonnull %4, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 101, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 3 uses
  %i.bl = extractvalue { i32, ptr } %i.bk, 0
  %i.bm = extractvalue { i32, ptr } %i.bk, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bl, ptr %i.bm, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %A1C_MapBuilder_tryAdd.exit54

bb.w:                                             ; preds = %bb.s
  %i.bn = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.be, 1
  br label %A1C_MapBuilder_tryAdd.exit54

A1C_MapBuilder_tryAdd.exit54:                     ; preds = %bb.u, %bb.v, %bb.w
  %.pre-phi103 = phi ptr [ %i.bj, %bb.u ], [ %i.bm, %bb.v ], [ %i.be, %bb.w ] ; 3 uses
  %.fca.1.insert.merged.i53 = phi { i32, ptr } [ %i.bh, %bb.u ], [ %i.bk, %bb.v ], [ %i.bn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bo = extractvalue { i32, ptr } %.fca.1.insert.merged.i53, 0 ; 2 uses
  %.not.i55 = icmp eq i32 %i.bo, 0
  br i1 %.not.i55, label %bb.y, label %bb.x

bb.x:                                             ; preds = %A1C_MapBuilder_tryAdd.exit54
  %i.bp = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %8, i32 %i.bo, ptr %.pre-phi103, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cbor_serializeTypeSuccessor, i32 noundef 161, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.bq = extractvalue { i32, ptr } %i.bp, 0
  %i.br = extractvalue { i32, ptr } %i.bp, 1
  %i.bs = ptrtoint ptr %i.br to i64
  br label %bb.z

bb.y:                                             ; preds = %A1C_MapBuilder_tryAdd.exit54
  call void @A1C_Item_string_refCStr(ptr noundef %.pre-phi103, ptr noundef nonnull @.str.66) #16
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre-phi103, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !46
  call void @A1C_Item_int64(ptr noundef nonnull %i.bt, i64 noundef %i.bv) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.r, %bb.l, %bb.f, %bb.y
  %.sroa.031.4 = phi i32 [ 0, %bb.y ], [ %i.bq, %bb.x ], [ %i.ay, %bb.r ], [ %i.ag, %bb.l ], [ %i.o, %bb.f ]
  %.sroa.6.4 = phi i64 [ 0, %bb.y ], [ %i.bs, %bb.x ], [ %i.ba, %bb.r ], [ %i.ai, %bb.l ], [ %i.q, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.031.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @A1C_Item_int64(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @A1C_Item_encodedSize(ptr noundef) local_unnamed_addr #4

declare i64 @A1C_Item_encode(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare { i32, ptr } @A1C_Error_convert(ptr noundef, ptr noundef byval(%struct.A1C_Error) align 8) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @ZL_Clustering_deserializeClusteringConfig(ptr dead_on_unwind noalias nofree writable sret(%union.ZL_Result_ZL_ClusteringConfig_u) align 8 captures(none) initializes((16, 40)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %8 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %9 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %10 = alloca %struct.ZL_ErrorContext, align 8   ; 6 uses
  %11 = alloca %struct.ZL_ErrorContext, align 8   ; 6 uses
  %12 = alloca %struct.ZL_ErrorContext, align 8   ; 6 uses
  %13 = alloca %struct.ZL_ErrorContext, align 8   ; 19 uses
  %14 = alloca %struct.A1C_Decoder, align 8       ; 4 uses
  %15 = alloca %struct.A1C_Map, align 8           ; 7 uses
  %16 = alloca %struct.A1C_Array, align 8         ; 5 uses
  %17 = alloca %struct.A1C_Map, align 8           ; 11 uses
  %18 = alloca %struct.A1C_Map, align 8           ; 9 uses
  %19 = alloca %struct.A1C_Array, align 8         ; 8 uses
  %20 = alloca %struct.A1C_Array, align 8         ; 5 uses
  %21 = alloca %struct.A1C_Map, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_ErrorContext_getOperationContext(ptr noundef %1) #17
  store ptr %i.b, ptr %13, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.c = load ptr, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  call void @A1C_Decoder_init(ptr noundef nonnull %14, ptr %i.c, ptr %i.e, ptr noundef nonnull byval(%struct.A1C_DecoderConfig) align 8 @__const.ZL_Clustering_deserializeClusteringConfig.decoderConfig) #16
  %i.f = call ptr @A1C_Decoder_decode(ptr noundef nonnull %14, ptr noundef %2, i64 noundef %3) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16, !noalias !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false), !noalias !101
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %.critedge.i, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info, ptr noundef nonnull %12, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16, !noalias !101
  br label %A1C_Item_tryGetMap.exit

.critedge.i:                                      ; preds = %bb.a
  %i.h = load i32, ptr %i.f, align 8, !tbaa !49, !noalias !101 ; 2 uses
  %.not15.i = icmp eq i32 %i.h, 5
  br i1 %.not15.i, label %A1C_Item_tryGetMap.exit.thread, label %bb.c, !prof !28

bb.c:                                             ; preds = %.critedge.i
  %i.i = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info.70, ptr noundef nonnull %12, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.74, i32 noundef %i.h, i32 noundef 5) #16, !noalias !101
  br label %A1C_Item_tryGetMap.exit

A1C_Item_tryGetMap.exit.thread:                   ; preds = %.critedge.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5310.8.copyload = load ptr, ptr %i.j, align 8, !tbaa !103
  %.sroa.8311.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.8311.8.copyload = load i64, ptr %.sroa.8311.8..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16, !noalias !101
  br label %bb.e

A1C_Item_tryGetMap.exit:                          ; preds = %bb.b, %bb.c
  %.sink567 = phi { i32, ptr } [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = extractvalue { i32, ptr } %.sink567, 0   ; 3 uses
  %i.l = extractvalue { i32, ptr } %.sink567, 1   ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.k, ptr %i.l, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16, !noalias !101
  %.not.i171 = icmp eq i32 %i.k, 0
  br i1 %.not.i171, label %bb.e, label %bb.d

bb.d:                                             ; preds = %A1C_Item_tryGetMap.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.m = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.k, ptr %i.l, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 274, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0
  store i32 %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = extractvalue { i32, ptr } %i.m, 1
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br label %bb.as

bb.e:                                             ; preds = %A1C_Item_tryGetMap.exit, %A1C_Item_tryGetMap.exit.thread
  %.sroa.4.0.i.ph = phi i64 [ %.sroa.8311.8.copyload, %A1C_Item_tryGetMap.exit.thread ], [ 0, %A1C_Item_tryGetMap.exit ]
  %.sroa.02.0.i.ph = phi ptr [ %.sroa.5310.8.copyload, %A1C_Item_tryGetMap.exit.thread ], [ %i.l, %A1C_Item_tryGetMap.exit ]
  store ptr %.sroa.02.0.i.ph, ptr %15, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.4.0.i.ph, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.s = call ptr @A1C_Map_get_cstr(ptr noundef nonnull %15, ptr noundef nonnull @.str.10) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16, !noalias !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false), !noalias !104
  %.not.i172 = icmp eq ptr %i.s, null
  br i1 %.not.i172, label %bb.f, label %.critedge.i173, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.t = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetArray.__zl_static_error_info, ptr noundef nonnull %11, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75, i32 noundef 232, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16, !noalias !104
  br label %A1C_Item_tryGetArray.exit

.critedge.i173:                                   ; preds = %bb.e
  %i.u = load i32, ptr %i.s, align 8, !tbaa !49, !noalias !104 ; 2 uses
  %.not15.i174 = icmp eq i32 %i.u, 4
  br i1 %.not15.i174, label %A1C_Item_tryGetArray.exit.thread, label %bb.g, !prof !28

bb.g:                                             ; preds = %.critedge.i173
  %i.v = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetArray.__zl_static_error_info.76, ptr noundef nonnull %11, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75, i32 noundef 232, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.78, i32 noundef %i.u, i32 noundef 4) #16, !noalias !104
  br label %A1C_Item_tryGetArray.exit

A1C_Item_tryGetArray.exit.thread:                 ; preds = %.critedge.i173
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5303.8.copyload = load ptr, ptr %i.w, align 8, !tbaa !105
  %.sroa.8304.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.8304.8.copyload = load i64, ptr %.sroa.8304.8..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16, !noalias !104
  br label %bb.i

A1C_Item_tryGetArray.exit:                        ; preds = %bb.f, %bb.g
  %.sink570 = phi { i32, ptr } [ %i.t, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.x = extractvalue { i32, ptr } %.sink570, 0   ; 3 uses
  %i.y = extractvalue { i32, ptr } %.sink570, 1   ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.x, ptr %i.y, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16, !noalias !104
  %.not.i178 = icmp eq i32 %i.x, 0
  br i1 %.not.i178, label %bb.i, label %bb.h

bb.h:                                             ; preds = %A1C_Item_tryGetArray.exit
  %i.z = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.x, ptr %i.y, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 276, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.z, 0
  store i32 %i.aa, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = extractvalue { i32, ptr } %i.z, 1
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  br label %bb.ar

bb.i:                                             ; preds = %A1C_Item_tryGetArray.exit, %A1C_Item_tryGetArray.exit.thread
  %.sroa.4.0.i179.ph = phi i64 [ %.sroa.8304.8.copyload, %A1C_Item_tryGetArray.exit.thread ], [ 0, %A1C_Item_tryGetArray.exit ] ; 7 uses
  %.sroa.02.0.i180.ph = phi ptr [ %.sroa.5303.8.copyload, %A1C_Item_tryGetArray.exit.thread ], [ %i.y, %A1C_Item_tryGetArray.exit ]
  store ptr %.sroa.02.0.i180.ph, ptr %16, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.4.0.i179.ph, ptr %i.ae, align 8
  %i.af = call i64 @ZL_runtimeNodeInputLimit(i32 noundef 27) #16 ; 2 uses
  %.not132 = icmp ugt i64 %.sroa.4.0.i179.ph, %i.af
  br i1 %.not132, label %bb.j, label %.critedge, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.ag = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Clustering_deserializeClusteringConfig.__zl_static_error_info, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 281, i32 noundef 55, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i64 noundef %.sroa.4.0.i179.ph, i64 noundef %i.af) #16 ; 2 uses
  %i.ah = extractvalue { i32, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ag, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ah, ptr %i.ai, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  store i32 %i.ah, ptr %0, align 8, !tbaa !34
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.571.0..sroa_idx, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  br label %bb.ar

.critedge:                                        ; preds = %bb.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !40
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.am = mul i64 %.sroa.4.0.i179.ph, 48
  %i.an = call ptr %i.ak(ptr noundef %i.al, i64 noundef %i.am) #16 ; 3 uses
  %.not133 = icmp eq ptr %i.an, null
  br i1 %.not133, label %bb.k, label %.critedge148.preheader, !prof !23

.critedge148.preheader:                           ; preds = %.critedge
  %.not141489.not = icmp eq i64 %.sroa.4.0.i179.ph, 0
  br i1 %.not141489.not, label %.critedge158, label %.lr.ph491

.lr.ph491:                                        ; preds = %.critedge148.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.450.0..sroa_idx.promoted = load i64, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.as = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Clustering_deserializeClusteringConfig.__zl_static_error_info.40, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 285, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i32, ptr } %i.as, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.at, ptr %i.au, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  store i32 %i.at, ptr %0, align 8, !tbaa !34
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.566.0..sroa_idx, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  br label %bb.ar

bb.l:                                             ; preds = %.lr.ph491, %.critedge148
  %22 = phi i64 [ %.sroa.450.0..sroa_idx.promoted, %.lr.ph491 ], [ %23, %.critedge148 ] ; 2 uses
  %.0115490 = phi i64 [ 0, %.lr.ph491 ], [ %i.dl, %.critedge148 ] ; 3 uses
  %i.aw = call ptr @A1C_Array_get(ptr noundef nonnull %16, i64 noundef %.0115490) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16, !noalias !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false), !noalias !106
  %.not.i186 = icmp eq ptr %i.aw, null
  br i1 %.not.i186, label %bb.m, label %.critedge.i187, !prof !23

bb.m:                                             ; preds = %bb.l
  %i.ax = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info, ptr noundef nonnull %10, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16, !noalias !106
  br label %A1C_Item_tryGetMap.exit192

.critedge.i187:                                   ; preds = %bb.l
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !49, !noalias !106 ; 2 uses
  %.not15.i188 = icmp eq i32 %i.ay, 5
  br i1 %.not15.i188, label %A1C_Item_tryGetMap.exit192.thread, label %bb.n, !prof !28

bb.n:                                             ; preds = %.critedge.i187
  %i.az = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info.70, ptr noundef nonnull %10, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.74, i32 noundef %i.ay, i32 noundef 5) #16, !noalias !106
  br label %A1C_Item_tryGetMap.exit192

A1C_Item_tryGetMap.exit192.thread:                ; preds = %.critedge.i187
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.5297.8.copyload = load ptr, ptr %i.ba, align 8, !tbaa !103
  %.sroa.8298.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.8298.8.copyload = load i64, ptr %.sroa.8298.8..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !106
  br label %bb.o

A1C_Item_tryGetMap.exit192:                       ; preds = %bb.m, %bb.n
  %.sink573 = phi { i32, ptr } [ %i.ax, %bb.m ], [ %i.az, %bb.n ] ; 2 uses
  %i.bb = extractvalue { i32, ptr } %.sink573, 0  ; 3 uses
  %i.bc = extractvalue { i32, ptr } %.sink573, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bb, ptr %i.bc, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !106
  %.not.i193 = icmp eq i32 %i.bb, 0
  br i1 %.not.i193, label %bb.o, label %.critedge156

.critedge156:                                     ; preds = %A1C_Item_tryGetMap.exit192
  store i64 %22, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.bd = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.bb, ptr %i.bc, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 288, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.be = extractvalue { i32, ptr } %i.bd, 0
  store i32 %i.be, ptr %0, align 8
  %i.bf = extractvalue { i32, ptr } %i.bd, 1
  store ptr %i.bf, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ar

bb.o:                                             ; preds = %A1C_Item_tryGetMap.exit192, %A1C_Item_tryGetMap.exit192.thread
  %.sroa.4.0.i194.ph = phi i64 [ %.sroa.8298.8.copyload, %A1C_Item_tryGetMap.exit192.thread ], [ 0, %A1C_Item_tryGetMap.exit192 ]
  %.sroa.02.0.i195.ph = phi ptr [ %.sroa.5297.8.copyload, %A1C_Item_tryGetMap.exit192.thread ], [ %i.bc, %A1C_Item_tryGetMap.exit192 ]
  store ptr %.sroa.02.0.i195.ph, ptr %17, align 8
  store i64 %.sroa.4.0.i194.ph, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.bg = call ptr @A1C_Map_get_cstr(ptr noundef nonnull %17, ptr noundef nonnull @.str.14) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false), !noalias !107
  %.not.i202 = icmp eq ptr %i.bg, null
  br i1 %.not.i202, label %bb.p, label %.critedge.i203, !prof !23

bb.p:                                             ; preds = %bb.o
  %i.bh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info, ptr noundef nonnull %9, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16, !noalias !107
  br label %A1C_Item_tryGetMap.exit208

.critedge.i203:                                   ; preds = %bb.o
  %i.bi = load i32, ptr %i.bg, align 8, !tbaa !49, !noalias !107 ; 2 uses
  %.not15.i204 = icmp eq i32 %i.bi, 5
  br i1 %.not15.i204, label %A1C_Item_tryGetMap.exit208.thread, label %bb.q, !prof !28

bb.q:                                             ; preds = %.critedge.i203
  %i.bj = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info.70, ptr noundef nonnull %9, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.74, i32 noundef %i.bi, i32 noundef 5) #16, !noalias !107
  br label %A1C_Item_tryGetMap.exit208

A1C_Item_tryGetMap.exit208.thread:                ; preds = %.critedge.i203
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5290.8.copyload = load ptr, ptr %i.bk, align 8, !tbaa !103
  %.sroa.8291.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.8291.8.copyload = load i64, ptr %.sroa.8291.8..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !107
  br label %bb.s

A1C_Item_tryGetMap.exit208:                       ; preds = %bb.p, %bb.q
  %.sink576 = phi { i32, ptr } [ %i.bh, %bb.p ], [ %i.bj, %bb.q ] ; 2 uses
  %i.bl = extractvalue { i32, ptr } %.sink576, 0  ; 3 uses
  %i.bm = extractvalue { i32, ptr } %.sink576, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bl, ptr %i.bm, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !107
  %.not.i209 = icmp eq i32 %i.bl, 0
  br i1 %.not.i209, label %bb.s, label %bb.r

bb.r:                                             ; preds = %A1C_Item_tryGetMap.exit208
  store i64 %22, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.bn = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.bl, ptr %i.bm, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 291, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.bo = extractvalue { i32, ptr } %i.bn, 0
  store i32 %i.bo, ptr %0, align 8
  %i.bp = extractvalue { i32, ptr } %i.bn, 1
  store ptr %i.bp, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  br label %.critedge166

bb.s:                                             ; preds = %A1C_Item_tryGetMap.exit208, %A1C_Item_tryGetMap.exit208.thread
  %.sroa.4.0.i210.ph = phi i64 [ %.sroa.8291.8.copyload, %A1C_Item_tryGetMap.exit208.thread ], [ 0, %A1C_Item_tryGetMap.exit208 ]
  %.sroa.02.0.i211.ph = phi ptr [ %.sroa.5290.8.copyload, %A1C_Item_tryGetMap.exit208.thread ], [ %i.bm, %A1C_Item_tryGetMap.exit208 ]
  store ptr %.sroa.02.0.i211.ph, ptr %18, align 8
  store i64 %.sroa.4.0.i210.ph, ptr %i.ap, align 8
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.0115490 ; 3 uses
  %i.br = call fastcc { i32, i64 } @cbor_deserializeTypeSuccessor(ptr noundef %1, ptr noundef %18, ptr noundef nonnull %i.bq) ; 2 uses
  %i.bs = extractvalue { i32, i64 } %i.br, 0      ; 2 uses
  %23 = extractvalue { i32, i64 } %i.br, 1        ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %.not136 = icmp eq i32 %i.bs, 0
  br i1 %.not136, label %bb.u, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  store i64 %23, ptr %.sroa.450.0..sroa_idx, align 8
  %i.bt = inttoptr i64 %23 to ptr
  %i.bu = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.bs, ptr %i.bt, ptr nonnull @ZL_Clustering_deserializeClusteringConfig.__zl_static_error_info.43, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 293, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #16 ; 2 uses
  %i.bv = extractvalue { i32, ptr } %i.bu, 0
  %i.bw = extractvalue { i32, ptr } %i.bu, 1
  store i32 %i.bv, ptr %0, align 8, !tbaa !34
  store ptr %i.bw, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !50
  br label %.critedge166

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.bx = call ptr @A1C_Map_get_cstr(ptr noundef nonnull %17, ptr noundef nonnull @.str.18) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !noalias !108
  %.not.i218 = icmp eq ptr %i.bx, null
  br i1 %.not.i218, label %bb.v, label %.critedge.i219, !prof !23

bb.v:                                             ; preds = %bb.u
  %i.by = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetArray.__zl_static_error_info, ptr noundef nonnull %8, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75, i32 noundef 232, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16, !noalias !108
  br label %A1C_Item_tryGetArray.exit224

.critedge.i219:                                   ; preds = %bb.u
  %i.bz = load i32, ptr %i.bx, align 8, !tbaa !49, !noalias !108 ; 2 uses
  %.not15.i220 = icmp eq i32 %i.bz, 4
  br i1 %.not15.i220, label %A1C_Item_tryGetArray.exit224.thread, label %bb.w, !prof !28

bb.w:                                             ; preds = %.critedge.i219
  %i.ca = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetArray.__zl_static_error_info.76, ptr noundef nonnull %8, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75, i32 noundef 232, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.78, i32 noundef %i.bz, i32 noundef 4) #16, !noalias !108
  br label %A1C_Item_tryGetArray.exit224

A1C_Item_tryGetArray.exit224.thread:              ; preds = %.critedge.i219
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5284.8.copyload = load ptr, ptr %i.cb, align 8, !tbaa !105
  %.sroa.8285.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.8285.8.copyload = load i64, ptr %.sroa.8285.8..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !108
  br label %bb.y

A1C_Item_tryGetArray.exit224:                     ; preds = %bb.v, %bb.w
  %.sink579 = phi { i32, ptr } [ %i.by, %bb.v ], [ %i.ca, %bb.w ] ; 2 uses
  %i.cc = extractvalue { i32, ptr } %.sink579, 0  ; 3 uses
  %i.cd = extractvalue { i32, ptr } %.sink579, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cc, ptr %i.cd, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !108
  %.not.i225 = icmp eq i32 %i.cc, 0
  br i1 %.not.i225, label %bb.y, label %bb.x

bb.x:                                             ; preds = %A1C_Item_tryGetArray.exit224
  store i64 %23, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.ce = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.cc, ptr %i.cd, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 295, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.cf = extractvalue { i32, ptr } %i.ce, 0
  store i32 %i.cf, ptr %0, align 8
  %i.cg = extractvalue { i32, ptr } %i.ce, 1
  br label %.critedge168

bb.y:                                             ; preds = %A1C_Item_tryGetArray.exit224, %A1C_Item_tryGetArray.exit224.thread
  %.sroa.4.0.i226.ph = phi i64 [ %.sroa.8285.8.copyload, %A1C_Item_tryGetArray.exit224.thread ], [ 0, %A1C_Item_tryGetArray.exit224 ] ; 3 uses
  %.sroa.02.0.i227.ph = phi ptr [ %.sroa.5284.8.copyload, %A1C_Item_tryGetArray.exit224.thread ], [ %i.cd, %A1C_Item_tryGetArray.exit224 ]
  store ptr %.sroa.02.0.i227.ph, ptr %19, align 8
  store i64 %.sroa.4.0.i226.ph, ptr %i.ar, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 40 ; 3 uses
  store i64 %.sroa.4.0.i226.ph, ptr %i.ch, align 8, !tbaa !32
  %i.ci = load ptr, ptr %4, align 8, !tbaa !40
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.ck = shl i64 %.sroa.4.0.i226.ph, 2
  %i.cl = call ptr %i.ci(ptr noundef %i.cj, i64 noundef %i.ck) #16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !33
  %.not138 = icmp eq ptr %i.cl, null
  br i1 %.not138, label %bb.z, label %.critedge150.preheader, !prof !23

.critedge150.preheader:                           ; preds = %bb.y
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !32
  %.not140.not475.not = icmp eq i64 %i.cn, 0
  br i1 %.not140.not475.not, label %.critedge148, label %.lr.ph

bb.z:                                             ; preds = %bb.y
  store i64 %23, ptr %.sroa.450.0..sroa_idx, align 8
  %i.co = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Clustering_deserializeClusteringConfig.__zl_static_error_info.44, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 299, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.cp = extractvalue { i32, ptr } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { i32, ptr } %i.co, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cp, ptr %i.cq, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  store i32 %i.cp, ptr %0, align 8, !tbaa !34
  br label %.critedge168

.lr.ph:                                           ; preds = %.critedge150.preheader, %.critedge152
  %.0116476 = phi i64 [ %i.dj, %.critedge152 ], [ 0, %.critedge150.preheader ] ; 3 uses
  %i.cr = call ptr @A1C_Array_get(ptr noundef nonnull %19, i64 noundef %.0116476) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %.not.i234 = icmp eq ptr %i.cr, null
  br i1 %.not.i234, label %.thread.i, label %bb.aa, !prof !23

.thread.i:                                        ; preds = %.lr.ph
  %i.cs = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info, ptr noundef nonnull %7, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16
  br label %A1C_Item_tryGetInt64.exit

bb.aa:                                            ; preds = %.lr.ph
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !49 ; 2 uses
  %.not16.i = icmp eq i32 %i.ct, 1
  br i1 %.not16.i, label %A1C_Item_tryGetInt64.exit.thread, label %bb.ab, !prof !28

bb.ab:                                            ; preds = %bb.aa
  %i.cu = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info.80, ptr noundef nonnull %7, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.82, i32 noundef %i.ct, i32 noundef 1) #16
  br label %A1C_Item_tryGetInt64.exit

A1C_Item_tryGetInt64.exit.thread:                 ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ad

A1C_Item_tryGetInt64.exit:                        ; preds = %.thread.i, %bb.ab
  %.sink582 = phi { i32, ptr } [ %i.cs, %.thread.i ], [ %i.cu, %bb.ab ] ; 2 uses
  %i.cx = extractvalue { i32, ptr } %.sink582, 0  ; 3 uses
  %i.cy = extractvalue { i32, ptr } %.sink582, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cx, ptr %i.cy, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  %.sroa.7.2.i = ptrtoint ptr %i.cy to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.not.i237 = icmp eq i32 %i.cx, 0
  br i1 %.not.i237, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %A1C_Item_tryGetInt64.exit
  store i64 %23, ptr %.sroa.450.0..sroa_idx, align 8
  %i.cz = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.cx, ptr %i.cy, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 302, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.da = extractvalue { i32, ptr } %i.cz, 0
  store i32 %i.da, ptr %0, align 8
  %i.db = extractvalue { i32, ptr } %i.cz, 1
  br label %.critedge154

bb.ad:                                            ; preds = %A1C_Item_tryGetInt64.exit, %A1C_Item_tryGetInt64.exit.thread
  %.0.i.ph = phi i64 [ %i.cw, %A1C_Item_tryGetInt64.exit.thread ], [ %.sroa.7.2.i, %A1C_Item_tryGetInt64.exit ] ; 3 uses
  %i.dc = icmp slt i64 %.0.i.ph, 2147483648
  br i1 %i.dc, label %.critedge152, label %bb.ae, !prof !28

bb.ae:                                            ; preds = %bb.ad
  store i64 %23, ptr %.sroa.450.0..sroa_idx, align 8
  %i.dd = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Clustering_deserializeClusteringConfig.__zl_static_error_info.47, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 303, i32 noundef 51, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.51, i64 noundef %.0.i.ph, i64 noundef 2147483647) #16 ; 2 uses
  %i.de = extractvalue { i32, ptr } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { i32, ptr } %i.dd, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.de, ptr %i.df, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  store i32 %i.de, ptr %0, align 8, !tbaa !34
  br label %.critedge154

.critedge152:                                     ; preds = %bb.ad
  %i.dg = trunc i64 %.0.i.ph to i32
  %i.dh = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.0116476
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !34
  %i.dj = add nuw i64 %.0116476, 1                ; 2 uses
  %i.dk = load i64, ptr %i.ch, align 8, !tbaa !32
  %.not140.not = icmp ult i64 %i.dj, %i.dk
  br i1 %.not140.not, label %.lr.ph, label %.critedge148, !llvm.loop !94

.critedge154:                                     ; preds = %bb.ae, %bb.ac
  %.sink = phi ptr [ %i.df, %bb.ae ], [ %i.db, %bb.ac ]
  store ptr %.sink, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ar

.critedge148:                                     ; preds = %.critedge152, %.critedge150.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.dl = add nuw i64 %.0115490, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %.sroa.4.0.i179.ph
  br i1 %exitcond.not, label %.critedge158.loopexit, label %bb.l, !llvm.loop !95

.critedge166:                                     ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ar

.critedge168:                                     ; preds = %bb.z, %bb.x
  %.sink583 = phi ptr [ %i.cq, %bb.z ], [ %i.cg, %bb.x ]
  store ptr %.sink583, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ar

.critedge158.loopexit:                            ; preds = %.critedge148
  store i64 %23, ptr %.sroa.450.0..sroa_idx, align 8
  br label %.critedge158

.critedge158:                                     ; preds = %.critedge158.loopexit, %.critedge148.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  %i.dm = call ptr @A1C_Map_get_cstr(ptr noundef nonnull %15, ptr noundef nonnull @.str.22) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !noalias !109
  %.not.i238 = icmp eq ptr %i.dm, null
  br i1 %.not.i238, label %bb.af, label %.critedge.i239, !prof !23

bb.af:                                            ; preds = %.critedge158
  %i.dn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetArray.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75, i32 noundef 232, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16, !noalias !109
  br label %A1C_Item_tryGetArray.exit244

.critedge.i239:                                   ; preds = %.critedge158
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !49, !noalias !109 ; 2 uses
  %.not15.i240 = icmp eq i32 %i.do, 4
  br i1 %.not15.i240, label %A1C_Item_tryGetArray.exit244.thread, label %bb.ag, !prof !28

bb.ag:                                            ; preds = %.critedge.i239
  %i.dp = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetArray.__zl_static_error_info.76, ptr noundef nonnull %6, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75, i32 noundef 232, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.78, i32 noundef %i.do, i32 noundef 4) #16, !noalias !109
  br label %A1C_Item_tryGetArray.exit244

A1C_Item_tryGetArray.exit244.thread:              ; preds = %.critedge.i239
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.5274.8.copyload = load ptr, ptr %i.dq, align 8, !tbaa !105
  %.sroa.8275.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.8275.8.copyload = load i64, ptr %.sroa.8275.8..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !109
  br label %bb.ai

A1C_Item_tryGetArray.exit244:                     ; preds = %bb.af, %bb.ag
  %.sink587 = phi { i32, ptr } [ %i.dn, %bb.af ], [ %i.dp, %bb.ag ] ; 2 uses
  %i.dr = extractvalue { i32, ptr } %.sink587, 0  ; 3 uses
  %i.ds = extractvalue { i32, ptr } %.sink587, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dr, ptr %i.ds, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !109
  %.not.i245 = icmp eq i32 %i.dr, 0
  br i1 %.not.i245, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %A1C_Item_tryGetArray.exit244
  %i.dt = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.dr, ptr %i.ds, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 308, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.du = extractvalue { i32, ptr } %i.dt, 0
  store i32 %i.du, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = extractvalue { i32, ptr } %i.dt, 1
  store ptr %i.dw, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  br label %bb.aq

bb.ai:                                            ; preds = %A1C_Item_tryGetArray.exit244, %A1C_Item_tryGetArray.exit244.thread
  %.sroa.4.0.i246.ph = phi i64 [ %.sroa.8275.8.copyload, %A1C_Item_tryGetArray.exit244.thread ], [ 0, %A1C_Item_tryGetArray.exit244 ] ; 5 uses
  %.sroa.02.0.i247.ph = phi ptr [ %.sroa.5274.8.copyload, %A1C_Item_tryGetArray.exit244.thread ], [ %i.ds, %A1C_Item_tryGetArray.exit244 ]
  store ptr %.sroa.02.0.i247.ph, ptr %20, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %.sroa.4.0.i246.ph, ptr %i.dy, align 8
  %i.dz = load ptr, ptr %4, align 8, !tbaa !40
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.eb = shl i64 %.sroa.4.0.i246.ph, 5
  %i.ec = call ptr %i.dz(ptr noundef %i.ea, i64 noundef %i.eb) #16 ; 3 uses
  %.not143 = icmp eq ptr %i.ec, null
  br i1 %.not143, label %bb.aj, label %.critedge160.preheader, !prof !23

.critedge160.preheader:                           ; preds = %bb.ai
  %.not146492.not = icmp eq i64 %.sroa.4.0.i246.ph, 0
  br i1 %.not146492.not, label %.critedge164, label %.lr.ph494

.lr.ph494:                                        ; preds = %.critedge160.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i32, ptr %0, align 8
  %.sroa.415.0..sroa_idx.promoted = load i64, ptr %.sroa.415.0..sroa_idx, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Clustering_deserializeClusteringConfig.__zl_static_error_info.52, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 313, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.eg = extractvalue { i32, ptr } %i.ef, 0      ; 2 uses
  %i.eh = extractvalue { i32, ptr } %i.ef, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.eg, ptr %i.eh, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  store i32 %i.eg, ptr %0, align 8, !tbaa !34
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %.sroa.521.0..sroa_idx, align 8, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i8 0, i64 24, i1 false)
  br label %bb.aq

bb.ak:                                            ; preds = %.lr.ph494, %.critedge160
  %24 = phi i64 [ %.sroa.415.0..sroa_idx.promoted, %.lr.ph494 ], [ %26, %.critedge160 ]
  %25 = phi i32 [ %.promoted, %.lr.ph494 ], [ %i.ev, %.critedge160 ]
  %.0114493 = phi i64 [ 0, %.lr.ph494 ], [ %i.fa, %.critedge160 ] ; 3 uses
  %i.ej = call ptr @A1C_Array_get(ptr noundef nonnull %20, i64 noundef %.0114493) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !noalias !110
  %.not.i254 = icmp eq ptr %i.ej, null
  br i1 %.not.i254, label %bb.al, label %.critedge.i255, !prof !23

bb.al:                                            ; preds = %bb.ak
  %i.ek = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16, !noalias !110
  br label %A1C_Item_tryGetMap.exit260

.critedge.i255:                                   ; preds = %bb.ak
  %i.el = load i32, ptr %i.ej, align 8, !tbaa !49, !noalias !110 ; 2 uses
  %.not15.i256 = icmp eq i32 %i.el, 5
  br i1 %.not15.i256, label %A1C_Item_tryGetMap.exit260.thread, label %bb.am, !prof !28

bb.am:                                            ; preds = %.critedge.i255
  %i.em = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetMap.__zl_static_error_info.70, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.68, i32 noundef 231, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.74, i32 noundef %i.el, i32 noundef 5) #16, !noalias !110
  br label %A1C_Item_tryGetMap.exit260

A1C_Item_tryGetMap.exit260.thread:                ; preds = %.critedge.i255
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.en, align 8, !tbaa !103
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !110
  br label %bb.ao

A1C_Item_tryGetMap.exit260:                       ; preds = %bb.al, %bb.am
  %.sink591 = phi { i32, ptr } [ %i.ek, %bb.al ], [ %i.em, %bb.am ] ; 2 uses
  %i.eo = extractvalue { i32, ptr } %.sink591, 0  ; 3 uses
  %i.ep = extractvalue { i32, ptr } %.sink591, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.eo, ptr %i.ep, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !110
  %.not.i261 = icmp eq i32 %i.eo, 0
  br i1 %.not.i261, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %A1C_Item_tryGetMap.exit260
  store i32 %25, ptr %0, align 8
  store i64 %24, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.eq = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.eo, ptr %i.ep, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 316, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.er = extractvalue { i32, ptr } %i.eq, 0
  store i32 %i.er, ptr %0, align 8
  %i.es = extractvalue { i32, ptr } %i.eq, 1
  store ptr %i.es, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  br label %.critedge162

bb.ao:                                            ; preds = %A1C_Item_tryGetMap.exit260, %A1C_Item_tryGetMap.exit260.thread
  %.sroa.4.0.i262.ph = phi i64 [ %.sroa.8.8.copyload, %A1C_Item_tryGetMap.exit260.thread ], [ 0, %A1C_Item_tryGetMap.exit260 ]
  %.sroa.02.0.i263.ph = phi ptr [ %.sroa.5.8.copyload, %A1C_Item_tryGetMap.exit260.thread ], [ %i.ep, %A1C_Item_tryGetMap.exit260 ]
  store ptr %.sroa.02.0.i263.ph, ptr %21, align 8
  store i64 %.sroa.4.0.i262.ph, ptr %i.ed, align 8
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %.0114493
  %i.eu = call fastcc { i32, i64 } @cbor_deserializeTypeSuccessor(ptr noundef %1, ptr noundef %21, ptr noundef nonnull %i.et) ; 2 uses
  %i.ev = extractvalue { i32, i64 } %i.eu, 0      ; 5 uses
  %26 = extractvalue { i32, i64 } %i.eu, 1        ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  %.not145 = icmp eq i32 %i.ev, 0
  br i1 %.not145, label %.critedge160, label %bb.ap, !prof !28

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.ev, ptr %0, align 8
  store i64 %26, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ew = inttoptr i64 %26 to ptr
  %i.ex = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.ev, ptr %i.ew, ptr nonnull @ZL_Clustering_deserializeClusteringConfig.__zl_static_error_info.55, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_Clustering_deserializeClusteringConfig, i32 noundef 318, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #16 ; 2 uses
  %i.ey = extractvalue { i32, ptr } %i.ex, 0
  %i.ez = extractvalue { i32, ptr } %i.ex, 1
  store i32 %i.ey, ptr %0, align 8, !tbaa !34
  store ptr %i.ez, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !50
  br label %.critedge162

.critedge160:                                     ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.fa = add nuw i64 %.0114493, 1                ; 2 uses
  %exitcond511.not = icmp eq i64 %i.fa, %.sroa.4.0.i246.ph
  br i1 %exitcond511.not, label %.critedge164.loopexit, label %bb.ak, !llvm.loop !100

.critedge162:                                     ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.aq

.critedge164.loopexit:                            ; preds = %.critedge160
  store i32 %i.ev, ptr %0, align 8
  store i64 %26, ptr %.sroa.415.0..sroa_idx, align 8
  br label %.critedge164

.critedge164:                                     ; preds = %.critedge164.loopexit, %.critedge160.preheader
  store i32 0, ptr %0, align 8, !tbaa !112
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.fc, align 8, !tbaa !51
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i179.ph, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !38
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ec, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !51
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.4.0.i246.ph, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !38
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge162, %bb.aj, %.critedge164, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge156, %.critedge166, %.critedge168, %.critedge154, %bb.k, %bb.j, %bb.aq, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  ret void
}

declare void @A1C_Decoder_init(ptr noundef, ptr, ptr, ptr noundef byval(%struct.A1C_DecoderConfig) align 8) local_unnamed_addr #4

declare ptr @A1C_Decoder_decode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @A1C_Map_get_cstr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @ZL_runtimeNodeInputLimit(i32 noundef) local_unnamed_addr #4

declare ptr @A1C_Array_get(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc { i32, i64 } @cbor_deserializeTypeSuccessor(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_ErrorContext_getOperationContext(ptr noundef %0) #17
  store ptr %i.b, ptr %7, align 8, !tbaa !22
  %i.c = tail call ptr @A1C_Map_get_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.63) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread.i, label %bb.b, !prof !23

.thread.i:                                        ; preds = %bb.a
  %i.d = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16
  br label %A1C_Item_tryGetInt64.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not16.i = icmp eq i32 %i.e, 1
  br i1 %.not16.i, label %A1C_Item_tryGetInt64.exit.thread, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info.80, ptr noundef nonnull %6, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.82, i32 noundef %i.e, i32 noundef 1) #16
  br label %A1C_Item_tryGetInt64.exit

A1C_Item_tryGetInt64.exit.thread:                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.e

A1C_Item_tryGetInt64.exit:                        ; preds = %.thread.i, %bb.c
  %.sink147 = phi { i32, ptr } [ %i.d, %.thread.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.i = extractvalue { i32, ptr } %.sink147, 0   ; 3 uses
  %i.j = extractvalue { i32, ptr } %.sink147, 1   ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  %.sroa.7.2.i = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not.i29 = icmp eq i32 %i.i, 0
  br i1 %.not.i29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %A1C_Item_tryGetInt64.exit
  %i.k = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.i, ptr %i.j, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cbor_deserializeTypeSuccessor, i32 noundef 241, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.k, 0
  %i.m = extractvalue { i32, ptr } %i.k, 1
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.r

bb.e:                                             ; preds = %A1C_Item_tryGetInt64.exit, %A1C_Item_tryGetInt64.exit.thread
  %.0.i.ph = phi i64 [ %i.h, %A1C_Item_tryGetInt64.exit.thread ], [ %.sroa.7.2.i, %A1C_Item_tryGetInt64.exit ]
  %i.o = trunc i64 %.0.i.ph to i32
  store i32 %i.o, ptr %2, align 8, !tbaa !43
  %i.p = call ptr @A1C_Map_get_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.64) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %.not.i30 = icmp eq ptr %i.p, null
  br i1 %.not.i30, label %.thread.i36, label %bb.f, !prof !23

.thread.i36:                                      ; preds = %bb.e
  %i.q = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16
  br label %A1C_Item_tryGetInt64.exit37

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %.not16.i31 = icmp eq i32 %i.r, 1
  br i1 %.not16.i31, label %A1C_Item_tryGetInt64.exit37.thread, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.s = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info.80, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.82, i32 noundef %i.r, i32 noundef 1) #16
  br label %A1C_Item_tryGetInt64.exit37

A1C_Item_tryGetInt64.exit37.thread:               ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.i

A1C_Item_tryGetInt64.exit37:                      ; preds = %.thread.i36, %bb.g
  %.sink150 = phi { i32, ptr } [ %i.q, %.thread.i36 ], [ %i.s, %bb.g ] ; 2 uses
  %i.v = extractvalue { i32, ptr } %.sink150, 0   ; 3 uses
  %i.w = extractvalue { i32, ptr } %.sink150, 1   ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.v, ptr %i.w, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  %.sroa.7.2.i33 = ptrtoint ptr %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i38 = icmp eq i32 %i.v, 0
  br i1 %.not.i38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %A1C_Item_tryGetInt64.exit37
  %i.x = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.v, ptr %i.w, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cbor_deserializeTypeSuccessor, i32 noundef 244, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0
  %i.z = extractvalue { i32, ptr } %i.x, 1
  %i.aa = ptrtoint ptr %i.z to i64
  br label %bb.r

bb.i:                                             ; preds = %A1C_Item_tryGetInt64.exit37, %A1C_Item_tryGetInt64.exit37.thread
  %.0.i40.ph = phi i64 [ %i.u, %A1C_Item_tryGetInt64.exit37.thread ], [ %.sroa.7.2.i33, %A1C_Item_tryGetInt64.exit37 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i40.ph, ptr %i.ab, align 8, !tbaa !44
  %i.ac = call ptr @A1C_Map_get_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.65) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not.i43 = icmp eq ptr %i.ac, null
  br i1 %.not.i43, label %.thread.i49, label %bb.j, !prof !23

.thread.i49:                                      ; preds = %bb.i
  %i.ad = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16
  br label %A1C_Item_tryGetInt64.exit50

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %.not16.i44 = icmp eq i32 %i.ae, 1
  br i1 %.not16.i44, label %A1C_Item_tryGetInt64.exit50.thread, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.af = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info.80, ptr noundef nonnull %4, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.82, i32 noundef %i.ae, i32 noundef 1) #16
  br label %A1C_Item_tryGetInt64.exit50

A1C_Item_tryGetInt64.exit50.thread:               ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.m

A1C_Item_tryGetInt64.exit50:                      ; preds = %.thread.i49, %bb.k
  %.sink153 = phi { i32, ptr } [ %i.ad, %.thread.i49 ], [ %i.af, %bb.k ] ; 2 uses
  %i.ai = extractvalue { i32, ptr } %.sink153, 0  ; 3 uses
  %i.aj = extractvalue { i32, ptr } %.sink153, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ai, ptr %i.aj, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  %.sroa.7.2.i46 = ptrtoint ptr %i.aj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.not.i51 = icmp eq i32 %i.ai, 0
  br i1 %.not.i51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %A1C_Item_tryGetInt64.exit50
  %i.ak = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.ai, ptr %i.aj, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cbor_deserializeTypeSuccessor, i32 noundef 247, ptr noundef nonnull @.str.9) #16 ; 2 uses
  %i.al = extractvalue { i32, ptr } %i.ak, 0
  %i.am = extractvalue { i32, ptr } %i.ak, 1
  %i.an = ptrtoint ptr %i.am to i64
  br label %bb.r

bb.m:                                             ; preds = %A1C_Item_tryGetInt64.exit50, %A1C_Item_tryGetInt64.exit50.thread
  %.0.i53.ph = phi i64 [ %i.ah, %A1C_Item_tryGetInt64.exit50.thread ], [ %.sroa.7.2.i46, %A1C_Item_tryGetInt64.exit50 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.0.i53.ph, ptr %i.ao, align 8, !tbaa !45
  %i.ap = call ptr @A1C_Map_get_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.66) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %.thread.i62, label %bb.n, !prof !23

.thread.i62:                                      ; preds = %bb.m
  %i.aq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @A1C_Item_tryGetInt64.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.79, i32 noundef 225, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #16
  br label %A1C_Item_tryGetInt64.exit63

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@XXH_INLINE_XXH3_64bits_digest:bb.a
  %.val44.i43 = load i64, ptr %i.uc, align 1, !tbaa !38
  %i.ud = xor i64 %.val44.i43, %.val45.i42        ; 2 uses
  %i.ue = lshr i64 %i.ud, 33
  %i.uf = xor i64 %i.ue, %i.ud
  %i.ug = mul i64 %i.uf, -4417276706812531889     ; 2 uses
  %i.uh = lshr i64 %i.ug, 29
  %i.ui = xor i64 %i.uh, %i.ug
  %i.uj = mul i64 %i.ui, 1609587929392839161      ; 2 uses
  %i.uk = lshr i64 %i.uj, 32
  %i.ul = xor i64 %i.uk, %i.uj
  br label %XXH_INLINE_XXH3_64bits_withSeed.exit

bb.ae:                                            ; preds = %bb.w
  %i.um = icmp samesign ult i64 %i.h, 129
  br i1 %i.um, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.un = mul i64 %i.h, -7046029288634856825      ; 4 uses
  %i.uo = icmp samesign ugt i64 %i.h, 32
  br i1 %i.uo, label %bb.ag, label %XXH3_len_17to128_64b.exit.i23

bb.ag:                                            ; preds = %bb.af
  %i.up = icmp samesign ugt i64 %i.h, 64
  br i1 %i.up, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.uq = icmp samesign ugt i64 %i.h, 96
  br i1 %i.uq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.us = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.val31.i = load i64, ptr %i.ur, align 16, !tbaa !38
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val30.i = load i64, ptr %i.ut, align 8, !tbaa !38
  %.val29.i37 = load i64, ptr %i.us, align 1, !tbaa !38
  %i.uu = xor i64 %.val29.i37, %.val31.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.val28.i38 = load i64, ptr %i.uv, align 1, !tbaa !38
  %i.uw = xor i64 %.val28.i38, %.val30.i
  %i.ux = zext i64 %i.uu to i128
  %i.uy = zext i64 %i.uw to i128
  %i.uz = mul nuw i128 %i.uy, %i.ux               ; 2 uses
  %i.va = lshr i128 %i.uz, 64
  %i.vb = xor i128 %i.va, %i.uz
  %i.vc = trunc i128 %i.vb to i64
  %i.vd = add i64 %i.un, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.h ; 2 uses
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 -64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.val35.i = load i64, ptr %i.vf, align 1, !tbaa !38
  %i.vh = getelementptr inbounds i8, ptr %i.ve, i64 -56
  %.val34.i = load i64, ptr %i.vh, align 1, !tbaa !38
  %.val33.i39 = load i64, ptr %i.vg, align 1, !tbaa !38
  %i.vi = xor i64 %.val33.i39, %.val35.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.val32.i40 = load i64, ptr %i.vj, align 1, !tbaa !38
  %i.vk = xor i64 %.val32.i40, %.val34.i
  %i.vl = zext i64 %i.vi to i128
  %i.vm = zext i64 %i.vk to i128
  %i.vn = mul nuw i128 %i.vm, %i.vl               ; 2 uses
  %i.vo = lshr i128 %i.vn, 64
  %i.vp = xor i128 %i.vo, %i.vn
  %i.vq = trunc i128 %i.vp to i64
  %i.vr = add i64 %i.vd, %i.vq
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i4.i = phi i64 [ %i.vr, %bb.ai ], [ %i.un, %bb.ah ]
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.vt = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val23.i = load i64, ptr %i.vs, align 32, !tbaa !38
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val22.i = load i64, ptr %i.vu, align 8, !tbaa !38
  %.val21.i33 = load i64, ptr %i.vt, align 1, !tbaa !38
  %i.vv = xor i64 %.val21.i33, %.val23.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.val20.i34 = load i64, ptr %i.vw, align 1, !tbaa !38
  %i.vx = xor i64 %.val20.i34, %.val22.i
  %i.vy = zext i64 %i.vv to i128
  %i.vz = zext i64 %i.vx to i128
  %i.wa = mul nuw i128 %i.vz, %i.vy               ; 2 uses
  %i.wb = lshr i128 %i.wa, 64
  %i.wc = xor i128 %i.wb, %i.wa
  %i.wd = trunc i128 %i.wc to i64
  %i.we = add i64 %.0.i4.i, %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.h ; 2 uses
  %i.wg = getelementptr inbounds i8, ptr %i.wf, i64 -48
  %i.wh = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val27.i = load i64, ptr %i.wg, align 1, !tbaa !38
  %i.wi = getelementptr inbounds i8, ptr %i.wf, i64 -40
  %.val26.i = load i64, ptr %i.wi, align 1, !tbaa !38
  %.val25.i35 = load i64, ptr %i.wh, align 1, !tbaa !38
  %i.wj = xor i64 %.val25.i35, %.val27.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.val24.i36 = load i64, ptr %i.wk, align 1, !tbaa !38
  %i.wl = xor i64 %.val24.i36, %.val26.i
  %i.wm = zext i64 %i.wj to i128
  %i.wn = zext i64 %i.wl to i128
  %i.wo = mul nuw i128 %i.wn, %i.wm               ; 2 uses
  %i.wp = lshr i128 %i.wo, 64
  %i.wq = xor i128 %i.wp, %i.wo
  %i.wr = trunc i128 %i.wq to i64
  %i.ws = add i64 %i.we, %i.wr
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.1.i.i28 = phi i64 [ %i.ws, %bb.aj ], [ %i.un, %bb.ag ]
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.wu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val15.i = load i64, ptr %i.wt, align 16, !tbaa !38
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val14.i = load i64, ptr %i.wv, align 8, !tbaa !38
  %.val13.i29 = load i64, ptr %i.wu, align 1, !tbaa !38
  %i.ww = xor i64 %.val13.i29, %.val15.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val12.i30 = load i64, ptr %i.wx, align 1, !tbaa !38
  %i.wy = xor i64 %.val12.i30, %.val14.i
  %i.wz = zext i64 %i.ww to i128
  %i.xa = zext i64 %i.wy to i128
  %i.xb = mul nuw i128 %i.xa, %i.wz               ; 2 uses
  %i.xc = lshr i128 %i.xb, 64
  %i.xd = xor i128 %i.xc, %i.xb
  %i.xe = trunc i128 %i.xd to i64
  %i.xf = add i64 %.1.i.i28, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.h ; 2 uses
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 -32
  %i.xi = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val19.i = load i64, ptr %i.xh, align 1, !tbaa !38
  %i.xj = getelementptr inbounds i8, ptr %i.xg, i64 -24
  %.val18.i = load i64, ptr %i.xj, align 1, !tbaa !38
  %.val17.i31 = load i64, ptr %i.xi, align 1, !tbaa !38
  %i.xk = xor i64 %.val17.i31, %.val19.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val16.i32 = load i64, ptr %i.xl, align 1, !tbaa !38
  %i.xm = xor i64 %.val16.i32, %.val18.i
  %i.xn = zext i64 %i.xk to i128
  %i.xo = zext i64 %i.xm to i128
  %i.xp = mul nuw i128 %i.xo, %i.xn               ; 2 uses
  %i.xq = lshr i128 %i.xp, 64
  %i.xr = xor i128 %i.xq, %i.xp
  %i.xs = trunc i128 %i.xr to i64
  %i.xt = add i64 %i.xf, %i.xs
  br label %XXH3_len_17to128_64b.exit.i23

XXH3_len_17to128_64b.exit.i23:                    ; preds = %bb.ak, %bb.af
  %.2.i.i24 = phi i64 [ %i.xt, %bb.ak ], [ %i.un, %bb.af ]
  %.val7.i = load i64, ptr %i.ju, align 32, !tbaa !38
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val6.i = load i64, ptr %i.xu, align 8, !tbaa !38
  %.val5.i25 = load i64, ptr %i.f, align 1, !tbaa !38
  %i.xv = xor i64 %.val5.i25, %.val7.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i = load i64, ptr %i.xw, align 1, !tbaa !38
  %i.xx = xor i64 %.val.i, %.val6.i
  %i.xy = zext i64 %i.xv to i128
  %i.xz = zext i64 %i.xx to i128
  %i.ya = mul nuw i128 %i.xz, %i.xy               ; 2 uses
  %i.yb = lshr i128 %i.ya, 64
  %i.yc = xor i128 %i.yb, %i.ya
  %i.yd = trunc i128 %i.yc to i64
  %i.ye = add i64 %.2.i.i24, %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.h ; 2 uses
  %i.yg = getelementptr inbounds i8, ptr %i.yf, i64 -16
  %i.yh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val11.i = load i64, ptr %i.yg, align 1, !tbaa !38
  %i.yi = getelementptr inbounds i8, ptr %i.yf, i64 -8
  %.val10.i = load i64, ptr %i.yi, align 1, !tbaa !38
  %.val9.i26 = load i64, ptr %i.yh, align 1, !tbaa !38
  %i.yj = xor i64 %.val9.i26, %.val11.i
  %i.yk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val8.i27 = load i64, ptr %i.yk, align 1, !tbaa !38
  %i.yl = xor i64 %.val8.i27, %.val10.i
  %i.ym = zext i64 %i.yj to i128
  %i.yn = zext i64 %i.yl to i128
  %i.yo = mul nuw i128 %i.yn, %i.ym               ; 2 uses
  %i.yp = lshr i128 %i.yo, 64
  %i.yq = xor i128 %i.yp, %i.yo
  %i.yr = trunc i128 %i.yq to i64
  %i.ys = add i64 %i.ye, %i.yr                    ; 2 uses
  %i.yt = lshr i64 %i.ys, 37
  %i.yu = xor i64 %i.yt, %i.ys
  %i.yv = mul i64 %i.yu, 1609587791953885689      ; 2 uses
  %i.yw = lshr i64 %i.yv, 32
  %i.yx = xor i64 %i.yw, %i.yv
  br label %XXH_INLINE_XXH3_64bits_withSeed.exit

bb.al:                                            ; preds = %bb.ae
  %i.yy = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %i.ju, i64 noundef range(i64 0, 241) %i.h, ptr noundef nonnull readonly %i.f, i64 noundef 0) #18
  br label %XXH_INLINE_XXH3_64bits_withSeed.exit

XXH_INLINE_XXH3_64bits_withSeed.exit:             ; preds = %bb.al, %XXH3_len_17to128_64b.exit.i23, %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.v, %XXH3_len_17to128_64b.exit.i, %bb.n, %bb.m, %bb.k, %bb.i, %XXH3_digest_long.exit
  %.0 = phi i64 [ %i.jr, %XXH3_digest_long.exit ], [ %i.nb, %bb.n ], [ %i.rd, %bb.v ], [ %i.rc, %XXH3_len_17to128_64b.exit.i ], [ %i.kt, %bb.i ], [ %i.ls, %bb.k ], [ %i.ms, %bb.m ], [ %i.yy, %bb.al ], [ %i.yx, %XXH3_len_17to128_64b.exit.i23 ], [ %i.se, %bb.y ], [ %i.ta, %bb.aa ], [ %i.ua, %bb.ac ], [ %i.ul, %bb.ad ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @XXH3_update_regular(ptr nofree noundef nonnull captures(address) %0, ptr noundef captures(address) %1, i64 noundef range(i64 4, 9) %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67, !alias.scope !243, !noalias !242 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !79, !alias.scope !243, !noalias !242
  %i.i = add i64 %i.h, %2
  store i64 %i.i, ptr %i.g, align 16, !tbaa !79, !alias.scope !243, !noalias !242
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.k = load i32, ptr %i.j, align 64, !tbaa !80, !alias.scope !243, !noalias !242 ; 5 uses
  %i.l = icmp ult i32 %i.k, 257
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw nsw i32 256, %i.k
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %.not.i.not = icmp samesign ugt i64 %2, %i.n
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = zext nneg i32 %i.k to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 range(i64 4, 9) %2, i1 false), !alias.scope !244
  %i.r = trunc nuw nsw i64 %2 to i32
  %i.s = load i32, ptr %i.j, align 64, !tbaa !80, !alias.scope !243, !noalias !242
  %i.t = add i32 %i.s, %i.r
  br label %XXH3_update.exit

bb.c:                                             ; preds = %bb.a
  %.not74.i = icmp eq i32 %i.k, 0
  br i1 %.not74.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.v = zext nneg i32 %i.k to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.n, i1 false), !alias.scope !244
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !69, !alias.scope !243, !noalias !242 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ac = load i64, ptr %i.ab, align 32, !tbaa !68, !alias.scope !243, !noalias !242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !38, !alias.scope !246, !noalias !247 ; 3 uses
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ae ; 2 uses
  %i.ag = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not.i3 = icmp ugt i64 %i.ag, 4
  %.pre74.pre = load <2 x i64>, ptr %0, align 64, !tbaa !50, !noalias !248 ; 2 uses
  %.phi.trans.insert79.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %.not.i3, label %..thread_crit_edge, label %.preheader36

..thread_crit_edge:                               ; preds = %bb.d
  %.phi.trans.insert75.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre76.pre = load <2 x i64>, ptr %.phi.trans.insert75.phi.trans.insert, align 16, !tbaa !50, !alias.scope !249, !noalias !250
  %.phi.trans.insert77.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre78.pre = load <2 x i64>, ptr %.phi.trans.insert77.phi.trans.insert, align 32, !tbaa !50, !alias.scope !249, !noalias !250
  %.pre80.pre = load <2 x i64>, ptr %.phi.trans.insert79.phi.trans.insert, align 16, !tbaa !50, !alias.scope !249, !noalias !250
  br label %.thread

.preheader36:                                     ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !242
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  br label %bb.e

bb.e:                                             ; preds = %.preheader36, %XXH3_accumulate_sse2.exit47.i9
  %.pre68 = phi <2 x i64> [ %i.dk, %XXH3_accumulate_sse2.exit47.i9 ], [ %.pre74.pre, %.preheader36 ] ; 2 uses
  %.038.i4 = phi i64 [ %i.eu, %XXH3_accumulate_sse2.exit47.i9 ], [ 4, %.preheader36 ]
  %.036.i5 = phi ptr [ %i.et, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.u, %.preheader36 ] ; 2 uses
  %.035.i6 = phi ptr [ %i.f, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.af, %.preheader36 ]
  %.0.i7 = phi i64 [ %i.aa, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.ag, %.preheader36 ] ; 4 uses
  %.not = icmp eq i64 %.0.i7, 0
  br i1 %.not, label %.XXH3_accumulate_sse2.exit47.i9_crit_edge, label %.lr.ph

.XXH3_accumulate_sse2.exit47.i9_crit_edge:        ; preds = %bb.e
  %.pre = load <2 x i64>, ptr %.phi.trans.insert69, align 16, !tbaa !50, !alias.scope !251, !noalias !252
  %.pre71 = load <2 x i64>, ptr %.phi.trans.insert70, align 32, !tbaa !50, !alias.scope !251, !noalias !252
  %.pre73 = load <2 x i64>, ptr %.phi.trans.insert72, align 16, !tbaa !50, !alias.scope !251, !noalias !252
  br label %XXH3_accumulate_sse2.exit47.i9

.lr.ph:                                           ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !248
  %.pre63 = load <2 x i64>, ptr %.phi.trans.insert, align 16, !tbaa !50, !alias.scope !253, !noalias !254
  %.pre65 = load <2 x i64>, ptr %.phi.trans.insert64, align 32, !tbaa !50, !alias.scope !253, !noalias !254
  %.pre67 = load <2 x i64>, ptr %.phi.trans.insert79.phi.trans.insert, align 16, !tbaa !50, !alias.scope !253, !noalias !254
  br label %XXH3_accumulate_512_sse2.exit

XXH3_accumulate_512_sse2.exit:                    ; preds = %.lr.ph, %XXH3_accumulate_512_sse2.exit
  %i.ao = phi <2 x i64> [ %.pre67, %.lr.ph ], [ %i.cu, %XXH3_accumulate_512_sse2.exit ]
  %i.ap = phi <2 x i64> [ %.pre65, %.lr.ph ], [ %i.ch, %XXH3_accumulate_512_sse2.exit ]
  %i.aq = phi <2 x i64> [ %.pre63, %.lr.ph ], [ %i.bu, %XXH3_accumulate_512_sse2.exit ]
  %i.ar = phi <2 x i64> [ %.pre68, %.lr.ph ], [ %i.bh, %XXH3_accumulate_512_sse2.exit ]
  %.0.i46.i841 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %XXH3_accumulate_512_sse2.exit ] ; 3 uses
  %i.as = shl i64 %.0.i46.i841, 6
  %i.at = getelementptr inbounds nuw i8, ptr %.036.i5, i64 %i.as ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.au, i32 0, i32 3, i32 1), !noalias !248
  %i.av = shl i64 %.0.i46.i841, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %.035.i6, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.ax = load <2 x i64>, ptr %i.at, align 1, !tbaa !50, !noalias !255 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 1, !tbaa !50, !noalias !255
  %i.az = xor <2 x i64> %i.ay, %i.ax              ; 2 uses
  %i.ba = bitcast <2 x i64> %i.az to <4 x i32>
  %i.bb = and <2 x i64> %i.az, splat (i64 4294967295)
  %i.bc = and <4 x i32> %i.ba, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bd = bitcast <4 x i32> %.inner to <2 x i64>
  %i.be = mul nuw <2 x i64> %i.bb, %i.bd
  %i.bf = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = add <2 x i64> %i.ar, %i.bf
  %i.bh = add <2 x i64> %i.bg, %i.be              ; 3 uses
  store <2 x i64> %i.bh, ptr %0, align 64, !tbaa !50, !alias.scope !253, !noalias !254
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bj = load <2 x i64>, ptr %i.bi, align 1, !tbaa !50, !noalias !255 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bl = load <2 x i64>, ptr %i.bk, align 1, !tbaa !50, !noalias !255
  %i.bm = xor <2 x i64> %i.bl, %i.bj              ; 2 uses
  %i.bn = bitcast <2 x i64> %i.bm to <4 x i32>
  %i.bo = and <2 x i64> %i.bm, splat (i64 4294967295)
  %i.bp = and <4 x i32> %i.bn, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner16 = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bq = bitcast <4 x i32> %.inner16 to <2 x i64>
  %i.br = mul nuw <2 x i64> %i.bo, %i.bq
  %i.bs = shufflevector <2 x i64> %i.bj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = add <2 x i64> %i.aq, %i.bs
  %i.bu = add <2 x i64> %i.bt, %i.br              ; 3 uses
  store <2 x i64> %i.bu, ptr %.phi.trans.insert, align 16, !tbaa !50, !alias.scope !253, !noalias !254
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bw = load <2 x i64>, ptr %i.bv, align 1, !tbaa !50, !noalias !255 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.by = load <2 x i64>, ptr %i.bx, align 1, !tbaa !50, !noalias !255
  %i.bz = xor <2 x i64> %i.by, %i.bw              ; 2 uses
  %i.ca = bitcast <2 x i64> %i.bz to <4 x i32>
  %i.cb = and <2 x i64> %i.bz, splat (i64 4294967295)
  %i.cc = and <4 x i32> %i.ca, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner17 = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cd = bitcast <4 x i32> %.inner17 to <2 x i64>
  %i.ce = mul nuw <2 x i64> %i.cb, %i.cd
  %i.cf = shufflevector <2 x i64> %i.bw, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = add <2 x i64> %i.ap, %i.cf
  %i.ch = add <2 x i64> %i.cg, %i.ce              ; 3 uses
  store <2 x i64> %i.ch, ptr %.phi.trans.insert64, align 32, !tbaa !50, !alias.scope !253, !noalias !254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.cj = load <2 x i64>, ptr %i.ci, align 1, !tbaa !50, !noalias !255 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.cl = load <2 x i64>, ptr %i.ck, align 1, !tbaa !50, !noalias !255
  %i.cm = xor <2 x i64> %i.cl, %i.cj              ; 2 uses
  %i.cn = bitcast <2 x i64> %i.cm to <4 x i32>
  %i.co = and <2 x i64> %i.cm, splat (i64 4294967295)
  %i.cp = and <4 x i32> %i.cn, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner18 = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cq = bitcast <4 x i32> %.inner18 to <2 x i64>
  %i.cr = mul nuw <2 x i64> %i.co, %i.cq
  %i.cs = shufflevector <2 x i64> %i.cj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = add <2 x i64> %i.ao, %i.cs
  %i.cu = add <2 x i64> %i.ct, %i.cr              ; 3 uses
  store <2 x i64> %i.cu, ptr %.phi.trans.insert79.phi.trans.insert, align 16, !tbaa !50, !alias.scope !253, !noalias !254
  %i.cv = add nuw i64 %.0.i46.i841, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %.0.i7
  br i1 %exitcond.not, label %XXH3_accumulate_sse2.exit47.i9, label %XXH3_accumulate_512_sse2.exit, !llvm.loop !3

XXH3_accumulate_sse2.exit47.i9:                   ; preds = %XXH3_accumulate_512_sse2.exit, %.XXH3_accumulate_sse2.exit47.i9_crit_edge
  %i.cw = phi <2 x i64> [ %.pre73, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.cu, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.cx = phi <2 x i64> [ %.pre71, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.ch, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.cy = phi <2 x i64> [ %.pre, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.bu, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.cz = phi <2 x i64> [ %.pre68, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.bh, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256), !noalias !242
  %i.da = lshr <2 x i64> %i.cz, splat (i64 47)
  %i.db = load <2 x i64>, ptr %i.ah, align 1, !tbaa !50, !noalias !257
  %i.dc = xor <2 x i64> %i.db, %i.da
  %i.dd = xor <2 x i64> %i.dc, %i.cz              ; 2 uses
  %i.de = bitcast <2 x i64> %i.dd to <4 x i32>
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dg = bitcast <4 x i32> %i.df to <2 x i64>
  %i.dh = and <2 x i64> %i.dd, splat (i64 4294967295)
  %i.di = mul nuw <2 x i64> %i.dh, splat (i64 2654435761)
  %i.dj = mul <2 x i64> %i.dg, splat (i64 -7046029290881679360)
  %i.dk = add <2 x i64> %i.dj, %i.di              ; 3 uses
  store <2 x i64> %i.dk, ptr %0, align 64, !tbaa !50, !alias.scope !251, !noalias !252
  %i.dl = lshr <2 x i64> %i.cy, splat (i64 47)
  %i.dm = load <2 x i64>, ptr %i.aj, align 1, !tbaa !50, !noalias !257
  %i.dn = xor <2 x i64> %i.dm, %i.dl
end_hunk_1
