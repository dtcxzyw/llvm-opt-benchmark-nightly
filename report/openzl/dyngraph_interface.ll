Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/dyngraph_interface?download=true
inline.NumInlined: 48
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZL_Edge_runMultiInputNode_withParams:bb.a
bb.r:                                             ; preds = %bb.q
  %i.dv = icmp ugt i32 %i.dp, 511
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dw = lshr i64 %i.dq, 2
  %i.dx = add nuw nsw i64 %i.dw, %i.dq
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dy = shl nuw nsw i32 %i.dp, 1
  %i.dz = zext nneg i32 %i.dy to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i.i = phi i64 [ %i.dz, %bb.t ], [ %i.dx, %bb.s ], [ 4, %bb.q ] ; 2 uses
  %i.ea = icmp samesign ult i64 %.0.i.i.i, %i.dq
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %.0.i.i.i, i64 %i.ds)
  %.010.i.i.i = select i1 %i.ea, i64 %i.ds, i64 %spec.select.i.i.i
  %spec.select.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 %.010.i.i.i) ; 2 uses
  %i.eb = shl nuw nsw i64 %spec.select.i.i, 4     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ed, null
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre, i64 56 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !21 ; 2 uses
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.ed, ptr noundef %i.ef, i64 noundef %i.eb) #11
  br label %GenericVector_reallocData.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.eh = call ptr @ZL_realloc(ptr noundef %i.ef, i64 noundef %i.eb) #11
  br label %GenericVector_reallocData.exit.i.i

GenericVector_reallocData.exit.i.i:               ; preds = %bb.w, %bb.v
  %.0.i28.i.i = phi ptr [ %i.eg, %bb.v ], [ %i.eh, %bb.w ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.0.i28.i.i, null
  br i1 %.not26.i.i, label %GenericVector_reallocData.exit._crit_edge.i.i, label %GenericVector_reserve.exit.thread.i

GenericVector_reallocData.exit._crit_edge.i.i:    ; preds = %GenericVector_reallocData.exit.i.i
  %.022.in.pre.i.i = load i32, ptr %i.do, align 4, !tbaa !29
  %i.ei = zext i32 %.022.in.pre.i.i to i64
  %i.ej = icmp samesign ugt i64 %i.dn, %i.ei
  br i1 %i.ej, label %GenericVector_reallocData.exit._crit_edge.i..critedge25_crit_edge.i, label %.critedge200.preheader

GenericVector_reallocData.exit._crit_edge.i..critedge25_crit_edge.i: ; preds = %GenericVector_reallocData.exit._crit_edge.i.i
  %.pre.i = load i32, ptr %i.dl, align 8, !tbaa !28
  %.pre26.i = zext i32 %.pre.i to i64
  br label %GenericVector_resize.exit

GenericVector_reserve.exit.thread.i:              ; preds = %GenericVector_reallocData.exit.i.i
  store ptr %.0.i28.i.i, ptr %i.ee, align 8, !tbaa !21
  %i.ek = trunc nuw i64 %spec.select.i.i to i32
  store i32 %i.ek, ptr %i.do, align 4, !tbaa !29
  br label %.critedge200.preheader

GenericVector_resize.exit:                        ; preds = %bb.p, %GenericVector_reallocData.exit._crit_edge.i..critedge25_crit_edge.i
  %.0.i201 = phi i64 [ %.pre26.i, %GenericVector_reallocData.exit._crit_edge.i..critedge25_crit_edge.i ], [ %i.dm, %bb.p ] ; 2 uses
  %.not186 = icmp samesign ugt i64 %i.dn, %.0.i201
  br i1 %.not186, label %bb.x, label %.lr.ph218, !prof !80

.critedge200.preheader:                           ; preds = %bb.o, %GenericVector_reallocData.exit._crit_edge.i.i, %GenericVector_reserve.exit.thread.i
  %i.el = trunc nuw i64 %i.dn to i32
  store i32 %i.el, ptr %i.dl, align 8, !tbaa !28
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %GenericVector_resize.exit, %.critedge200.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  br label %.critedge200

bb.x:                                             ; preds = %GenericVector_resize.exit
  %i.eo = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_runMultiInputNode_withParams.__zl_static_error_info.51, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 215, i32 noundef 70, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i64 noundef %i.dn, i64 noundef %.0.i201) #11 ; 2 uses
  %i.ep = extractvalue { i32, ptr } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { i32, ptr } %i.eo, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ep, ptr %i.eq, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  store i32 %i.ep, ptr %0, align 8, !tbaa !33
  store ptr %i.eq, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !51
  store i64 0, ptr %i.bd, align 8
  br label %bb.y

.critedge200._crit_edge:                          ; preds = %.critedge200, %.critedge198
  store i32 0, ptr %0, align 8, !tbaa !83
  store i32 0, ptr %.sroa.574.0..sroa_idx, align 4
  store ptr %i.cy, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !51
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !51
  br label %bb.y

.critedge200:                                     ; preds = %.lr.ph218, %.critedge200
  %.0169217 = phi i64 [ 0, %.lr.ph218 ], [ %i.fb, %.critedge200 ] ; 5 uses
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !58
  %i.es = trunc i64 %.0169217 to i32
  %i.et = load i32, ptr %6, align 4
  %i.eu = call i32 @RTGM_getOutStreamID(ptr noundef %i.er, i32 %i.et, i32 noundef %i.es) #11
  %i.ev = load ptr, ptr %i.en, align 8, !tbaa !51
  %i.ew = add nuw i64 %.0169217, %i.dm            ; 2 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ew ; 3 uses
  store i32 %i.eu, ptr %i.ex, align 8, !tbaa !33
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 0, ptr %.sroa.216.0..sroa_idx, align 4, !tbaa !33
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 0, ptr %.sroa.317.0..sroa_idx, align 8, !tbaa !59
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %.0169217 ; 4 uses
  %i.ez = trunc i64 %i.ew to i32
  store ptr %.pre, ptr %i.ey, align 8, !tbaa !32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 %i.ez, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 4
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0169217
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !47
  %i.fb = add nuw i64 %.0169217, 1                ; 2 uses
  %exitcond223.not = icmp eq i64 %i.fb, %i.bc
  br i1 %exitcond223.not, label %.critedge200._crit_edge, label %.critedge200, !llvm.loop !76

bb.y:                                             ; preds = %.thread211, %.thread209, %bb.x, %bb.n, %bb.l, %.critedge200._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %.thread, %bb.g, %bb.f, %bb.d, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define ptr @ZL_Edge_getOperationContext(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ZL_Graph_getOperationContext.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ZL_Graph_getOperationContext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = tail call ptr @ZL_CCtx_getOperationContext(ptr noundef %i.d) #12
  br label %ZL_Graph_getOperationContext.exit

ZL_Graph_getOperationContext.exit:                ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare ptr @ZL_Edge_getData(ptr noundef) local_unnamed_addr #1

declare { i32, i64 } @CCTX_runNodeID_wParams(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32, ptr noundef) local_unnamed_addr #1

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @RTGM_getOutStreamID(ptr noundef, i32, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @ZL_Edge_runNode(ptr dead_on_unwind noalias nofree writable writeonly sret(%union.ZL_Result_ZL_EdgeList_u) align 8 captures(none) %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !47
  call void @ZL_Edge_runMultiInputNode_withParams(ptr dead_on_unwind writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8 %0, ptr noundef nonnull readonly %i.a, i64 noundef 1, i32 %2, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ZL_Edge_runNode_withParams(ptr dead_on_unwind noalias nofree writable writeonly sret(%union.ZL_Result_ZL_EdgeList_u) align 8 captures(none) %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !47
  call void @ZL_Edge_runMultiInputNode_withParams(ptr dead_on_unwind writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8 %0, ptr noundef nonnull %i.a, i64 noundef 1, i32 %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @ZL_transferRuntimeGraphParams(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 11 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ALLOC_Arena_malloc(ptr noundef %0, i64 noundef 96) #11 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12
  store ptr %i.e, ptr %2, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @ALLOC_Arena_malloc(ptr noundef %0, i64 noundef 48) #11 ; 4 uses
  %.not81.i = icmp eq ptr %i.h, null
  br i1 %.not81.i, label %.thread.i, label %bb.e, !prof !87

.thread.i:                                        ; preds = %bb.d
  %i.i = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_transferRuntimeGraphParams_stage2.__zl_static_error_info.90, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.88, i32 noundef 291, i32 noundef 70, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null) #11 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.i, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.j, ptr %i.k, ptr noundef nonnull @.str.16, i64 noundef 48, ptr noundef nonnull @.str.93) #11
  br label %ZL_transferRuntimeGraphParams_stage2.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !tbaa.struct !88
  %i.m = tail call { i32, i64 } @LP_transferLocalParams(ptr noundef %0, ptr noundef nonnull %i.h) #11 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0        ; 2 uses
  %.not82.i = icmp eq i32 %i.n, 0
  br i1 %.not82.i, label %bb.g, label %bb.f, !prof !56

bb.f:                                             ; preds = %bb.e
  %i.o = extractvalue { i32, i64 } %i.m, 1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %i.n, ptr %i.p, ptr nonnull @ZL_transferRuntimeGraphParams_stage2.__zl_static_error_info.94, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.88, i32 noundef 293, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.6) #11
  %i.r = extractvalue { i32, ptr } %i.q, 0
  br label %ZL_transferRuntimeGraphParams_stage2.exit

bb.g:                                             ; preds = %bb.e
  store ptr %i.h, ptr %i.f, align 8, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !89   ; 3 uses
  %.not83.i = icmp eq i64 %i.t, 0
  br i1 %.not83.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.u, label %.thread95.i, label %bb.j, !prof !50

.thread95.i:                                      ; preds = %bb.i
  %i.v = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_transferRuntimeGraphParams_stage2.__zl_static_error_info.95, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.88, i32 noundef 299, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97) #11 ; 2 uses
  %i.w = extractvalue { i32, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i32, ptr } %i.v, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.w, ptr %i.x, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %ZL_transferRuntimeGraphParams_stage2.exit

bb.j:                                             ; preds = %bb.i
  %i.y = shl nuw i64 %i.t, 2
  %i.z = tail call ptr @ALLOC_Arena_malloc(ptr noundef %0, i64 noundef %i.y) #11 ; 3 uses
  %.not84.i = icmp eq ptr %i.z, null
  br i1 %.not84.i, label %.thread99.i, label %bb.k, !prof !50

.thread99.i:                                      ; preds = %bb.j
  %i.aa = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_transferRuntimeGraphParams_stage2.__zl_static_error_info.98, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.88, i32 noundef 299, i32 noundef 70, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null) #11 ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i32, ptr } %i.aa, 1
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !89
  %i.ae = shl i64 %i.ad, 2
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ab, ptr %i.ac, ptr noundef nonnull @.str.16, i64 noundef %i.ae, ptr noundef nonnull @.str.93) #11
  br label %ZL_transferRuntimeGraphParams_stage2.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !89
  %i.ai = shl i64 %i.ah, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr readonly align 1 %i.ag, i64 %i.ai, i1 false)
  store ptr %i.z, ptr %i.af, align 8, !tbaa !90
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !91 ; 3 uses
  %.not85.i = icmp eq i64 %i.ak, 0
  br i1 %.not85.i, label %ZL_transferRuntimeGraphParams_stage2.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp ugt i64 %i.ak, 4611686018427387903
  br i1 %i.al, label %.thread107.i, label %bb.n, !prof !50

.thread107.i:                                     ; preds = %bb.m
  %i.am = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_transferRuntimeGraphParams_stage2.__zl_static_error_info.101, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.88, i32 noundef 309, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.103) #11 ; 2 uses
  %i.an = extractvalue { i32, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i32, ptr } %i.am, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.an, ptr %i.ao, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %ZL_transferRuntimeGraphParams_stage2.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = shl nuw i64 %i.ak, 2
  %i.aq = tail call ptr @ALLOC_Arena_malloc(ptr noundef %0, i64 noundef %i.ap) #11 ; 3 uses
  %.not86.i = icmp eq ptr %i.aq, null
  br i1 %.not86.i, label %.thread111.i, label %bb.o, !prof !50

.thread111.i:                                     ; preds = %bb.n
  %i.ar = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_transferRuntimeGraphParams_stage2.__zl_static_error_info.104, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.88, i32 noundef 309, i32 noundef 70, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null) #11 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.ar, 1
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !91
  %i.av = shl i64 %i.au, 2
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.as, ptr %i.at, ptr noundef nonnull @.str.16, i64 noundef %i.av, ptr noundef nonnull @.str.93) #11
  br label %ZL_transferRuntimeGraphParams_stage2.exit

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !91
  %i.az = shl i64 %i.ay, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr readonly align 1 %i.ax, i64 %i.az, i1 false)
  store ptr %i.aq, ptr %i.aw, align 8, !tbaa !92
  br label %ZL_transferRuntimeGraphParams_stage2.exit.thread

ZL_transferRuntimeGraphParams_stage2.exit.thread: ; preds = %bb.l, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.p

ZL_transferRuntimeGraphParams_stage2.exit:        ; preds = %.thread.i, %bb.f, %.thread95.i, %.thread99.i, %.thread107.i, %.thread111.i
  %.sroa.073.11.i = phi i32 [ %i.an, %.thread107.i ], [ %i.ab, %.thread99.i ], [ %i.r, %bb.f ], [ %i.as, %.thread111.i ], [ %i.j, %.thread.i ], [ %i.w, %.thread95.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.sroa.073.11.i.fr = freeze i32 %.sroa.073.11.i
  %.not12 = icmp eq i32 %.sroa.073.11.i.fr, 0
  br i1 %.not12, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ZL_transferRuntimeGraphParams_stage2.exit.thread, %ZL_transferRuntimeGraphParams_stage2.exit
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ZL_transferRuntimeGraphParams_stage2.exit, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.b, %bb.p ], [ null, %ZL_transferRuntimeGraphParams_stage2.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_Edge_setDestination(ptr noundef %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !47
  %i.b = call { i32, i64 } @ZL_Edge_setParameterizedDestination(ptr noundef nonnull %i.a, i64 noundef 1, i32 %1, ptr noundef null)
  ret { i32, i64 } %i.b
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_Edge_setParameterizedDestination(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.e = tail call ptr @ZL_CCtx_getOperationContext(ptr noundef %i.d) #12
  store ptr %i.e, ptr %4, align 8, !tbaa !27
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !50

.thread:                                          ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_setParameterizedDestination.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 361, i32 noundef 42, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null) #11 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.g, ptr %i.h, ptr noundef nonnull @.str.60) #11
  %i.i = ptrtoint ptr %i.h to i64
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @CCTX_getCGraph(ptr noundef %i.d) #11 ; 3 uses
  %i.k = tail call i32 @CGRAPH_graphType(ptr noundef %i.j, i32 %2) #11
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.m = tail call ptr @CGRAPH_getSegmenterDesc(ptr noundef %i.j, i32 %2) #11 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !95, !range !44, !noundef !45
  %i.q = trunc nuw i8 %i.p to i1
  %.sroa.6.1168 = load i64, ptr %i.n, align 8, !tbaa !59 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @CGRAPH_getMultiInputGraphDesc(ptr noundef %i.j, i32 %2) #11 ; 4 uses
  %.not103.not = icmp eq ptr %i.r, null
  br i1 %.not103.not, label %.thread134, label %bb.d, !prof !50

.thread134:                                       ; preds = %bb.c
  %i.s = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_setParameterizedDestination.__zl_static_error_info.61, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 387, i32 noundef 30, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null) #11 ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i32, ptr } %i.s, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.t, ptr %i.u, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  %i.v = ptrtoint ptr %i.u to i64
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !96
  %.not173 = icmp eq i32 %i.y, 0
  %.sroa.6.1 = load i64, ptr %i.w, align 8, !tbaa !59 ; 2 uses
  br i1 %.not173, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %.sroa.6.1170 = phi i64 [ %.sroa.6.1168, %.split ], [ %.sroa.6.1, %bb.d ]
  %i.z = add i64 %.sroa.6.1170, -1                ; 2 uses
  %.not105 = icmp ult i64 %1, %i.z
  br i1 %.not105, label %.thread137, label %.thread140, !prof !50

.thread137:                                       ; preds = %bb.e
  %i.aa = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_setParameterizedDestination.__zl_static_error_info.64, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 401, i32 noundef 42, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %1, i64 noundef %i.z) #11 ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i32, ptr } %i.aa, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ab, ptr %i.ac, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %.critedge

bb.f:                                             ; preds = %.split, %bb.d
  %.sroa.054.1172.in = phi ptr [ %i.m, %.split ], [ %i.r, %bb.d ]
  %.sroa.6.1171 = phi i64 [ %.sroa.6.1168, %.split ], [ %.sroa.6.1, %bb.d ] ; 3 uses
  %.not104 = icmp eq i64 %1, %.sroa.6.1171
  br i1 %.not104, label %.thread140, label %bb.g, !prof !56

bb.g:                                             ; preds = %bb.f
  %.sroa.054.1172 = load ptr, ptr %.sroa.054.1172.in, align 8, !tbaa !60 ; 2 uses
  %i.ae = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_setParameterizedDestination.__zl_static_error_info.69, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 411, i32 noundef 42, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.71, i64 noundef %1, i64 noundef %.sroa.6.1171) #11 ; 2 uses
  %i.af = extractvalue { i32, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq ptr %.sroa.054.1172, null
  %i.ai = select i1 %i.ah, ptr @.str.6, ptr %.sroa.054.1172
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.af, ptr %i.ag, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.ai, i64 noundef %.sroa.6.1171, i64 noundef %1) #11
  %i.aj = ptrtoint ptr %i.ag to i64
  br label %.critedge

.thread140:                                       ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 6 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.b, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 6 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.ar = load ptr, ptr %0, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !55
  %.not106.peel = icmp eq i32 %i.ax, 0
  br i1 %.not106.peel, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.thread140
  store i32 1, ptr %i.aw, align 4, !tbaa !55
  %i.ay = load i32, ptr %i.al, align 8, !tbaa !28
  %i.az = load i32, ptr %i.am, align 4, !tbaa !29 ; 8 uses
  %.not.i.peel = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i.peel, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp eq i32 %i.az, 0                    ; 2 uses
  br i1 %i.ba, label %GenericVector_nextCapacity.exit.i.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp ugt i32 %i.az, 511
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = shl nuw nsw i32 %i.az, 1
  %i.bd = zext nneg i32 %i.bc to i64
  br label %GenericVector_nextCapacity.exit.i.peel

bb.l:                                             ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, %i.be
  br label %GenericVector_nextCapacity.exit.i.peel

GenericVector_nextCapacity.exit.i.peel:           ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.peel = phi i64 [ %i.bd, %bb.k ], [ %i.bg, %bb.l ], [ 4, %bb.i ] ; 2 uses
  %i.bh = zext i32 %i.az to i64                   ; 6 uses
  %i.bi = icmp samesign ult i64 %.0.i.i.peel, %i.bh
  %.val.pre.i.i.peel = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !30
  %.pre.i.i.peel = zext i32 %.val.pre.i.i.peel to i64 ; 4 uses
  %spec.select.i.i.peel = tail call i64 @llvm.umin.i64(i64 %.0.i.i.peel, i64 %.pre.i.i.peel)
  %.010.i.i.peel = select i1 %i.bi, i64 %.pre.i.i.peel, i64 %spec.select.i.i.peel ; 4 uses
  %i.bj = icmp eq i64 %.010.i.i.peel, %i.bh
  br i1 %i.bj, label %.loopexit154, label %bb.m

bb.m:                                             ; preds = %GenericVector_nextCapacity.exit.i.peel
  %.not.i.i.peel = icmp samesign ugt i64 %.010.i.i.peel, %i.bh
  br i1 %.not.i.i.peel, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  br i1 %i.ba, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = icmp ugt i32 %i.az, 511
  br i1 %i.bk, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = shl nuw nsw i32 %i.az, 1
  %i.bm = zext nneg i32 %i.bl to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bn = lshr i64 %i.bh, 2
  %i.bo = add nuw nsw i64 %i.bn, %i.bh
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.0.i.i.i.peel = phi i64 [ %i.bm, %bb.p ], [ %i.bo, %bb.q ], [ 4, %bb.n ] ; 2 uses
  %i.bp = icmp samesign ult i64 %.0.i.i.i.peel, %i.bh
  %spec.select.i.i.i.peel = tail call i64 @llvm.umin.i64(i64 %.0.i.i.i.peel, i64 %.pre.i.i.peel)
  %i.bq = tail call i64 @llvm.umax.i64(i64 %.010.i.i.peel, i64 %spec.select.i.i.i.peel)
  %spec.select.i18.i.peel = select i1 %i.bp, i64 %.pre.i.i.peel, i64 %i.bq ; 2 uses
  %i.br = shl nuw nsw i64 %spec.select.i18.i.peel, 2 ; 2 uses
  %i.bs = load ptr, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.peel = icmp eq ptr %i.bs, null
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  br i1 %.not.i.i.i.peel, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.bs, ptr noundef %i.bt, i64 noundef %i.br) #11
  br label %GenericVector_reallocData.exit.i.i.peel

bb.t:                                             ; preds = %bb.r
  %i.bv = tail call ptr @ZL_realloc(ptr noundef %i.bt, i64 noundef %i.br) #11
  br label %GenericVector_reallocData.exit.i.i.peel

GenericVector_reallocData.exit.i.i.peel:          ; preds = %bb.t, %bb.s
  %.0.i28.i.i.peel = phi ptr [ %i.bu, %bb.s ], [ %i.bv, %bb.t ] ; 2 uses
  %.not26.i.i.peel = icmp eq ptr %.0.i28.i.i.peel, null
  br i1 %.not26.i.i.peel, label %GenericVector_reallocData.exit._crit_edge.i.i.peel, label %.thread20.i.peel

.thread20.i.peel:                                 ; preds = %GenericVector_reallocData.exit.i.i.peel
  store ptr %.0.i28.i.i.peel, ptr %i.ao, align 8, !tbaa !21
  %i.bw = trunc nuw i64 %spec.select.i18.i.peel to i32
  store i32 %i.bw, ptr %i.am, align 4, !tbaa !29
  br label %bb.u

GenericVector_reallocData.exit._crit_edge.i.i.peel: ; preds = %GenericVector_reallocData.exit.i.i.peel
  %.022.in.pre.i.i.peel = load i32, ptr %i.am, align 4, !tbaa !29
  %i.bx = zext i32 %.022.in.pre.i.i.peel to i64
  %.not22.i.peel = icmp samesign ugt i64 %.010.i.i.peel, %i.bx
  br i1 %.not22.i.peel, label %.loopexit154, label %bb.u

bb.u:                                             ; preds = %GenericVector_reallocData.exit._crit_edge.i.i.peel, %.thread20.i.peel, %bb.m, %bb.h
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bz = load i32, ptr %i.al, align 8, !tbaa !28
  %i.ca = zext i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i32, ptr %i.av, align 4
  store i32 %i.cd, ptr %i.cc, align 1
  %i.ce = load i32, ptr %i.al, align 8, !tbaa !28
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.al, align 8, !tbaa !28
  %.val108.peel = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.cg = zext i32 %.val108.peel to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !97
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %.loopexit155, label %.peel.next

.peel.next:                                       ; preds = %bb.u, %bb.ai
  %i.ci = phi i32 [ %i.ek, %bb.ai ], [ %i.cf, %bb.u ]
  %.097152 = phi i64 [ %i.en, %bb.ai ], [ 1, %bb.u ] ; 2 uses
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.097152
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !52
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !55
  %.not106 = icmp eq i32 %i.cr, 0
  br i1 %.not106, label %bb.v, label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.thread140
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ct = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 422, i32 noundef 41, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.6) #11 ; 2 uses
  %i.cu = extractvalue { i32, ptr } %i.ct, 0
  %i.cv = extractvalue { i32, ptr } %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.cv, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !51
  %i.cw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_setParameterizedDestination.__zl_static_error_info.73, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 423, i32 noundef 41, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.6) #11 ; 2 uses
  %i.cx = extractvalue { i32, ptr } %i.cw, 0      ; 2 uses
  %i.cy = extractvalue { i32, ptr } %i.cw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cx, ptr %i.cy, ptr noundef nonnull @.str.76) #11
  %i.cz = ptrtoint ptr %i.cy to i64
  br label %.critedge

bb.v:                                             ; preds = %.peel.next
  store i32 2, ptr %i.cq, align 4, !tbaa !55
  %i.da = load i32, ptr %i.am, align 4, !tbaa !29 ; 8 uses
  %.not.i = icmp ult i32 %i.ci, %i.da
  br i1 %.not.i, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = icmp eq i32 %i.da, 0                    ; 2 uses
  br i1 %i.db, label %GenericVector_nextCapacity.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = icmp ugt i32 %i.da, 511
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = zext i32 %i.da to i64                   ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, %i.dd
  br label %GenericVector_nextCapacity.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dg = shl nuw nsw i32 %i.da, 1
  %i.dh = zext nneg i32 %i.dg to i64
  br label %GenericVector_nextCapacity.exit.i

GenericVector_nextCapacity.exit.i:                ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i = phi i64 [ %i.dh, %bb.z ], [ %i.df, %bb.y ], [ 4, %bb.w ] ; 2 uses
  %i.di = zext i32 %i.da to i64                   ; 6 uses
  %i.dj = icmp samesign ult i64 %.0.i.i, %i.di
  %.val.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !30
  %.pre.i.i = zext i32 %.val.pre.i.i to i64       ; 4 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %.pre.i.i)
  %.010.i.i = select i1 %i.dj, i64 %.pre.i.i, i64 %spec.select.i.i ; 4 uses
  %i.dk = icmp eq i64 %.010.i.i, %i.di
  br i1 %i.dk, label %.loopexit154, label %bb.aa

bb.aa:                                            ; preds = %GenericVector_nextCapacity.exit.i
  %.not.i.i = icmp samesign ugt i64 %.010.i.i, %i.di
  br i1 %.not.i.i, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.db, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = icmp ugt i32 %i.da, 511
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = lshr i64 %i.di, 2
  %i.dn = add nuw nsw i64 %i.dm, %i.di
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.do = shl nuw nsw i32 %i.da, 1
  %i.dp = zext nneg i32 %i.do to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i.i.i = phi i64 [ %i.dp, %bb.ae ], [ %i.dn, %bb.ad ], [ 4, %bb.ab ] ; 2 uses
  %i.dq = icmp samesign ult i64 %.0.i.i.i, %i.di
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i.i, i64 %.pre.i.i)
  %i.dr = tail call i64 @llvm.umax.i64(i64 %.010.i.i, i64 %spec.select.i.i.i)
  %spec.select.i18.i = select i1 %i.dq, i64 %.pre.i.i, i64 %i.dr ; 2 uses
  %i.ds = shl nuw nsw i64 %spec.select.i18.i, 2   ; 2 uses
  %i.dt = load ptr, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.dt, ptr noundef %i.du, i64 noundef %i.ds) #11
  br label %GenericVector_reallocData.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dw = tail call ptr @ZL_realloc(ptr noundef %i.du, i64 noundef %i.ds) #11
  br label %GenericVector_reallocData.exit.i.i

GenericVector_reallocData.exit.i.i:               ; preds = %bb.ah, %bb.ag
  %.0.i28.i.i = phi ptr [ %i.dv, %bb.ag ], [ %i.dw, %bb.ah ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.0.i28.i.i, null
  br i1 %.not26.i.i, label %GenericVector_reallocData.exit._crit_edge.i.i, label %.thread20.i

GenericVector_reallocData.exit._crit_edge.i.i:    ; preds = %GenericVector_reallocData.exit.i.i
  %.022.in.pre.i.i = load i32, ptr %i.am, align 4, !tbaa !29
  %i.dx = zext i32 %.022.in.pre.i.i to i64
  %.not22.i = icmp samesign ugt i64 %.010.i.i, %i.dx
  br i1 %.not22.i, label %.loopexit154, label %bb.ai

.thread20.i:                                      ; preds = %GenericVector_reallocData.exit.i.i
  store ptr %.0.i28.i.i, ptr %i.ao, align 8, !tbaa !21
  %i.dy = trunc nuw i64 %spec.select.i18.i to i32
  store i32 %i.dy, ptr %i.am, align 4, !tbaa !29
  br label %bb.ai

.loopexit154:                                     ; preds = %GenericVector_reallocData.exit._crit_edge.i.i, %GenericVector_nextCapacity.exit.i, %GenericVector_reallocData.exit._crit_edge.i.i.peel, %GenericVector_nextCapacity.exit.i.peel
  %i.dz = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_setParameterizedDestination.__zl_static_error_info.77, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 428, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79) #11 ; 2 uses
  %i.ea = extractvalue { i32, ptr } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { i32, ptr } %i.dz, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ea, ptr %i.eb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  %i.ec = ptrtoint ptr %i.eb to i64
  br label %.critedge

bb.ai:                                            ; preds = %.thread20.i, %GenericVector_reallocData.exit._crit_edge.i.i, %bb.aa, %bb.v
  %i.ed = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.ee = load i32, ptr %i.al, align 8, !tbaa !28
  %i.ef = zext i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  %i.ei = load i32, ptr %i.cp, align 4
  store i32 %i.ei, ptr %i.eh, align 1
  %i.ej = load i32, ptr %i.al, align 8, !tbaa !28
  %i.ek = add i32 %i.ej, 1                        ; 2 uses
  store i32 %i.ek, ptr %i.al, align 8, !tbaa !28
  %.val108 = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.el = zext i32 %.val108 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !97
  %i.en = add nuw i64 %.097152, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.en, %1
  br i1 %exitcond.not, label %.loopexit155, label %.peel.next, !llvm.loop !93

.loopexit155:                                     ; preds = %bb.ai, %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !99
  %i.eq = tail call ptr @ZL_transferRuntimeGraphParams(ptr noundef %i.ep, ptr noundef %3)
  %.val = load i32, ptr %i.al, align 8, !tbaa !28
  %i.er = zext i32 %.val to i64
  %i.es = sub i64 %i.er, %1
  %i.et = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !29 ; 8 uses
  %.not.i109 = icmp ult i32 %i.et, %i.ev
  br i1 %.not.i109, label %bb.aw, label %bb.aj

bb.aj:                                            ; preds = %.loopexit155
  %i.ew = icmp eq i32 %i.ev, 0                    ; 2 uses
  br i1 %i.ew, label %GenericVector_nextCapacity.exit.i110, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = icmp ugt i32 %i.ev, 511
  br i1 %i.ex, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ey = zext i32 %i.ev to i64                   ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = add nuw nsw i64 %i.ez, %i.ey
  br label %GenericVector_nextCapacity.exit.i110

bb.am:                                            ; preds = %bb.ak
  %i.fb = shl nuw nsw i32 %i.ev, 1
  %i.fc = zext nneg i32 %i.fb to i64
  br label %GenericVector_nextCapacity.exit.i110

GenericVector_nextCapacity.exit.i110:             ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i.i111 = phi i64 [ %i.fc, %bb.am ], [ %i.fa, %bb.al ], [ 4, %bb.aj ] ; 2 uses
  %i.fd = zext i32 %i.ev to i64                   ; 6 uses
  %i.fe = icmp samesign ult i64 %.0.i.i111, %i.fd
  %.phi.trans.insert.i.i112 = getelementptr i8, ptr %i.b, i64 80
  %.val.pre.i.i113 = load i32, ptr %.phi.trans.insert.i.i112, align 8, !tbaa !30
  %.pre.i.i114 = zext i32 %.val.pre.i.i113 to i64 ; 4 uses
  %spec.select.i.i115 = tail call i64 @llvm.umin.i64(i64 %.0.i.i111, i64 %.pre.i.i114)
  %.010.i.i116 = select i1 %i.fe, i64 %.pre.i.i114, i64 %spec.select.i.i115 ; 4 uses
  %i.ff = icmp eq i64 %.010.i.i116, %i.fd
  br i1 %i.ff, label %bb.av, label %bb.an

bb.an:                                            ; preds = %GenericVector_nextCapacity.exit.i110
  %.not.i.i117 = icmp samesign ugt i64 %.010.i.i116, %i.fd
  br i1 %.not.i.i117, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  br i1 %i.ew, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = icmp ugt i32 %i.ev, 511
  br i1 %i.fg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fh = lshr i64 %i.fd, 2
  %i.fi = add nuw nsw i64 %i.fh, %i.fd
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fj = shl nuw nsw i32 %i.ev, 1
  %i.fk = zext nneg i32 %i.fj to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %.0.i.i.i120 = phi i64 [ %i.fk, %bb.ar ], [ %i.fi, %bb.aq ], [ 4, %bb.ao ] ; 2 uses
  %i.fl = icmp samesign ult i64 %.0.i.i.i120, %i.fd
  %spec.select.i.i.i121 = tail call i64 @llvm.umin.i64(i64 %.0.i.i.i120, i64 %.pre.i.i114)
  %i.fm = tail call i64 @llvm.umax.i64(i64 %.010.i.i116, i64 %spec.select.i.i.i121)
  %spec.select.i18.i122 = select i1 %i.fl, i64 %.pre.i.i114, i64 %i.fm ; 2 uses
  %i.fn = shl nuw nsw i64 %spec.select.i18.i122, 5 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.fp, null
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !21 ; 2 uses
  br i1 %.not.i.i.i123, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.fp, ptr noundef %i.fr, i64 noundef %i.fn) #11
  br label %GenericVector_reallocData.exit.i.i124

bb.au:                                            ; preds = %bb.as
  %i.ft = tail call ptr @ZL_realloc(ptr noundef %i.fr, i64 noundef %i.fn) #11
  br label %GenericVector_reallocData.exit.i.i124

GenericVector_reallocData.exit.i.i124:            ; preds = %bb.au, %bb.at
  %.0.i28.i.i125 = phi ptr [ %i.fs, %bb.at ], [ %i.ft, %bb.au ] ; 2 uses
  %.not26.i.i126 = icmp eq ptr %.0.i28.i.i125, null
  br i1 %.not26.i.i126, label %GenericVector_reallocData.exit._crit_edge.i.i128, label %.thread20.i127

GenericVector_reallocData.exit._crit_edge.i.i128: ; preds = %GenericVector_reallocData.exit.i.i124
  %.022.in.pre.i.i129 = load i32, ptr %i.eu, align 4, !tbaa !29
  %i.fu = zext i32 %.022.in.pre.i.i129 to i64
  %.not22.i130 = icmp samesign ugt i64 %.010.i.i116, %i.fu
  br i1 %.not22.i130, label %bb.av, label %bb.aw

.thread20.i127:                                   ; preds = %GenericVector_reallocData.exit.i.i124
  store ptr %.0.i28.i.i125, ptr %i.fq, align 8, !tbaa !21
  %i.fv = trunc nuw i64 %spec.select.i18.i122 to i32
  store i32 %i.fv, ptr %i.eu, align 4, !tbaa !29
  br label %bb.aw

bb.av:                                            ; preds = %GenericVector_reallocData.exit._crit_edge.i.i128, %GenericVector_nextCapacity.exit.i110
  %i.fw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Edge_setParameterizedDestination.__zl_static_error_info.80, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef 446, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.82) #11 ; 2 uses
  %i.fx = extractvalue { i32, ptr } %i.fw, 0      ; 2 uses
  %i.fy = extractvalue { i32, ptr } %i.fw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fx, ptr %i.fy, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  %i.fz = ptrtoint ptr %i.fy to i64
  br label %.critedge

bb.aw:                                            ; preds = %.thread20.i127, %GenericVector_reallocData.exit._crit_edge.i.i128, %bb.an, %.loopexit155
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !21
  %i.gc = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 5
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ge ; 5 uses
  store i32 %2, ptr %i.gf, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.eq, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i64 %i.es, ptr %.sroa.7.0..sroa_idx, align 1
  %i.gg = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.ap, align 8, !tbaa !28
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %.loopexit154, %bb.av, %bb.aw, %bb.g, %.thread137, %.thread134, %.thread
  %.sroa.096.11 = phi i32 [ %i.g, %.thread ], [ %i.t, %.thread134 ], [ 0, %bb.aw ], [ %i.ab, %.thread137 ], [ %i.af, %bb.g ], [ %i.fx, %bb.av ], [ %i.ea, %.loopexit154 ], [ %i.cx, %.loopexit ]
  %.sroa.16.11 = phi i64 [ %i.i, %.thread ], [ %i.v, %.thread134 ], [ 0, %bb.aw ], [ %i.ad, %.thread137 ], [ %i.aj, %bb.g ], [ %i.fz, %bb.av ], [ %i.ec, %.loopexit154 ], [ %i.cz, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.096.11, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.16.11, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i32 @CGRAPH_graphType(ptr noundef, i32) local_unnamed_addr #1

declare ptr @CGRAPH_getSegmenterDesc(ptr noundef, i32) local_unnamed_addr #1

declare ptr @CGRAPH_getMultiInputGraphDesc(ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @StreamCtx_getOutcomeID(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.f
  %.sroa.0.0.copyload = load i32, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = tail call i32 @RTGM_getOutcomeID_fromRtstream(ptr noundef %i.i, i32 %.sroa.0.0.copyload) #11
  ret i32 %i.j
}

declare i32 @RTGM_getOutcomeID_fromRtstream(ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ZL_Graph_getOpaquePtr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ZL_Graph_getDepth(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_Graph_tryMultiInputGraph(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12
  store ptr %i.b, ptr %5, align 8, !tbaa !27
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !50

.thread:                                          ; preds = %bb.a
  %i.c = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_Graph_tryMultiInputGraph.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.84, i32 noundef 481, i32 noundef 33, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.86, i64 noundef 0, i64 noundef 0) #11 ; 2 uses
  %i.d = extractvalue { i32, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.c, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.d, ptr %i.e, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = insertvalue { i32, i64 } poison, i32 %i.d, 0
  %i.h = insertvalue { i32, i64 } %i.g, i64 %i.f, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = tail call { i32, i64 } @CCTX_tryGraph(ptr noundef %i.i, ptr noundef %1, i64 noundef %2, ptr noundef %i.k, i32 %3, ptr noundef %4) #11
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.l, %bb.b ], [ %i.h, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #4

declare { i32, i64 } @CCTX_tryGraph(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_Graph_tryGraph(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !103
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = call { i32, i64 } @CCTX_tryGraph(ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %i.d, i32 %2, ptr noundef %3) #11
  ret { i32, i64 } %i.e
}

; Function Attrs: nounwind uwtable
define ptr @ZL_Graph_getErrorContextString(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call ptr @ZL_CCtx_getErrorContextString(ptr noundef %i.a, i32 %1, i64 %2) #11
  ret ptr %i.b
}

declare ptr @ZL_CCtx_getErrorContextString(ptr noundef, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @ZL_Graph_getErrorContextString_fromError(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call ptr @ZL_CCtx_getErrorContextString_fromError(ptr noundef %i.a, i32 %1, ptr %2) #11
  ret ptr %i.b
}

declare ptr @ZL_CCtx_getErrorContextString_fromError(ptr noundef, i32, ptr) local_unnamed_addr #1

declare void @ALLOC_Arena_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ZL_free(ptr noundef) local_unnamed_addr #1

declare ptr @ALLOC_Arena_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ZL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare { i32, i64 } @LP_transferLocalParams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS9ZL_CCtx_s", !11, i64 0}
!13 = !{!"p1 _ZTS20ZL_FunctionGraphDesc", !11, i64 0}
!14 = !{!"", !8, i64 0}
!15 = !{!"", !7, i64 0}
!16 = !{!"p1 _ZTS7Arena_s", !11, i64 0}
!17 = !{!"ZL_Graph_s", !12, i64 0, !11, i64 8, !13, i64 16, !11, i64 24, !14, i64 32, !15, i64 40, !15, i64 72, !15, i64 104, !7, i64 136, !8, i64 152, !16, i64 160, !16, i64 168}
!18 = !{!17, !16, i64 160}
!19 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !16, i64 24}
!20 = !{!19, !16, i64 24}
!21 = !{!19, !11, i64 16}
!22 = !{!17, !12, i64 0}
!23 = !{!"p1 _ZTS21ZL_OperationContext_s", !11, i64 0}
!24 = !{!"p1 omnipotent char", !11, i64 0}
!25 = !{!"", !14, i64 0, !14, i64 4, !8, i64 8, !24, i64 16}
!26 = !{!"", !23, i64 0, !25, i64 8}
!27 = !{!26, !23, i64 0}
!28 = !{!19, !8, i64 0}
!29 = !{!19, !8, i64 4}
!30 = !{!19, !8, i64 8}
!31 = !{!"p1 _ZTS10ZL_Graph_s", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!17, !13, i64 16}
!35 = !{!"long", !7, i64 0}
!36 = !{!"", !11, i64 0, !35, i64 8}
!37 = !{!"", !36, i64 0, !36, i64 16, !36, i64 32}
!38 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!39 = !{!"", !11, i64 0, !11, i64 8, !38, i64 16}
!40 = !{!"", !15, i64 0}
!41 = !{!"", !11, i64 0, !35, i64 8, !40, i64 16}
!42 = !{!"ZL_FunctionGraphDesc", !24, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !35, i64 32, !8, i64 40, !11, i64 48, !35, i64 56, !11, i64 64, !35, i64 72, !37, i64 80, !38, i64 128, !39, i64 152, !41, i64 192}
!43 = !{!"_Bool", !7, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!"p1 _ZTS9ZL_Edge_s", !11, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"ZL_Edge_s", !31, i64 0, !8, i64 8}
!49 = !{!48, !31, i64 0}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = !{!7, !7, i64 0}
!52 = !{!48, !8, i64 8}
!53 = !{!11, !11, i64 0}
!54 = !{!"", !14, i64 0, !8, i64 4, !35, i64 8}
!55 = !{!54, !8, i64 4}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!17, !11, i64 8}
!59 = !{!35, !35, i64 0}
!60 = !{!24, !24, i64 0}
!61 = !{!42, !11, i64 8}
!62 = !{!42, !11, i64 48}
!63 = !{!42, !35, i64 56}
!64 = !{!42, !11, i64 64}
!65 = !{!42, !35, i64 72}
!66 = !{!17, !11, i64 24}
!67 = !{!"ZL_CompressIntrospectionHooks_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128}
!68 = !{!"ZL_DecompressIntrospectionHooks_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!69 = !{!"ZL_OperationContext_s", !8, i64 0, !15, i64 8, !15, i64 40, !11, i64 72, !67, i64 80, !68, i64 216, !43, i64 280, !43, i64 281}
!70 = !{!69, !43, i64 280}
!71 = !{!69, !11, i64 144}
!72 = !{!69, !11, i64 80}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !79}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = !{!"p1 _ZTS8Stream_s", !11, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!"branch_weights", !"expected", i32 5784010, i32 2141699638}
!81 = !{!"", !7, i64 0, !7, i64 8}
!82 = !{!"", !8, i64 0, !81, i64 8}
!83 = !{!82, !8, i64 0}
!84 = !{i64 0, i64 8, !60, i64 8, i64 8, !53, i64 16, i64 8, !59, i64 24, i64 8, !53, i64 32, i64 8, !59, i64 40, i64 8, !53, i64 48, i64 8, !53, i64 56, i64 8, !59, i64 64, i64 32, !51}
!85 = !{!"ZL_GraphParameters_s", !24, i64 0, !11, i64 8, !35, i64 16, !11, i64 24, !35, i64 32, !11, i64 40, !41, i64 48}
!86 = !{!85, !11, i64 40}
!87 = !{!"branch_weights", !"expected", i32 1073204, i32 2146410444}
!88 = !{i64 0, i64 8, !53, i64 8, i64 8, !59, i64 16, i64 8, !53, i64 24, i64 8, !59, i64 32, i64 8, !53, i64 40, i64 8, !59}
!89 = !{!85, !35, i64 16}
!90 = !{!85, !11, i64 8}
!91 = !{!85, !35, i64 32}
!92 = !{!85, !11, i64 24}
!93 = distinct !{!93, !57, !98}
!94 = !{!"", !24, i64 0, !11, i64 8, !11, i64 16, !35, i64 24, !43, i64 32, !11, i64 40, !35, i64 48, !37, i64 56, !38, i64 104, !39, i64 128, !41, i64 168}
!95 = !{!94, !43, i64 32}
!96 = !{!42, !8, i64 40}
!97 = !{!54, !35, i64 8}
!98 = !{!"llvm.loop.peeled.count", i32 1}
!99 = !{!17, !16, i64 168}
!100 = !{!42, !11, i64 128}
!101 = !{!17, !8, i64 152}
!102 = !{!"p1 _ZTS10ZL_Input_s", !11, i64 0}
!103 = !{!102, !102, i64 0}
end_hunk_0
