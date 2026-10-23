Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/simple_data_description_language?download=true
inline.NumInlined: 466
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ZL_SDDL_State_execExpr:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr.__zl_static_error_info, ptr noundef nonnull %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.237, i32 noundef 2913, i32 noundef 21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.e, ptr %i.f, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.e, ptr %0, align 8, !tbaa !66
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.521.0..sroa_idx, align 8, !tbaa !54
  br label %bb.be

.critedge:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !81
  %.not49 = icmp eq i64 %i.i, 0
  br i1 %.not49, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !82
  %.not50 = icmp eq i64 %i.k, 0
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !275
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i32, ptr %3, align 8, !tbaa !53     ; 2 uses
  switch i32 %i.l, label %bb.bd [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.u
    i32 3, label %bb.v
    i32 4, label %bb.av
    i32 5, label %bb.aw
    i32 6, label %bb.ba
    i32 7, label %bb.bb
    i32 8, label %bb.bc
  ]

bb.f:                                             ; preds = %bb.e
  %.sroa.0109.0.copyload = load ptr, ptr %3, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load <2 x i32>, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load <2 x i64>, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !45
  br label %.thread343

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !276
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !276
  store ptr %i.c, ptr %11, align 8, !tbaa !37, !noalias !276
  %i.q = load i32, ptr %i.o, align 8, !tbaa !56, !noalias !276 ; 2 uses
  %switch.tableidx = add i32 %i.q, -1             ; 2 uses
  %i.r = icmp ult i32 %switch.tableidx, 27
  br i1 %i.r, label %switch.lookup, label %.critedge54.i

switch.lookup:                                    ; preds = %bb.g
  %i.s = zext nneg i32 %switch.tableidx to i64    ; 3 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ZL_SDDL_State_execExpr, i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !276
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !57, !noalias !276 ; 4 uses
  %.not.i.peel = icmp eq ptr %i.x, null
  br i1 %.not.i.peel, label %.loopexit, label %.critedge.i.peel, !prof !38

.critedge.i.peel:                                 ; preds = %switch.lookup
  %i.y = load i32, ptr %i.o, align 8, !tbaa !56, !noalias !276
  %i.z = icmp eq i32 %i.y, 6
  br i1 %i.z, label %bb.h, label %.thread.peel

bb.h:                                             ; preds = %.critedge.i.peel
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !53, !noalias !276
  %i.ab = icmp eq i32 %i.aa, 5
  br i1 %i.ab, label %bb.i, label %.thread.peel

.thread.peel:                                     ; preds = %.critedge.i.peel, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !276
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.x), !noalias !276, !inline_history !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !114
  %i.ac = load i32, ptr %15, align 8, !tbaa !54, !alias.scope !276 ; 2 uses
  %.not51.i.peel = icmp eq i32 %i.ac, 0
  br i1 %.not51.i.peel, label %.thread258.peel, label %.loopexit410, !prof !42

.thread258.peel:                                  ; preds = %.thread.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false), !tbaa.struct !124, !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !276
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false), !tbaa.struct !124, !noalias !276
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread258.peel
  %i.ad = shl nuw nsw i64 1, %i.s
  %i.ae = and i64 %i.ad, 75497743
  %exitcond372.not.peel.not = icmp eq i64 %i.ae, 0
  br i1 %exitcond372.not.peel.not, label %.peel.next, label %.lr.ph371.preheader

.peel.next:                                       ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57, !noalias !276 ; 4 uses
  %.not.i.peel401 = icmp eq ptr %i.ag, null
  br i1 %.not.i.peel401, label %.loopexit, label %.critedge.i.peel402, !prof !38

.critedge.i.peel402:                              ; preds = %.peel.next
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !56, !noalias !276
  %i.ai = icmp eq i32 %i.ah, 7
  br i1 %i.ai, label %bb.k, label %.thread.peel405

bb.k:                                             ; preds = %.critedge.i.peel402
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !53, !noalias !276
  %i.ak = icmp eq i32 %i.aj, 5
  br i1 %i.ak, label %bb.l, label %.thread.peel405

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false), !tbaa.struct !124, !noalias !276
  br label %bb.m

.thread.peel405:                                  ; preds = %bb.k, %.critedge.i.peel402
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !276
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.ag), !noalias !276, !inline_history !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !114
  %i.al = load i32, ptr %15, align 8, !tbaa !54, !alias.scope !276 ; 2 uses
  %.not51.i.peel406 = icmp eq i32 %i.al, 0
  br i1 %.not51.i.peel406, label %.thread258.peel407, label %.loopexit410, !prof !42

.thread258.peel407:                               ; preds = %.thread.peel405
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false), !tbaa.struct !124, !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !276
  br label %bb.m

bb.m:                                             ; preds = %.thread258.peel407, %bb.l
  %i.an = shl nuw nsw i64 1, %i.s
  %i.ao = and i64 %i.an, 58719984
  %exitcond372.not.peel408.not = icmp eq i64 %i.ao, 0
  br i1 %exitcond372.not.peel408.not, label %switch.lookup.peel.newph, label %.lr.ph371.preheader

switch.lookup.peel.newph:                         ; preds = %bb.m, %.thread258
  %.048.i368 = phi i64 [ %i.aw, %.thread258 ], [ 2, %bb.m ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.048.i368
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57, !noalias !276 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %.loopexit, label %.thread, !prof !38

.loopexit:                                        ; preds = %switch.lookup.peel.newph, %.peel.next, %switch.lookup
  %i.ar = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op.__zl_static_error_info, ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.244, i32 noundef 2731, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !noalias !276, !inline_history !260 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.ar, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.as, ptr %i.at, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !276, !inline_history !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %15, i8 0, i64 72, i1 false), !alias.scope !276
  store i32 %i.as, ptr %15, align 8, !tbaa !66, !alias.scope !276
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.at, ptr %.sroa.511.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !276
  br label %ZL_SDDL_State_execExpr_op.exit

.thread:                                          ; preds = %switch.lookup.peel.newph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !276
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.aq), !noalias !276, !inline_history !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !114
  %i.au = load i32, ptr %15, align 8, !tbaa !54, !alias.scope !276 ; 2 uses
  %.not51.i = icmp eq i32 %i.au, 0
  br i1 %.not51.i, label %.thread258, label %.loopexit410, !prof !42

.thread258:                                       ; preds = %.thread
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %12, i64 %.048.i368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false), !tbaa.struct !124, !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !276
  %i.aw = add nuw nsw i64 %.048.i368, 1           ; 2 uses
  %exitcond372.not = icmp eq i64 %i.aw, %switch.ext
  br i1 %exitcond372.not, label %.lr.ph371.preheader, label %switch.lookup.peel.newph, !llvm.loop !261

.loopexit410:                                     ; preds = %.thread, %.thread.peel405, %.thread.peel
  %.lcssa = phi i32 [ %i.al, %.thread.peel405 ], [ %i.ac, %.thread.peel ], [ %i.au, %.thread ]
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !276
  %i.az = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %11, i32 %.lcssa, ptr %i.ay, ptr nonnull @ZL_SDDL_State_execExpr_op.__zl_static_error_info.246, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.244, i32 noundef 2743, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !260 ; 2 uses
  %i.ba = extractvalue { i32, ptr } %i.az, 0
  %i.bb = extractvalue { i32, ptr } %i.az, 1
  store i32 %i.ba, ptr %15, align 8, !tbaa !66, !alias.scope !276
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !54, !alias.scope !276
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !276
  br label %ZL_SDDL_State_execExpr_op.exit

.critedge54.i:                                    ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !276
  call fastcc void @ZL_SDDL_State_execExpr_op_inner(ptr dead_on_unwind noalias nonnull writable align 8 %15, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %12, i32 %i.q)
  br label %ZL_SDDL_State_execExpr_op.exit

.lr.ph371.preheader:                              ; preds = %.thread258, %bb.m, %bb.j
  %.val.pre = load i32, ptr %i.o, align 8, !tbaa !56
  call fastcc void @ZL_SDDL_State_execExpr_op_inner(ptr dead_on_unwind noalias nonnull writable align 8 %15, ptr noundef %1, ptr noundef %2, ptr noundef %12, i32 %.val.pre)
  br label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph371.preheader, %ZL_SDDL_Expr_decref.exit
  %.0.i370 = phi i64 [ %i.bo, %ZL_SDDL_Expr_decref.exit ], [ 0, %.lr.ph371.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %12, i64 %.0.i370 ; 6 uses
  %i.bd = load i32, ptr %i.bc, align 16, !tbaa !53
  switch i32 %i.bd, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.n
    i32 8, label %bb.r
    i32 6, label %bb.q
  ]

bb.n:                                             ; preds = %.lr.ph371
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !56
  switch i32 %i.bf, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.p
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !54 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

bb.p:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !54 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.bj, null
  br i1 %.not10.i.i, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.p, %bb.o
  %.sink.i.i = phi ptr [ %i.bh, %bb.o ], [ %i.bj, %bb.p ]
  call fastcc void @ZL_SDDL_DynExprSet_decref(ptr noundef %1, ptr noundef %.sink.i.i), !inline_history !262
  br label %ZL_SDDL_Expr_decref.exit

bb.q:                                             ; preds = %.lr.ph371
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !54
  call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef %i.bl), !inline_history !263
  br label %ZL_SDDL_Expr_decref.exit

bb.r:                                             ; preds = %.lr.ph371
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !54 ; 2 uses
  %.not.i56 = icmp eq ptr %i.bn, null
  br i1 %.not.i56, label %ZL_SDDL_Expr_decref.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef nonnull %i.bn), !inline_history !263
  br label %ZL_SDDL_Expr_decref.exit

ZL_SDDL_Expr_decref.exit:                         ; preds = %.lr.ph371, %bb.n, %bb.o, %bb.p, %.sink.split.i.i, %bb.q, %bb.r, %bb.s
  %i.bo = add nuw nsw i64 %.0.i370, 1             ; 2 uses
  %exitcond374.not = icmp eq i64 %i.bo, %switch.ext
  br i1 %exitcond374.not, label %ZL_SDDL_State_execExpr_op.exit, label %.lr.ph371, !llvm.loop !264

ZL_SDDL_State_execExpr_op.exit:                   ; preds = %ZL_SDDL_Expr_decref.exit, %.critedge54.i, %.loopexit, %.loopexit410
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !276
  %i.bp = getelementptr i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !114
  %i.bq = load i32, ptr %0, align 8, !tbaa !54    ; 2 uses
  %.not53 = icmp eq i32 %i.bq, 0
  br i1 %.not53, label %.thread259, label %bb.t, !prof !42

.thread259:                                       ; preds = %ZL_SDDL_State_execExpr_op.exit
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.0109.0.copyload110 = load ptr, ptr %i.br, align 8
  %.sroa.12.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bs = load <2 x i32>, ptr %.sroa.12.0..sroa_idx118, align 8
  %.sroa.14.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.sroa.14.0.copyload151 = load ptr, ptr %.sroa.14.0..sroa_idx150, align 8
  %.sroa.15.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.15.0.copyload167 = load i64, ptr %.sroa.15.0..sroa_idx166, align 8
  %.sroa.16.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %.sroa.16.0.copyload183 = load ptr, ptr %.sroa.16.0..sroa_idx182, align 8
  %.sroa.17.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.bt = load <2 x i64>, ptr %.sroa.17.0..sroa_idx198, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %.sroa.19.0.copyload231 = load i64, ptr %.sroa.19.0..sroa_idx230, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.thread343

bb.t:                                             ; preds = %ZL_SDDL_State_execExpr_op.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %14, i32 %i.bq, ptr %i.bv, ptr nonnull @ZL_SDDL_State_execExpr.__zl_static_error_info.238, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.237, i32 noundef 2929, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.bx = extractvalue { i32, ptr } %i.bw, 0
  %i.by = extractvalue { i32, ptr } %i.bw, 1
  store i32 %i.bx, ptr %0, align 8, !tbaa !66
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.be

bb.u:                                             ; preds = %bb.e
  %.sroa.0109.0.copyload111 = load ptr, ptr %3, align 8
  %.sroa.12.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load <2 x i32>, ptr %.sroa.12.0..sroa_idx120, align 8
  %.sroa.14.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.14.0.copyload153 = load ptr, ptr %.sroa.14.0..sroa_idx152, align 8
  %.sroa.15.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.15.0.copyload169 = load i64, ptr %.sroa.15.0..sroa_idx168, align 8
  %.sroa.16.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.16.0.copyload185 = load ptr, ptr %.sroa.16.0..sroa_idx184, align 8
  %.sroa.17.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ca = load <2 x i64>, ptr %.sroa.17.0..sroa_idx200, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.19.0.copyload233 = load i64, ptr %.sroa.19.0..sroa_idx232, align 8, !tbaa !45
  br label %.thread343

bb.v:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !278
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false), !noalias !278
  store ptr %i.c, ptr %4, align 8, !tbaa !37, !noalias !278
  %i.cd = load <2 x i32>, ptr %i.cb, align 8, !noalias !278
  %.sroa.4127.8.copyload.i = load i32, ptr %i.cb, align 8, !tbaa !66, !noalias !278
  %.sroa.6128.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6128.8.copyload.i = load ptr, ptr %.sroa.6128.8..sroa_idx.i, align 8, !noalias !278 ; 10 uses
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.11.8.copyload.i = load i64, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !278 ; 10 uses
  %.sroa.15.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.15.8.copyload.i = load ptr, ptr %.sroa.15.8..sroa_idx.i, align 8, !noalias !278 ; 11 uses
  %.sroa.29.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.29.8.copyload.i = load i64, ptr %.sroa.29.8..sroa_idx.i, align 8, !tbaa !54, !noalias !278
  switch i32 %.sroa.4127.8.copyload.i, label %ZL_SDDL_State_execExpr_field.exit.thread [
    i32 3, label %bb.ao
    i32 1, label %bb.w
    i32 2, label %bb.ac
  ]

bb.w:                                             ; preds = %bb.v
  %.not155.i = icmp eq ptr %.sroa.6128.8.copyload.i, null
  br i1 %.not155.i, label %ZL_SDDL_State_execExpr_field.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %.sroa.6128.8.copyload.i), !noalias !278, !inline_history !267
  %.sroa.0254.0.copyload = load i32, ptr %5, align 8, !noalias !278 ; 2 uses
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6256.0.copyload = load ptr, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !278 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !278 ; 3 uses
  %.not.i60 = icmp eq i32 %.sroa.0254.0.copyload, 0
  br i1 %.not.i60, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.0254.0.copyload, ptr %.sroa.6256.0.copyload, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2819, ptr noundef nonnull @.str.12) #15, !noalias !278, !inline_history !267 ; 2 uses
  %i.cf = extractvalue { i32, ptr } %i.ce, 0
  %i.cg = extractvalue { i32, ptr } %i.ce, 1
  br label %ZL_SDDL_State_execExpr_field.exit

bb.z:                                             ; preds = %bb.x
  %i.ch = ptrtoint ptr %.sroa.6256.0.copyload to i64
  %.sroa.6256.0.extract.trunc = trunc i64 %i.ch to i32 ; 2 uses
  %.not157.i = icmp eq i32 %.sroa.6256.0.extract.trunc, 2
  br i1 %.not157.i, label %.critedge.i55, label %bb.aa, !prof !42

bb.aa:                                            ; preds = %bb.z
  %i.ci = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2820, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.477, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.253, i32 noundef %.sroa.6256.0.extract.trunc, i32 noundef 2) #15, !noalias !278, !inline_history !267 ; 2 uses
  %i.cj = extractvalue { i32, ptr } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { i32, ptr } %i.ci, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cj, ptr %i.ck, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !278, !inline_history !267
  br label %ZL_SDDL_State_execExpr_field.exit

.critedge.i55:                                    ; preds = %bb.z
  %i.cl = icmp sgt i64 %.sroa.9.0.copyload, -1
  br i1 %i.cl, label %ZL_SDDL_State_execExpr_field.exit.thread, label %bb.ab, !prof !42

bb.ab:                                            ; preds = %.critedge.i55
  %i.cm = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.478, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2821, i32 noundef 12, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.480, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.232, i64 noundef %.sroa.9.0.copyload, i64 noundef 0) #15, !noalias !278, !inline_history !267 ; 2 uses
  %i.cn = extractvalue { i32, ptr } %i.cm, 0      ; 2 uses
  %i.co = extractvalue { i32, ptr } %i.cm, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cn, ptr %i.co, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !278, !inline_history !267
  br label %ZL_SDDL_State_execExpr_field.exit

bb.ac:                                            ; preds = %bb.v
  %.not.i54 = icmp eq ptr %.sroa.15.8.copyload.i, null
  br i1 %.not.i54, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load i64, ptr %.sroa.15.8.copyload.i, align 8, !tbaa !59, !noalias !278
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %.sroa.15.8.copyload.i, align 8, !tbaa !59, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cr = tail call fastcc ptr @ZL_SDDL_DynExprSet_create(ptr noundef nonnull %1, i64 noundef %.sroa.11.8.copyload.i, i1 noundef zeroext true), !noalias !278, !inline_history !267 ; 5 uses
  %.not150.i = icmp eq ptr %i.cr, null
  br i1 %.not150.i, label %.critedge171.i, label %.critedge165.i.preheader, !prof !38

.critedge165.i.preheader:                         ; preds = %bb.ae
  %.not154.i.not365.not = icmp eq i64 %.sroa.11.8.copyload.i, 0
  br i1 %.not154.i.not365.not, label %ZL_SDDL_State_execExpr_field.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge165.i.preheader
  %.sroa.40.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %.sroa.40.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.40.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.af

.critedge171.i:                                   ; preds = %bb.ae
  %i.cu = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.481, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2836, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.483, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !noalias !278, !inline_history !267 ; 2 uses
  %i.cv = extractvalue { i32, ptr } %i.cu, 0      ; 2 uses
  %i.cw = extractvalue { i32, ptr } %i.cu, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cv, ptr %i.cw, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !278, !inline_history !267
  br label %ZL_SDDL_State_execExpr_field.exit

bb.af:                                            ; preds = %.lr.ph, %.critedge167.i
  %.0125.i366 = phi i64 [ 0, %.lr.ph ], [ %i.eg, %.critedge167.i ] ; 6 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6128.8.copyload.i, i64 %.0125.i366
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !57, !noalias !278 ; 6 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !53, !noalias !278
  %.not.i59 = icmp eq i32 %i.cz, 1
  br i1 %.not.i59, label %bb.ag, label %ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !56, !noalias !278
  switch i32 %i.db, label %ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread [
    i32 6, label %bb.ah
    i32 3, label %bb.al
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !57, !noalias !278 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57, !noalias !278 ; 3 uses
  %i.dg = load i32, ptr %i.dd, align 8, !tbaa !53, !noalias !278
  %.not11.i = icmp eq i32 %i.dg, 5
  br i1 %.not11.i, label %bb.ai, label %ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load i32, ptr %i.df, align 8, !tbaa !53, !noalias !278
  %.not12.i = icmp eq i32 %i.dh, 1
  br i1 %.not12.i, label %ZL_SDDL_State_execExpr_field_record_isExprAssume.exit, label %ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread

ZL_SDDL_State_execExpr_field_record_isExprAssume.exit: ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !56, !noalias !278
  %.not13.i = icmp eq i32 %i.dj, 3
  br i1 %.not13.i, label %bb.aj, label %ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread

bb.aj:                                            ; preds = %ZL_SDDL_State_execExpr_field_record_isExprAssume.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !54, !noalias !278
  %i.dn = load ptr, ptr %i.ct, align 8, !tbaa !127, !noalias !278
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.0125.i366
  store ptr %i.dk, ptr %i.do, align 8, !tbaa !123, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !278
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.dm), !noalias !278, !inline_history !267
  %.sroa.0.0.copyload72 = load i32, ptr %6, align 8, !tbaa !66 ; 2 uses
  %.sroa.40.0.copyload90 = load ptr, ptr %.sroa.40.0..sroa_idx89, align 8, !tbaa !54 ; 2 uses
  %.not153.i = icmp eq i32 %.sroa.0.0.copyload72, 0
  br i1 %.not153.i, label %.thread282, label %bb.ak, !prof !42

.thread282:                                       ; preds = %bb.aj
  %i.dp = load ptr, ptr %i.cs, align 8, !tbaa !128, !noalias !278
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %i.dp, i64 %.0125.i366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.40.0..sroa_idx89, i64 64, i1 false), !tbaa.struct !124, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !278
  br label %.critedge167.i

bb.ak:                                            ; preds = %bb.aj
  %.sroa.39.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.39.0.copyload80 = load i32, ptr %.sroa.39.0..sroa_idx79, align 4
  %i.dr = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.0.0.copyload72, ptr %.sroa.40.0.copyload90, ptr nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.484, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2847, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !267 ; 2 uses
  %i.ds = extractvalue { i32, ptr } %i.dr, 0
  %i.dt = extractvalue { i32, ptr } %i.dr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit

bb.al:                                            ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !54, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !278
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.dv), !noalias !278, !inline_history !267
  %.sroa.0.0.copyload71 = load i32, ptr %7, align 8, !tbaa !66 ; 2 uses
  %.sroa.40.0.copyload88 = load ptr, ptr %.sroa.40.0..sroa_idx87, align 8, !tbaa !54 ; 2 uses
  %.not152.i = icmp eq i32 %.sroa.0.0.copyload71, 0
  br i1 %.not152.i, label %.thread288, label %bb.am, !prof !42

.thread288:                                       ; preds = %bb.al
  %i.dw = load ptr, ptr %i.cs, align 8, !tbaa !128, !noalias !278
  %i.dx = getelementptr inbounds nuw [64 x i8], ptr %i.dw, i64 %.0125.i366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.40.0..sroa_idx87, i64 64, i1 false), !tbaa.struct !124, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !278
  br label %.critedge167.i

bb.am:                                            ; preds = %bb.al
  %.sroa.39.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.39.0.copyload78 = load i32, ptr %.sroa.39.0..sroa_idx77, align 4
  %i.dy = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.0.0.copyload71, ptr %.sroa.40.0.copyload88, ptr nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.485, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2856, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !267 ; 2 uses
  %i.dz = extractvalue { i32, ptr } %i.dy, 0
  %i.ea = extractvalue { i32, ptr } %i.dy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit

ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread: ; preds = %bb.ag, %ZL_SDDL_State_execExpr_field_record_isExprAssume.exit, %bb.ah, %bb.ai, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !278
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.cy), !noalias !278, !inline_history !267
  %.sroa.0.0.copyload70 = load i32, ptr %8, align 8, !tbaa !66 ; 2 uses
  %.sroa.40.0.copyload86 = load ptr, ptr %.sroa.40.0..sroa_idx85, align 8, !tbaa !54 ; 2 uses
  %.not151.i = icmp eq i32 %.sroa.0.0.copyload70, 0
  br i1 %.not151.i, label %.thread291, label %bb.an, !prof !42

.thread291:                                       ; preds = %ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread
  %i.eb = load ptr, ptr %i.cs, align 8, !tbaa !128, !noalias !278
  %i.ec = getelementptr inbounds nuw [64 x i8], ptr %i.eb, i64 %.0125.i366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.40.0..sroa_idx85, i64 64, i1 false), !tbaa.struct !124, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !278
  br label %.critedge167.i

bb.an:                                            ; preds = %ZL_SDDL_State_execExpr_field_record_isExprConsume.exit.thread
  %.sroa.39.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.39.0.copyload76 = load i32, ptr %.sroa.39.0..sroa_idx75, align 4
  %i.ed = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.0.0.copyload70, ptr %.sroa.40.0.copyload86, ptr nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.486, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2861, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !267 ; 2 uses
  %i.ee = extractvalue { i32, ptr } %i.ed, 0
  %i.ef = extractvalue { i32, ptr } %i.ed, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit

.critedge167.i:                                   ; preds = %.thread291, %.thread288, %.thread282
  %.sroa.40.4 = phi ptr [ %.sroa.40.0.copyload90, %.thread282 ], [ %.sroa.40.0.copyload88, %.thread288 ], [ %.sroa.40.0.copyload86, %.thread291 ]
  %i.eg = add nuw i64 %.0125.i366, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %.sroa.11.8.copyload.i
  br i1 %exitcond.not, label %ZL_SDDL_State_execExpr_field.exit.thread, label %bb.af, !llvm.loop !268

bb.ao:                                            ; preds = %bb.v
  %.not158.i = icmp eq ptr %.sroa.15.8.copyload.i, null
  br i1 %.not158.i, label %bb.ap, label %.thread311

.thread311:                                       ; preds = %bb.ao
  %i.eh = load i64, ptr %.sroa.15.8.copyload.i, align 8, !tbaa !59, !noalias !278
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %.sroa.15.8.copyload.i, align 8, !tbaa !59, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ej = tail call fastcc ptr @ZL_SDDL_DynExprSet_create(ptr noundef nonnull %1, i64 noundef 2, i1 noundef zeroext false), !noalias !278, !inline_history !267 ; 3 uses
  %.not159.i = icmp eq ptr %i.ej, null
  br i1 %.not159.i, label %bb.aq, label %.critedge169.i, !prof !38

bb.aq:                                            ; preds = %bb.ap
  %i.ek = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.487, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2874, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.489, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !noalias !278, !inline_history !267 ; 2 uses
  %i.el = extractvalue { i32, ptr } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { i32, ptr } %i.ek, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.el, ptr %i.em, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !278, !inline_history !267
  br label %ZL_SDDL_State_execExpr_field.exit

.critedge169.i:                                   ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !278
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.sroa.6128.8.copyload.i), !noalias !278, !inline_history !267
  %.sroa.0.0.copyload73 = load i32, ptr %9, align 8, !tbaa !66 ; 2 uses
  %.sroa.40.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not160.i = icmp eq i32 %.sroa.0.0.copyload73, 0
  br i1 %.not160.i, label %bb.as, label %bb.ar, !prof !42

bb.ar:                                            ; preds = %.critedge169.i
  %.sroa.40.0.copyload92 = load ptr, ptr %.sroa.40.0..sroa_idx91, align 8, !tbaa !54
  %.sroa.39.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.39.0.copyload82 = load i32, ptr %.sroa.39.0..sroa_idx81, align 4
  %i.en = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.0.0.copyload73, ptr %.sroa.40.0.copyload92, ptr nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.490, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2878, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !267 ; 2 uses
  %i.eo = extractvalue { i32, ptr } %i.en, 0
  %i.ep = extractvalue { i32, ptr } %i.en, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit

bb.as:                                            ; preds = %.critedge169.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !128, !noalias !278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.er, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.40.0..sroa_idx91, i64 64, i1 false), !tbaa.struct !124, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !278
  %i.es = inttoptr i64 %.sroa.11.8.copyload.i to ptr
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.es), !noalias !278, !inline_history !267
  %.sroa.0.0.copyload74 = load i32, ptr %10, align 8, !tbaa !66 ; 2 uses
  %.sroa.40.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.sroa.40.0.copyload94 = load ptr, ptr %.sroa.40.0..sroa_idx93, align 8, !tbaa !54 ; 2 uses
  %.not161.i = icmp eq i32 %.sroa.0.0.copyload74, 0
  br i1 %.not161.i, label %.thread317, label %bb.at, !prof !42

.thread317:                                       ; preds = %bb.as
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !128, !noalias !278
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.40.0..sroa_idx93, i64 64, i1 false), !tbaa.struct !124, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit.thread

bb.at:                                            ; preds = %bb.as
  %.sroa.39.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.39.0.copyload84 = load i32, ptr %.sroa.39.0..sroa_idx83, align 4
  %i.ev = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.0.0.copyload74, ptr %.sroa.40.0.copyload94, ptr nonnull @ZL_SDDL_State_execExpr_field.__zl_static_error_info.491, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_SDDL_State_execExpr_field, i32 noundef 2882, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !267 ; 2 uses
  %i.ew = extractvalue { i32, ptr } %i.ev, 0
  %i.ex = extractvalue { i32, ptr } %i.ev, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !278
  br label %ZL_SDDL_State_execExpr_field.exit

ZL_SDDL_State_execExpr_field.exit.thread:         ; preds = %.critedge167.i, %.critedge165.i.preheader, %.critedge.i55, %bb.v, %bb.w, %bb.ad, %.thread311, %.thread317
  %.sroa.40.1 = phi ptr [ undef, %bb.v ], [ %.sroa.40.0.copyload94, %.thread317 ], [ undef, %bb.w ], [ undef, %.thread311 ], [ undef, %.critedge.i55 ], [ undef, %bb.ad ], [ undef, %.critedge165.i.preheader ], [ %.sroa.40.4, %.critedge167.i ]
  %.sroa.15.2.i = phi ptr [ %.sroa.15.8.copyload.i, %bb.v ], [ %i.ej, %.thread317 ], [ %.sroa.15.8.copyload.i, %bb.w ], [ %.sroa.15.8.copyload.i, %.thread311 ], [ %.sroa.15.8.copyload.i, %.critedge.i55 ], [ %.sroa.15.8.copyload.i, %bb.ad ], [ %i.cr, %.critedge165.i.preheader ], [ %i.cr, %.critedge167.i ]
  %.sroa.11.1.i = phi i64 [ %.sroa.11.8.copyload.i, %bb.v ], [ %.sroa.11.8.copyload.i, %.thread317 ], [ %.sroa.11.8.copyload.i, %bb.w ], [ %.sroa.11.8.copyload.i, %.thread311 ], [ %.sroa.9.0.copyload, %.critedge.i55 ], [ %.sroa.11.8.copyload.i, %bb.ad ], [ 0, %.critedge165.i.preheader ], [ %.sroa.11.8.copyload.i, %.critedge167.i ]
  %.sroa.6128.1.i = phi ptr [ %.sroa.6128.8.copyload.i, %bb.v ], [ %.sroa.6128.8.copyload.i, %.thread317 ], [ null, %bb.w ], [ %.sroa.6128.8.copyload.i, %.thread311 ], [ null, %.critedge.i55 ], [ %.sroa.6128.8.copyload.i, %bb.ad ], [ %.sroa.6128.8.copyload.i, %.critedge165.i.preheader ], [ %.sroa.6128.8.copyload.i, %.critedge167.i ]
  %i.ey = ptrtoint ptr %.sroa.40.1 to i64
  %.sroa.40.0.insert.mask = and i64 %i.ey, -4294967296
  %.sroa.40.0.insert.insert = or disjoint i64 %.sroa.40.0.insert.mask, 3
  %i.ez = inttoptr i64 %.sroa.40.0.insert.insert to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fa, align 8
  %i.fb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.29.8.copyload.i, i64 0
  br label %.thread343

ZL_SDDL_State_execExpr_field.exit:                ; preds = %bb.ab, %bb.aa, %bb.y, %bb.aq, %bb.ar, %bb.ak, %bb.am, %bb.an, %bb.at, %.critedge171.i
  %.sroa.0.10 = phi i32 [ %i.ds, %bb.ak ], [ %i.ew, %bb.at ], [ %i.el, %bb.aq ], [ %i.cv, %.critedge171.i ], [ %i.ee, %bb.an ], [ %i.dz, %bb.am ], [ %i.eo, %bb.ar ], [ %i.cj, %bb.aa ], [ %i.cn, %bb.ab ], [ %i.cf, %bb.y ] ; 2 uses
  %.sroa.39.5 = phi i32 [ %.sroa.39.0.copyload80, %bb.ak ], [ %.sroa.39.0.copyload84, %bb.at ], [ 0, %bb.aq ], [ 0, %.critedge171.i ], [ %.sroa.39.0.copyload76, %bb.an ], [ %.sroa.39.0.copyload78, %bb.am ], [ %.sroa.39.0.copyload82, %bb.ar ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.y ]
  %.sroa.40.11 = phi ptr [ %i.dt, %bb.ak ], [ %i.ex, %bb.at ], [ %i.em, %bb.aq ], [ %i.cw, %.critedge171.i ], [ %i.ef, %bb.an ], [ %i.ea, %bb.am ], [ %i.ep, %bb.ar ], [ %i.ck, %bb.aa ], [ %i.co, %bb.ab ], [ %i.cg, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.39.5, ptr %.sroa.39.0..sroa_idx, align 4
  %.not52 = icmp eq i32 %.sroa.0.10, 0
  br i1 %.not52, label %.thread343, label %bb.au, !prof !279

bb.au:                                            ; preds = %ZL_SDDL_State_execExpr_field.exit
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %14, i32 %.sroa.0.10, ptr %.sroa.40.11, ptr nonnull @ZL_SDDL_State_execExpr.__zl_static_error_info.239, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.237, i32 noundef 2938, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.fd = extractvalue { i32, ptr } %i.fc, 0
  %i.fe = extractvalue { i32, ptr } %i.fc, 1
  store i32 %i.fd, ptr %0, align 8, !tbaa !66
  store ptr %i.fe, ptr %.sroa.40.0..sroa_idx, align 8, !tbaa !54
  br label %bb.be

bb.av:                                            ; preds = %bb.e
  %.sroa.0109.0.copyload112 = load ptr, ptr %3, align 8
  %.sroa.12.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load <2 x i32>, ptr %.sroa.12.0..sroa_idx122, align 8
  %.sroa.14.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.14.0.copyload155 = load ptr, ptr %.sroa.14.0..sroa_idx154, align 8
  %.sroa.15.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.15.0.copyload171 = load i64, ptr %.sroa.15.0..sroa_idx170, align 8
  %.sroa.16.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.16.0.copyload187 = load ptr, ptr %.sroa.16.0..sroa_idx186, align 8
  %.sroa.17.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fg = load <2 x i64>, ptr %.sroa.17.0..sroa_idx202, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.19.0.copyload235 = load i64, ptr %.sroa.19.0..sroa_idx234, align 8, !tbaa !45
  br label %.thread343

bb.aw:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !129, !noalias !280
  %cond.i = icmp eq i64 %i.fj, 4
  br i1 %cond.i, label %StringView_eqCStr.exit12.i, label %StringView_eqCStr.exit.thread.i

StringView_eqCStr.exit12.i:                       ; preds = %bb.aw
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !130, !noalias !280 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 1
  %i.fm = icmp ne i32 %i.fl, 1835364959
  %i.fn = zext i1 %i.fm to i32
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ax, label %StringView_eqCStr.exit.i

bb.ax:                                            ; preds = %StringView_eqCStr.exit12.i
  store i32 0, ptr %16, align 8, !tbaa !132, !alias.scope !280
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 0, ptr %i.fp, align 4, !alias.scope !280
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !108, !noalias !280
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !109, !noalias !280
  %i.fv = sub nsw i64 %i.fs, %i.fu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fq, i8 0, i64 64, i1 false), !alias.scope !281
  store i32 2, ptr %i.fq, align 8, !tbaa !53, !alias.scope !281
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !59, !alias.scope !281
  br label %ZL_SDDL_State_execExpr_var.exit

StringView_eqCStr.exit.i:                         ; preds = %StringView_eqCStr.exit12.i
  %i.fx = load i32, ptr %i.fk, align 1
  %i.fy = icmp ne i32 %i.fx, 1936683103
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ay, label %StringView_eqCStr.exit.thread.i

bb.ay:                                            ; preds = %StringView_eqCStr.exit.i
  store i32 0, ptr %16, align 8, !tbaa !132, !alias.scope !280
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 0, ptr %i.gb, align 4, !alias.scope !280
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !109, !noalias !280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gc, i8 0, i64 64, i1 false), !alias.scope !282
  store i32 2, ptr %i.gc, align 8, !tbaa !53, !alias.scope !282
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !59, !alias.scope !282
  br label %ZL_SDDL_State_execExpr_var.exit

StringView_eqCStr.exit.thread.i:                  ; preds = %StringView_eqCStr.exit.i, %bb.aw
  call fastcc void @ZL_SDDL_Scope_get(ptr dead_on_unwind noalias nonnull writable align 8 %16, ptr %i.c, ptr noundef readonly %2, ptr noundef nonnull readonly %i.fh)
  br label %ZL_SDDL_State_execExpr_var.exit

ZL_SDDL_State_execExpr_var.exit:                  ; preds = %bb.ax, %bb.ay, %StringView_eqCStr.exit.thread.i
  %i.gg = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !114
  %i.gh = load i32, ptr %0, align 8, !tbaa !54    ; 2 uses
  %.not51 = icmp eq i32 %i.gh, 0
  br i1 %.not51, label %.thread352, label %bb.az, !prof !42

.thread352:                                       ; preds = %ZL_SDDL_State_execExpr_var.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.0109.0.copyload113 = load ptr, ptr %i.gi, align 8
  %.sroa.12.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gj = load <2 x i32>, ptr %.sroa.12.0..sroa_idx124, align 8
  %.sroa.14.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.sroa.14.0.copyload157 = load ptr, ptr %.sroa.14.0..sroa_idx156, align 8
  %.sroa.15.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.15.0.copyload173 = load i64, ptr %.sroa.15.0..sroa_idx172, align 8
  %.sroa.16.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %.sroa.16.0.copyload189 = load ptr, ptr %.sroa.16.0..sroa_idx188, align 8
  %.sroa.17.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.gk = load <2 x i64>, ptr %.sroa.17.0..sroa_idx204, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %16, i64 64
  %.sroa.19.0.copyload237 = load i64, ptr %.sroa.19.0..sroa_idx236, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %.thread343

bb.az:                                            ; preds = %ZL_SDDL_State_execExpr_var.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %14, i32 %i.gh, ptr %i.gm, ptr nonnull @ZL_SDDL_State_execExpr.__zl_static_error_info.240, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.237, i32 noundef 2947, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.go = extractvalue { i32, ptr } %i.gn, 0
  %i.gp = extractvalue { i32, ptr } %i.gn, 1
  store i32 %i.go, ptr %0, align 8, !tbaa !66
  store ptr %i.gp, ptr %i.gl, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.be

bb.ba:                                            ; preds = %bb.e
  %.sroa.0109.0.copyload114 = load ptr, ptr %3, align 8
  %.sroa.12.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gq = load <2 x i32>, ptr %.sroa.12.0..sroa_idx126, align 8
  %.sroa.14.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.14.0.copyload159 = load ptr, ptr %.sroa.14.0..sroa_idx158, align 8
  %.sroa.15.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.15.0.copyload175 = load i64, ptr %.sroa.15.0..sroa_idx174, align 8
  %.sroa.16.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.16.0.copyload191 = load ptr, ptr %.sroa.16.0..sroa_idx190, align 8
  %.sroa.17.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gr = load <2 x i64>, ptr %.sroa.17.0..sroa_idx206, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.19.0.copyload239 = load i64, ptr %.sroa.19.0..sroa_idx238, align 8, !tbaa !45
  br label %.thread343

bb.bb:                                            ; preds = %bb.e
  %.sroa.0109.0.copyload115 = load ptr, ptr %3, align 8
  %.sroa.12.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gs = load <2 x i32>, ptr %.sroa.12.0..sroa_idx128, align 8
  %.sroa.14.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.14.0.copyload161 = load ptr, ptr %.sroa.14.0..sroa_idx160, align 8
  %.sroa.15.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.15.0.copyload177 = load i64, ptr %.sroa.15.0..sroa_idx176, align 8
  %.sroa.16.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.16.0.copyload193 = load ptr, ptr %.sroa.16.0..sroa_idx192, align 8
  %.sroa.17.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gt = load <2 x i64>, ptr %.sroa.17.0..sroa_idx208, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.19.0.copyload241 = load i64, ptr %.sroa.19.0..sroa_idx240, align 8, !tbaa !45
  br label %.thread343

bb.bc:                                            ; preds = %bb.e
  %.sroa.0109.0.copyload116 = load ptr, ptr %3, align 8
  %.sroa.12.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gu = load <2 x i32>, ptr %.sroa.12.0..sroa_idx130, align 8
  %.sroa.14.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.14.0.copyload163 = load ptr, ptr %.sroa.14.0..sroa_idx162, align 8
  %.sroa.15.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.15.0.copyload179 = load i64, ptr %.sroa.15.0..sroa_idx178, align 8
  %.sroa.16.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.16.0.copyload195 = load ptr, ptr %.sroa.16.0..sroa_idx194, align 8
  %.sroa.17.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gv = load <2 x i64>, ptr %.sroa.17.0..sroa_idx210, align 8, !tbaa !54
  %.sroa.19.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.19.0.copyload243 = load i64, ptr %.sroa.19.0..sroa_idx242, align 8, !tbaa !45
  br label %.thread343

end_hunk_0
begin_hunk_1_@ZL_SDDL_State_execExpr_op_inner:bb.a
  br label %ZL_SDDL_Field_incref.exit.sink.split.i

bb.ak:                                            ; preds = %bb.af
  %.not.i203 = icmp eq ptr %.sroa.100.0.copyload263, null
  br i1 %.not.i203, label %.critedge541, label %ZL_SDDL_Field_incref.exit.sink.split.i

ZL_SDDL_Field_incref.exit.sink.split.i:           ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.sink.i.sink4.i = phi ptr [ %i.dn, %bb.aj ], [ %i.dm, %bb.ai ], [ %i.dl, %bb.ah ], [ %.sroa.100.0.copyload263, %bb.ak ] ; 2 uses
  %i.do = load i64, ptr %.sink.i.sink4.i, align 8, !tbaa !59
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %.sink.i.sink4.i, align 8, !tbaa !59
  br label %.critedge541

bb.al:                                            ; preds = %bb.a
  %i.dq = load i32, ptr %3, align 8, !tbaa !53    ; 2 uses
  %.not528 = icmp eq i32 %i.dq, 6
  br i1 %.not528, label %.critedge547, label %bb.am, !prof !42

bb.am:                                            ; preds = %bb.al
  %i.dr = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.268, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2580, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.270, i32 noundef %i.dq, i32 noundef 6) #15 ; 2 uses
  %i.ds = extractvalue { i32, ptr } %i.dr, 0      ; 2 uses
  %i.dt = extractvalue { i32, ptr } %i.dr, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ds, ptr %i.dt, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.ds, ptr %0, align 8, !tbaa !66
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dt, ptr %.sroa.5249.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

.critedge547:                                     ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !53 ; 2 uses
  %.not529 = icmp eq i32 %i.dv, 5
  br i1 %.not529, label %.critedge549, label %bb.an, !prof !42

bb.an:                                            ; preds = %.critedge547
  %i.dw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.271, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2581, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.223, i32 noundef %i.dv, i32 noundef 5) #15 ; 2 uses
  %i.dx = extractvalue { i32, ptr } %i.dw, 0      ; 2 uses
  %i.dy = extractvalue { i32, ptr } %i.dw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dx, ptr %i.dy, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.dx, ptr %0, align 8, !tbaa !66
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dy, ptr %.sroa.5244.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

.critedge549:                                     ; preds = %.critedge547
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !54
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 72
  call fastcc void @ZL_SDDL_Scope_get(ptr dead_on_unwind noalias writable align 8 %14, ptr %i.c, ptr noundef %i.ea, ptr noundef nonnull %i.eb)
  %i.ec = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ec, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !114
  %i.ed = load i32, ptr %0, align 8, !tbaa !54    ; 2 uses
  %.not530 = icmp eq i32 %i.ed, 0
  br i1 %.not530, label %.thread125, label %bb.ao, !prof !42

.thread125:                                       ; preds = %.critedge549
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.0.0.copyload208 = load ptr, ptr %i.ee, align 8
  %.sroa.51.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.51.0.copyload235 = load i64, ptr %.sroa.51.0..sroa_idx234, align 8 ; 2 uses
  %.sroa.51.sroa.32.0.extract.shift308 = lshr i64 %.sroa.51.0.copyload235, 32
  %.sroa.76.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ef = load <2 x ptr>, ptr %.sroa.76.0..sroa_idx243, align 8
  %.sroa.97.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.sroa.97.sroa.0.0.copyload274 = load i64, ptr %.sroa.97.0..sroa_idx257, align 8
  %.sroa.100.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %.sroa.100.0.copyload265 = load ptr, ptr %.sroa.100.0..sroa_idx264, align 8, !tbaa !54
  %.sroa.104.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %.sroa.104.sroa.0.0.copyload17 = load <2 x i64>, ptr %.sroa.104.0..sroa_idx270, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.critedge541

bb.ao:                                            ; preds = %.critedge549
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %9, i32 %i.ed, ptr %i.eh, ptr nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.274, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2586, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.ej = extractvalue { i32, ptr } %i.ei, 0
  %i.ek = extractvalue { i32, ptr } %i.ei, 1
  store i32 %i.ej, ptr %0, align 8, !tbaa !66
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.dq

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !324
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false), !noalias !324
  store ptr %i.c, ptr %4, align 8, !tbaa !37, !noalias !324
  %i.em = load i32, ptr %3, align 8, !tbaa !53, !noalias !324 ; 2 uses
  %.not.i627 = icmp eq i32 %i.em, 8
  br i1 %.not.i627, label %.critedge.i628, label %bb.aq, !prof !42

bb.aq:                                            ; preds = %bb.ap
  %i.en = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_bind.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.459, i32 noundef 2438, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.460, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.461, i32 noundef %i.em, i32 noundef 8) #15, !noalias !324, !inline_history !318 ; 2 uses
  %i.eo = extractvalue { i32, ptr } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { i32, ptr } %i.en, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.eo, ptr %i.ep, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !324, !inline_history !318
  br label %ZL_SDDL_State_execExpr_bind.exit

.critedge.i628:                                   ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !53, !noalias !324 ; 2 uses
  %.not82.i = icmp eq i32 %i.er, 7
  br i1 %.not82.i, label %.critedge90.i, label %bb.ar, !prof !42

bb.ar:                                            ; preds = %.critedge.i628
  %i.es = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_bind.__zl_static_error_info.462, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.459, i32 noundef 2439, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.464, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.465, i32 noundef %i.er, i32 noundef 7) #15, !noalias !324, !inline_history !318 ; 2 uses
  %i.et = extractvalue { i32, ptr } %i.es, 0      ; 2 uses
  %i.eu = extractvalue { i32, ptr } %i.es, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.et, ptr %i.eu, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !324, !inline_history !318
  br label %ZL_SDDL_State_execExpr_bind.exit

.critedge90.i:                                    ; preds = %.critedge.i628
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !54, !noalias !324 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !54, !noalias !324 ; 3 uses
  %.not83.i = icmp ugt i64 %i.ex, %i.ez
  br i1 %.not83.i, label %bb.as, label %.critedge92.i, !prof !38

bb.as:                                            ; preds = %.critedge90.i
  %i.fa = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_bind.__zl_static_error_info.466, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.459, i32 noundef 2449, i32 noundef 12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.468, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.469, i64 noundef %i.ex, i64 noundef %i.ez) #15, !noalias !324, !inline_history !318 ; 2 uses
  %i.fb = extractvalue { i32, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { i32, ptr } %i.fa, 1      ; 2 uses
  %i.fd = load i64, ptr %i.ey, align 8, !tbaa !54, !noalias !324
  %i.fe = load i64, ptr %i.ew, align 8, !tbaa !54, !noalias !324
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fb, ptr %i.fc, ptr noundef nonnull @.str.470, i64 noundef %i.fd, i64 noundef %i.fe) #15, !noalias !324, !inline_history !318
  br label %ZL_SDDL_State_execExpr_bind.exit

.critedge92.i:                                    ; preds = %.critedge90.i
  %.sroa.019.i.sroa.0.0.copyload = load ptr, ptr %3, align 8, !noalias !324
  %.sroa.019.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.019.i.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.019.i.sroa.4.0..sroa_idx, align 8, !noalias !324
  %.sroa.019.i.sroa.4.sroa.4.0..sroa.019.i.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.019.i.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.019.i.sroa.4.sroa.4.0..sroa.019.i.sroa.4.0..sroa_idx.sroa_idx, align 8, !noalias !324
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.420.0.copyload.i = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !324 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !54, !noalias !324 ; 5 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.15.i.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !45, !noalias !324
  %.not84.i = icmp eq ptr %.sroa.9.0.copyload.i, null
  br i1 %.not84.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.critedge92.i
  %.sroa.9.0.copyload.val.i = load i64, ptr %.sroa.9.0.copyload.i, align 8, !tbaa !59, !noalias !324
  %i.ff = icmp eq i64 %.sroa.9.0.copyload.val.i, 1
  br i1 %i.ff, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i64 2, ptr %.sroa.9.0.copyload.i, align 8, !tbaa !59, !noalias !324
  br label %.critedge94.i

bb.av:                                            ; preds = %bb.at, %.critedge92.i
  %i.fg = tail call fastcc ptr @ZL_SDDL_Scope_createCopy(ptr noundef nonnull %1, ptr noundef %.sroa.9.0.copyload.i), !noalias !324, !inline_history !318 ; 2 uses
  %.not85.i = icmp eq ptr %i.fg, null
  br i1 %.not85.i, label %bb.aw, label %.critedge94.i, !prof !38

bb.aw:                                            ; preds = %bb.av
  %i.fh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_bind.__zl_static_error_info.471, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.459, i32 noundef 2462, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.473, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !noalias !324, !inline_history !318 ; 2 uses
  %i.fi = extractvalue { i32, ptr } %i.fh, 0      ; 2 uses
  %i.fj = extractvalue { i32, ptr } %i.fh, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fi, ptr %i.fj, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !324, !inline_history !318
  br label %ZL_SDDL_State_execExpr_bind.exit

.critedge94.i:                                    ; preds = %bb.av, %bb.au
  %.sroa.9.0.i = phi ptr [ %.sroa.9.0.copyload.i, %bb.au ], [ %i.fg, %bb.av ] ; 2 uses
  %i.fk = load i64, ptr %i.ew, align 8, !tbaa !54, !noalias !324
  %.not88.i133.not = icmp eq i64 %i.fk, 0
  br i1 %.not88.i133.not, label %.critedge98.i, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge94.i
  %.sroa.23.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.22.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.23.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %ZL_SDDL_Expr_decref.exit
  %.076.i134 = phi i64 [ 0, %.lr.ph ], [ %i.fz, %ZL_SDDL_Expr_decref.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !324
  %i.fo = load ptr, ptr %i.ev, align 8, !tbaa !54, !noalias !324
  %i.fp = getelementptr inbounds nuw [64 x i8], ptr %i.fo, i64 %.076.i134
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %1, ptr noundef %2, ptr noundef %i.fp), !noalias !324, !inline_history !318
  %.sroa.076.0.copyload80 = load i32, ptr %6, align 8, !tbaa !66 ; 2 uses
  %.not86.i = icmp eq i32 %.sroa.076.0.copyload80, 0
  br i1 %.not86.i, label %bb.az, label %bb.ay, !prof !42

bb.ay:                                            ; preds = %bb.ax
  %.sroa.23.0.copyload87 = load ptr, ptr %.sroa.23.0..sroa_idx86, align 8, !tbaa !54
  %.sroa.22.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.22.0.copyload83 = load i32, ptr %.sroa.22.0..sroa_idx82, align 4
  %i.fq = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.076.0.copyload80, ptr %.sroa.23.0.copyload87, ptr nonnull @ZL_SDDL_State_execExpr_bind.__zl_static_error_info.474, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.459, i32 noundef 2469, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !318
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !324
  br label %.critedge96.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23.0..sroa_idx86, i64 64, i1 false), !tbaa.struct !124, !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !324
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.420.0.copyload.i, i64 %.076.i134
  call fastcc void @ZL_SDDL_Scope_set(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %1, ptr noundef nonnull %.sroa.9.0.i, ptr noundef %i.fr, ptr noundef %5), !noalias !324, !inline_history !318
  %.sroa.076.0.copyload81 = load i32, ptr %7, align 8, !tbaa !66 ; 2 uses
  %.sroa.22.0.copyload85 = load i32, ptr %.sroa.22.0..sroa_idx84, align 4
  %.sroa.23.0.copyload89 = load ptr, ptr %.sroa.23.0..sroa_idx88, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !324
  %.not87.i = icmp eq i32 %.sroa.076.0.copyload81, 0
  br i1 %.not87.i, label %bb.bb, label %bb.ba, !prof !42

bb.ba:                                            ; preds = %bb.az
  %i.fs = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.076.0.copyload81, ptr %.sroa.23.0.copyload89, ptr nonnull @ZL_SDDL_State_execExpr_bind.__zl_static_error_info.475, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.459, i32 noundef 2471, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !318
  br label %.critedge96.i

bb.bb:                                            ; preds = %bb.az
  %i.ft = load i32, ptr %5, align 8, !tbaa !53, !noalias !324
  switch i32 %i.ft, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.bc
    i32 8, label %bb.bg
    i32 6, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fu = load i32, ptr %i.fl, align 8, !tbaa !56, !noalias !324
  switch i32 %i.fu, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.be
    i32 2, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fv = load ptr, ptr %i.fn, align 8, !tbaa !54, !noalias !324 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !54, !noalias !324 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.fw, null
  br i1 %.not10.i.i, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.be, %bb.bd
  %.sink.i.i = phi ptr [ %i.fv, %bb.bd ], [ %i.fw, %bb.be ]
  tail call fastcc void @ZL_SDDL_DynExprSet_decref(ptr noundef %1, ptr noundef %.sink.i.i), !noalias !324, !inline_history !319
  br label %ZL_SDDL_Expr_decref.exit

bb.bf:                                            ; preds = %bb.bb
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !54, !noalias !324
  tail call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef %i.fx), !noalias !324, !inline_history !320
  br label %ZL_SDDL_Expr_decref.exit

bb.bg:                                            ; preds = %bb.bb
  %i.fy = load ptr, ptr %i.fm, align 8, !tbaa !54, !noalias !324 ; 2 uses
  %.not.i629 = icmp eq ptr %i.fy, null
  br i1 %.not.i629, label %ZL_SDDL_Expr_decref.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef nonnull %i.fy), !noalias !324, !inline_history !320
  br label %ZL_SDDL_Expr_decref.exit

ZL_SDDL_Expr_decref.exit:                         ; preds = %bb.bb, %bb.bc, %bb.bd, %bb.be, %.sink.split.i.i, %bb.bf, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !324
  %i.fz = add nuw i64 %.076.i134, 1               ; 2 uses
  %i.ga = load i64, ptr %i.ew, align 8, !tbaa !54, !noalias !324 ; 2 uses
  %.not88.i = icmp ult i64 %i.fz, %i.ga
  br i1 %.not88.i, label %bb.ax, label %.critedge98.i, !llvm.loop !321

.critedge96.i:                                    ; preds = %bb.ay, %bb.ba
  %.pn = phi { i32, ptr } [ %i.fs, %bb.ba ], [ %i.fq, %bb.ay ] ; 2 uses
  %.sroa.22.0 = phi i32 [ %.sroa.22.0.copyload85, %bb.ba ], [ %.sroa.22.0.copyload83, %bb.ay ]
  %.sroa.076.1 = extractvalue { i32, ptr } %.pn, 0
  %.sroa.23.1 = extractvalue { i32, ptr } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !324
  br label %ZL_SDDL_State_execExpr_bind.exit

.critedge98.i:                                    ; preds = %ZL_SDDL_Expr_decref.exit, %.critedge94.i
  %i.gb = phi i64 [ 0, %.critedge94.i ], [ %i.ga, %ZL_SDDL_Expr_decref.exit ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.420.0.copyload.i, i64 %i.gb
  %i.gd = sub i64 %i.ez, %i.gb
  %i.ge = insertelement <2 x ptr> poison, ptr %.sroa.019.i.sroa.4.sroa.4.0.copyload, i64 0
  %i.gf = insertelement <2 x ptr> %i.ge, ptr %i.gc, i64 1
  br label %ZL_SDDL_State_execExpr_bind.exit

ZL_SDDL_State_execExpr_bind.exit:                 ; preds = %bb.aw, %.critedge98.i, %.critedge96.i, %bb.aq, %bb.ar, %bb.as
  %.sroa.36.sroa.0.2 = phi <2 x i64> [ zeroinitializer, %bb.as ], [ zeroinitializer, %bb.aq ], [ zeroinitializer, %bb.ar ], [ zeroinitializer, %bb.aw ], [ %.sroa.15.i.sroa.0.0.copyload, %.critedge98.i ], [ zeroinitializer, %.critedge96.i ]
  %.sroa.33.sroa.0.2 = phi i64 [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.aw ], [ %.sroa.019.i.sroa.4.sroa.0.0.copyload, %.critedge98.i ], [ 0, %.critedge96.i ] ; 2 uses
  %.sroa.35.2 = phi ptr [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ar ], [ null, %bb.aw ], [ %.sroa.9.0.i, %.critedge98.i ], [ null, %.critedge96.i ]
  %.sroa.34.2 = phi i64 [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.aw ], [ %i.gd, %.critedge98.i ], [ 0, %.critedge96.i ]
  %.sroa.23.3 = phi ptr [ %i.fc, %bb.as ], [ %i.ep, %bb.aq ], [ %i.eu, %bb.ar ], [ %i.fj, %bb.aw ], [ %.sroa.019.i.sroa.0.0.copyload, %.critedge98.i ], [ %.sroa.23.1, %.critedge96.i ] ; 3 uses
  %.sroa.22.2 = phi i32 [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.aw ], [ 0, %.critedge98.i ], [ %.sroa.22.0, %.critedge96.i ]
  %.sroa.076.3 = phi i32 [ %i.fb, %bb.as ], [ %i.eo, %bb.aq ], [ %i.et, %bb.ar ], [ %i.fi, %bb.aw ], [ 0, %.critedge98.i ], [ %.sroa.076.1, %.critedge96.i ] ; 3 uses
  %i.gg = phi <2 x ptr> [ splat (ptr null), %bb.as ], [ splat (ptr null), %bb.aq ], [ splat (ptr null), %bb.ar ], [ splat (ptr null), %bb.aw ], [ %i.gf, %.critedge98.i ], [ splat (ptr null), %.critedge96.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !324
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gh, i8 0, i64 56, i1 false)
  store i32 %.sroa.076.3, ptr %0, align 8, !tbaa !66
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.22.2, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %.sroa.23.3, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !54
  %.not527 = icmp eq i32 %.sroa.076.3, 0
  br i1 %.not527, label %.thread129, label %bb.bi, !prof !42

.thread129:                                       ; preds = %ZL_SDDL_State_execExpr_bind.exit
  %.sroa.51.sroa.32.0.extract.shift354 = lshr i64 %.sroa.33.sroa.0.2, 32
  br label %.critedge541

bb.bi:                                            ; preds = %ZL_SDDL_State_execExpr_bind.exit
  %i.gi = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %9, i32 %.sroa.076.3, ptr %.sroa.23.3, ptr nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.275, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2594, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.gj = extractvalue { i32, ptr } %i.gi, 0
  %i.gk = extractvalue { i32, ptr } %i.gi, 1
  store i32 %i.gj, ptr %0, align 8, !tbaa !66
  store ptr %i.gk, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

bb.bj:                                            ; preds = %bb.a
  %i.gl = load i32, ptr %3, align 8, !tbaa !53    ; 2 uses
  %.not526 = icmp eq i32 %i.gl, 2
  br i1 %.not526, label %.critedge551, label %bb.bk, !prof !42

bb.bk:                                            ; preds = %bb.bj
  %i.gm = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.276, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2598, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.253, i32 noundef %i.gl, i32 noundef 2) #15 ; 2 uses
  %i.gn = extractvalue { i32, ptr } %i.gm, 0      ; 2 uses
  %i.go = extractvalue { i32, ptr } %i.gm, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.gn, ptr %i.go, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.gn, ptr %0, align 8, !tbaa !66
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.go, ptr %.sroa.5232.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

.critedge551:                                     ; preds = %bb.bj
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !54
  %i.gr = sub nsw i64 0, %i.gq                    ; 2 uses
  %.sroa.51.sroa.32.0.extract.shift350 = lshr i64 %i.gr, 32
  br label %.critedge541

bb.bl:                                            ; preds = %bb.a
  %i.gs = load i32, ptr %3, align 8, !tbaa !53    ; 2 uses
  %.not524 = icmp eq i32 %i.gs, 2
  br i1 %.not524, label %.critedge553, label %bb.bm, !prof !42

bb.bm:                                            ; preds = %bb.bl
  %i.gt = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.277, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2603, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.253, i32 noundef %i.gs, i32 noundef 2) #15 ; 2 uses
  %i.gu = extractvalue { i32, ptr } %i.gt, 0      ; 2 uses
  %i.gv = extractvalue { i32, ptr } %i.gt, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.gu, ptr %i.gv, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.gu, ptr %0, align 8, !tbaa !66
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %.sroa.5227.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

.critedge553:                                     ; preds = %bb.bl
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !53 ; 2 uses
  %.not525 = icmp eq i32 %i.gx, 2
  br i1 %.not525, label %.critedge555, label %bb.bn, !prof !42

bb.bn:                                            ; preds = %.critedge553
  %i.gy = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.278, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2604, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.253, i32 noundef %i.gx, i32 noundef 2) #15 ; 2 uses
  %i.gz = extractvalue { i32, ptr } %i.gy, 0      ; 2 uses
  %i.ha = extractvalue { i32, ptr } %i.gy, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.gz, ptr %i.ha, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.gz, ptr %0, align 8, !tbaa !66
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ha, ptr %.sroa.5222.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

.critedge555:                                     ; preds = %.critedge553
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !54
  %i.hf = icmp eq i64 %i.hc, %i.he
  %.sroa.51.sroa.0.0.extract.trunc300 = zext i1 %i.hf to i64
  br label %.critedge541

bb.bo:                                            ; preds = %bb.a
  %i.hg = load i32, ptr %3, align 8, !tbaa !53    ; 2 uses
  %.not522 = icmp eq i32 %i.hg, 2
  br i1 %.not522, label %.critedge557, label %bb.bp, !prof !42

bb.bp:                                            ; preds = %bb.bo
  %i.hh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.280, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2609, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.253, i32 noundef %i.hg, i32 noundef 2) #15 ; 2 uses
  %i.hi = extractvalue { i32, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { i32, ptr } %i.hh, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.hi, ptr %i.hj, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.hi, ptr %0, align 8, !tbaa !66
  %.sroa.5217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hj, ptr %.sroa.5217.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

.critedge557:                                     ; preds = %bb.bo
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !53 ; 2 uses
  %.not523 = icmp eq i32 %i.hl, 2
  br i1 %.not523, label %.critedge559, label %bb.bq, !prof !42

bb.bq:                                            ; preds = %.critedge557
  %i.hm = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_execExpr_op_inner.__zl_static_error_info.281, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.248, i32 noundef 2610, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.253, i32 noundef %i.hl, i32 noundef 2) #15 ; 2 uses
  %i.hn = extractvalue { i32, ptr } %i.hm, 0      ; 2 uses
  %i.ho = extractvalue { i32, ptr } %i.hm, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.hn, ptr %i.ho, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.hn, ptr %0, align 8, !tbaa !66
  %.sroa.5212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ho, ptr %.sroa.5212.0..sroa_idx, align 8, !tbaa !54
  br label %bb.dq

.critedge559:                                     ; preds = %.critedge557
end_hunk_1
begin_hunk_2_@ZL_SDDL_State_execExpr_op_inner:bb.a

.critedge541:                                     ; preds = %ZL_SDDL_State_execExpr_send.exit.thread, %ZL_SDDL_State_execExpr_send.exit, %.critedge621, %bb.dm, %.critedge617, %bb.di, %ZL_SDDL_Field_incref.exit.sink.split.i, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.thread129, %.thread125, %.thread109, %.thread, %.critedge, %.critedge623, %.critedge613, %.critedge611, %.critedge607, %.critedge603, %.critedge599, %.critedge593, %.critedge587, %.critedge583, %.critedge579, %.critedge575, %.critedge571, %.critedge567, %.critedge563, %.critedge559, %.critedge555, %.critedge551, %bb.r
  %.sroa.104.sroa.0.0 = phi <2 x i64> [ zeroinitializer, %.critedge ], [ %.sroa.104.sroa.0.0.copyload, %bb.r ], [ %.sroa.104.sroa.0.0.copyload15, %.thread ], [ zeroinitializer, %.thread109 ], [ zeroinitializer, %.critedge623 ], [ %.sroa.104.sroa.0.0.copyload16, %bb.af ], [ %.sroa.104.sroa.0.0.copyload16, %bb.ag ], [ %.sroa.104.sroa.0.0.copyload16, %bb.ai ], [ %.sroa.104.sroa.0.0.copyload16, %ZL_SDDL_Field_incref.exit.sink.split.i ], [ %.sroa.104.sroa.0.0.copyload16, %bb.ah ], [ %.sroa.104.sroa.0.0.copyload16, %bb.ak ], [ %.sroa.104.sroa.0.0.copyload17, %.thread125 ], [ %.sroa.36.sroa.0.2, %.thread129 ], [ zeroinitializer, %.critedge551 ], [ zeroinitializer, %.critedge555 ], [ zeroinitializer, %.critedge559 ], [ zeroinitializer, %.critedge563 ], [ zeroinitializer, %.critedge567 ], [ zeroinitializer, %.critedge571 ], [ zeroinitializer, %.critedge575 ], [ zeroinitializer, %.critedge579 ], [ zeroinitializer, %.critedge583 ], [ zeroinitializer, %.critedge587 ], [ zeroinitializer, %.critedge593 ], [ zeroinitializer, %.critedge599 ], [ zeroinitializer, %.critedge603 ], [ zeroinitializer, %.critedge607 ], [ zeroinitializer, %.critedge611 ], [ zeroinitializer, %.critedge613 ], [ zeroinitializer, %.critedge617 ], [ zeroinitializer, %bb.di ], [ zeroinitializer, %bb.dm ], [ zeroinitializer, %.critedge621 ], [ %.sroa.17.sroa.6.sroa.0.0.copyload, %ZL_SDDL_State_execExpr_send.exit.thread ], [ zeroinitializer, %ZL_SDDL_State_execExpr_send.exit ]
  %.sroa.0.0 = phi ptr [ null, %.critedge ], [ %.sroa.0.0.copyload, %bb.r ], [ %.sroa.0.0.copyload206, %.thread ], [ inttoptr (i64 2 to ptr), %.thread109 ], [ inttoptr (i64 2 to ptr), %.critedge623 ], [ %.sroa.0.0.copyload207, %bb.af ], [ %.sroa.0.0.copyload207, %bb.ag ], [ %.sroa.0.0.copyload207, %bb.ai ], [ %.sroa.0.0.copyload207, %ZL_SDDL_Field_incref.exit.sink.split.i ], [ %.sroa.0.0.copyload207, %bb.ah ], [ %.sroa.0.0.copyload207, %bb.ak ], [ %.sroa.0.0.copyload208, %.thread125 ], [ %.sroa.23.3, %.thread129 ], [ inttoptr (i64 2 to ptr), %.critedge551 ], [ inttoptr (i64 2 to ptr), %.critedge555 ], [ inttoptr (i64 2 to ptr), %.critedge559 ], [ inttoptr (i64 2 to ptr), %.critedge563 ], [ inttoptr (i64 2 to ptr), %.critedge567 ], [ inttoptr (i64 2 to ptr), %.critedge571 ], [ inttoptr (i64 2 to ptr), %.critedge575 ], [ inttoptr (i64 2 to ptr), %.critedge579 ], [ inttoptr (i64 2 to ptr), %.critedge583 ], [ inttoptr (i64 2 to ptr), %.critedge587 ], [ inttoptr (i64 2 to ptr), %.critedge593 ], [ inttoptr (i64 2 to ptr), %.critedge599 ], [ inttoptr (i64 2 to ptr), %.critedge603 ], [ inttoptr (i64 2 to ptr), %.critedge607 ], [ inttoptr (i64 2 to ptr), %.critedge611 ], [ inttoptr (i64 2 to ptr), %.critedge613 ], [ inttoptr (i64 2 to ptr), %.critedge617 ], [ inttoptr (i64 2 to ptr), %bb.di ], [ inttoptr (i64 2 to ptr), %bb.dm ], [ inttoptr (i64 2 to ptr), %.critedge621 ], [ %i.cg, %ZL_SDDL_State_execExpr_send.exit.thread ], [ %.sroa.10.0, %ZL_SDDL_State_execExpr_send.exit ]
  %.sroa.51.sroa.0.0 = phi i64 [ 0, %.critedge ], [ %.sroa.51.0.copyload, %bb.r ], [ %.sroa.51.0.copyload231, %.thread ], [ %i.bl, %.thread109 ], [ %.sroa.51.sroa.0.0.extract.trunc283, %.critedge623 ], [ %.sroa.51.0.copyload233, %bb.af ], [ %.sroa.51.0.copyload233, %bb.ag ], [ 3, %bb.ai ], [ %.sroa.51.0.copyload233, %ZL_SDDL_Field_incref.exit.sink.split.i ], [ 2, %bb.ah ], [ %.sroa.51.0.copyload233, %bb.ak ], [ %.sroa.51.0.copyload235, %.thread125 ], [ %.sroa.33.sroa.0.2, %.thread129 ], [ %i.gr, %.critedge551 ], [ %.sroa.51.sroa.0.0.extract.trunc300, %.critedge555 ], [ %.sroa.51.sroa.0.0.extract.trunc299, %.critedge559 ], [ %.sroa.51.sroa.0.0.extract.trunc298, %.critedge563 ], [ %.sroa.51.sroa.0.0.extract.trunc297, %.critedge567 ], [ %.sroa.51.sroa.0.0.extract.trunc296, %.critedge571 ], [ %.sroa.51.sroa.0.0.extract.trunc295, %.critedge575 ], [ %i.kl, %.critedge579 ], [ %i.kz, %.critedge583 ], [ %i.ln, %.critedge587 ], [ %i.me, %.critedge593 ], [ %i.mv, %.critedge599 ], [ %i.nj, %.critedge603 ], [ %i.nx, %.critedge607 ], [ %i.ol, %.critedge611 ], [ %i.os, %.critedge613 ], [ 0, %.critedge617 ], [ %i.ph, %bb.di ], [ %i.pw, %bb.dm ], [ 1, %.critedge621 ], [ 1, %ZL_SDDL_State_execExpr_send.exit.thread ], [ 0, %ZL_SDDL_State_execExpr_send.exit ]
  %.sroa.51.sroa.32.0 = phi i64 [ 0, %.critedge ], [ %.sroa.51.sroa.32.0.extract.shift, %bb.r ], [ %.sroa.51.sroa.32.0.extract.shift304, %.thread ], [ %.sroa.51.sroa.32.0.extract.shift352, %.thread109 ], [ 0, %.critedge623 ], [ %.sroa.51.sroa.32.0.extract.shift306, %bb.af ], [ %.sroa.51.sroa.32.0.extract.shift306, %bb.ag ], [ %.sroa.51.sroa.32.0.extract.shift306, %bb.ai ], [ %.sroa.51.sroa.32.0.extract.shift306, %ZL_SDDL_Field_incref.exit.sink.split.i ], [ %.sroa.51.sroa.32.0.extract.shift306, %bb.ah ], [ %.sroa.51.sroa.32.0.extract.shift306, %bb.ak ], [ %.sroa.51.sroa.32.0.extract.shift308, %.thread125 ], [ %.sroa.51.sroa.32.0.extract.shift354, %.thread129 ], [ %.sroa.51.sroa.32.0.extract.shift350, %.critedge551 ], [ 0, %.critedge555 ], [ 0, %.critedge559 ], [ 0, %.critedge563 ], [ 0, %.critedge567 ], [ 0, %.critedge571 ], [ 0, %.critedge575 ], [ %.sroa.51.sroa.32.0.extract.shift336, %.critedge579 ], [ %.sroa.51.sroa.32.0.extract.shift334, %.critedge583 ], [ %.sroa.51.sroa.32.0.extract.shift332, %.critedge587 ], [ %.sroa.51.sroa.32.0.extract.shift330, %.critedge593 ], [ %.sroa.51.sroa.32.0.extract.shift328, %.critedge599 ], [ %.sroa.51.sroa.32.0.extract.shift326, %.critedge603 ], [ %.sroa.51.sroa.32.0.extract.shift324, %.critedge607 ], [ %.sroa.51.sroa.32.0.extract.shift322, %.critedge611 ], [ %.sroa.51.sroa.32.0.extract.shift320, %.critedge613 ], [ 0, %.critedge617 ], [ 0, %bb.di ], [ 0, %bb.dm ], [ 0, %.critedge621 ], [ %i.cn, %ZL_SDDL_State_execExpr_send.exit.thread ], [ 0, %ZL_SDDL_State_execExpr_send.exit ]
  %.sroa.97.sroa.0.0 = phi i64 [ 0, %.critedge ], [ %.sroa.97.sroa.0.0.copyload, %bb.r ], [ %.sroa.97.sroa.0.0.copyload272, %.thread ], [ 0, %.thread109 ], [ 0, %.critedge623 ], [ %.sroa.97.sroa.0.0.copyload273, %bb.af ], [ %.sroa.97.sroa.0.0.copyload273, %bb.ag ], [ 0, %bb.ai ], [ %.sroa.97.sroa.0.0.copyload273, %ZL_SDDL_Field_incref.exit.sink.split.i ], [ 0, %bb.ah ], [ %.sroa.97.sroa.0.0.copyload273, %bb.ak ], [ %.sroa.97.sroa.0.0.copyload274, %.thread125 ], [ %.sroa.34.2, %.thread129 ], [ 0, %.critedge551 ], [ 0, %.critedge555 ], [ 0, %.critedge559 ], [ 0, %.critedge563 ], [ 0, %.critedge567 ], [ 0, %.critedge571 ], [ 0, %.critedge575 ], [ 0, %.critedge579 ], [ 0, %.critedge583 ], [ 0, %.critedge587 ], [ 0, %.critedge593 ], [ 0, %.critedge599 ], [ 0, %.critedge603 ], [ 0, %.critedge607 ], [ 0, %.critedge611 ], [ 0, %.critedge613 ], [ 0, %.critedge617 ], [ 0, %bb.di ], [ 0, %bb.dm ], [ 0, %.critedge621 ], [ %.sroa.15.sroa.8.0.copyload, %ZL_SDDL_State_execExpr_send.exit.thread ], [ 0, %ZL_SDDL_State_execExpr_send.exit ]
  %.sroa.100.0 = phi ptr [ null, %.critedge ], [ %.sroa.100.0.copyload, %bb.r ], [ %.sroa.100.0.copyload261, %.thread ], [ null, %.thread109 ], [ null, %.critedge623 ], [ %.sroa.100.0.copyload263, %bb.af ], [ %.sroa.100.0.copyload263, %bb.ag ], [ %.sroa.100.0.copyload263, %bb.ai ], [ %.sroa.100.0.copyload263, %ZL_SDDL_Field_incref.exit.sink.split.i ], [ %.sroa.100.0.copyload263, %bb.ah ], [ null, %bb.ak ], [ %.sroa.100.0.copyload265, %.thread125 ], [ %.sroa.35.2, %.thread129 ], [ null, %.critedge551 ], [ null, %.critedge555 ], [ null, %.critedge559 ], [ null, %.critedge563 ], [ null, %.critedge567 ], [ null, %.critedge571 ], [ null, %.critedge575 ], [ null, %.critedge579 ], [ null, %.critedge583 ], [ null, %.critedge587 ], [ null, %.critedge593 ], [ null, %.critedge599 ], [ null, %.critedge603 ], [ null, %.critedge607 ], [ null, %.critedge611 ], [ null, %.critedge613 ], [ null, %.critedge617 ], [ null, %bb.di ], [ null, %bb.dm ], [ null, %.critedge621 ], [ %i.cm, %ZL_SDDL_State_execExpr_send.exit.thread ], [ null, %ZL_SDDL_State_execExpr_send.exit ]
  %i.qg = phi <2 x ptr> [ splat (ptr null), %.critedge ], [ %i.az, %bb.r ], [ %i.bd, %.thread ], [ splat (ptr null), %.thread109 ], [ splat (ptr null), %.critedge623 ], [ %i.dj, %bb.af ], [ %i.dj, %bb.ag ], [ %i.dj, %bb.ai ], [ %i.dj, %ZL_SDDL_Field_incref.exit.sink.split.i ], [ %i.dj, %bb.ah ], [ %i.dj, %bb.ak ], [ %i.ef, %.thread125 ], [ %i.gg, %.thread129 ], [ splat (ptr null), %.critedge551 ], [ splat (ptr null), %.critedge555 ], [ splat (ptr null), %.critedge559 ], [ splat (ptr null), %.critedge563 ], [ splat (ptr null), %.critedge567 ], [ splat (ptr null), %.critedge571 ], [ splat (ptr null), %.critedge575 ], [ splat (ptr null), %.critedge579 ], [ splat (ptr null), %.critedge583 ], [ splat (ptr null), %.critedge587 ], [ splat (ptr null), %.critedge593 ], [ splat (ptr null), %.critedge599 ], [ splat (ptr null), %.critedge603 ], [ splat (ptr null), %.critedge607 ], [ splat (ptr null), %.critedge611 ], [ splat (ptr null), %.critedge613 ], [ splat (ptr null), %.critedge617 ], [ splat (ptr null), %bb.di ], [ splat (ptr null), %bb.dm ], [ splat (ptr null), %.critedge621 ], [ %i.ch, %ZL_SDDL_State_execExpr_send.exit.thread ], [ splat (ptr null), %ZL_SDDL_State_execExpr_send.exit ]
  store i32 0, ptr %0, align 8, !tbaa !132
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.qh, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.qi, align 8
  %.sroa.51.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.51.sroa.32.0.insert.shift = shl nuw i64 %.sroa.51.sroa.32.0, 32
  %.sroa.51.sroa.0.0.insert.ext = and i64 %.sroa.51.sroa.0.0, 4294967295
  %.sroa.51.sroa.0.0.insert.insert = or disjoint i64 %.sroa.51.sroa.32.0.insert.shift, %.sroa.51.sroa.0.0.insert.ext
  store i64 %.sroa.51.sroa.0.0.insert.insert, ptr %.sroa.51.0..sroa_idx236, align 8
  %.sroa.76.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.qg, ptr %.sroa.76.0..sroa_idx245, align 8
  %.sroa.97.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.97.sroa.0.0, ptr %.sroa.97.0..sroa_idx258, align 8
  %.sroa.100.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.100.0, ptr %.sroa.100.0..sroa_idx266, align 8, !tbaa !54
  %.sroa.104.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %.sroa.104.sroa.0.0, ptr %.sroa.104.0..sroa_idx271, align 8, !tbaa !45
  br label %bb.dq

bb.dq:                                            ; preds = %bb.bi, %bb.ao, %bb.ae, %bb.aa, %bb.v, %bb.t, %bb.do, %bb.dl, %bb.dk, %bb.dh, %bb.dg, %bb.de, %bb.dc, %bb.db, %bb.cz, %bb.cy, %bb.cw, %bb.cv, %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %bb.ci, %bb.ch, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.bz, %bb.by, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bk, %bb.an, %bb.am, %bb.ad, %bb.ac, %bb.e, %bb.d, %.critedge541, %bb.dp, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret void
}

declare void @ZL_RLOG_func(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ZL_SDDL_State_consume(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 72)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  %4 = alloca %union.ZL_Result_ZL_SDDL_Expr_u, align 8 ; 9 uses
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !37
  %i.d = load i32, ptr %2, align 8, !tbaa !53
  switch i32 %i.d, label %bb.w [
    i32 3, label %bb.b
    i32 8, label %bb.c
    i32 0, label %ZL_SDDL_ExprType_toString.exit
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 7, label %bb.v
    i32 4, label %bb.s
    i32 5, label %bb.t
    i32 6, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call fastcc void @ZL_SDDL_State_consumeField(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !333
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !noalias !333
  store ptr %i.c, ptr %3, align 8, !tbaa !37, !noalias !333
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77, !noalias !333 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.j = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeFunc.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.413, i32 noundef 2300, i32 noundef 12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.414, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.232, i64 noundef %i.i, i64 noundef 0) #15, !noalias !333, !inline_history !327 ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.j, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.k, ptr %i.l, ptr noundef nonnull @.str.415) #15, !noalias !333, !inline_history !327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !333
  store i32 %i.k, ptr %0, align 8, !tbaa !66, !alias.scope !333
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.523.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !333
  br label %ZL_SDDL_State_consumeFunc.exit

.critedge.i:                                      ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80, !noalias !333 ; 5 uses
  %.not43.i = icmp eq ptr %i.n, null
  br i1 %.not43.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !59, !noalias !333
  %i.o = icmp eq i64 %.val.i, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 2, ptr %i.n, align 8, !tbaa !59, !noalias !333
  br label %.critedge48.i

bb.g:                                             ; preds = %bb.e, %.critedge.i
  %i.p = tail call fastcc ptr @ZL_SDDL_Scope_createCopy(ptr noundef nonnull %1, ptr noundef %i.n), !noalias !333, !inline_history !327 ; 2 uses
  %.not44.i = icmp eq ptr %i.p, null
  br i1 %.not44.i, label %bb.h, label %.critedge48.i, !prof !38

bb.h:                                             ; preds = %bb.g
  %i.q = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeFunc.__zl_static_error_info.416, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.413, i32 noundef 2313, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !noalias !333, !inline_history !327 ; 2 uses
  %i.r = extractvalue { i32, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i32, ptr } %i.q, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.r, ptr %i.s, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !333, !inline_history !327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !333
  store i32 %i.r, ptr %0, align 8, !tbaa !66, !alias.scope !333
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.510.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !333
  br label %ZL_SDDL_State_consumeFunc.exit

.critedge48.i:                                    ; preds = %bb.g, %bb.f
  %.039.i = phi ptr [ %i.n, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !333
  %.not46.i23.not = icmp eq i64 %i.u, 0
  br i1 %.not46.i23.not, label %.critedge52.i, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge48.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = getelementptr i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %ZL_SDDL_Expr_decref.exit
  %.0.i24 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %ZL_SDDL_Expr_decref.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !333
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !78, !noalias !333
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %.0.i24
  call fastcc void @ZL_SDDL_State_execExpr(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %1, ptr noundef nonnull %.039.i, ptr noundef %i.y), !noalias !333, !inline_history !327
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !114
  %i.z = load i32, ptr %0, align 8, !tbaa !54, !alias.scope !333 ; 2 uses
  %.not45.i = icmp eq i32 %i.z, 0
  br i1 %.not45.i, label %bb.j, label %.critedge50.i, !prof !42

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload = load i32, ptr %i.v, align 8, !tbaa !66, !noalias !333
  %.sroa.511.0.copyload = load ptr, ptr %.sroa.511.0..sroa_idx, align 8, !noalias !333 ; 2 uses
  %.sroa.713.0.copyload = load ptr, ptr %.sroa.713.0..sroa_idx, align 8, !noalias !333 ; 3 uses
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !54, !noalias !333 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !333
  switch i32 %.sroa.0.0.copyload, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.k
    i32 8, label %bb.o
    i32 6, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.aa = ptrtoint ptr %.sroa.511.0.copyload to i64
  %.sroa.511.0.extract.trunc = trunc i64 %i.aa to i32
  switch i32 %.sroa.511.0.extract.trunc, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.m
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq ptr %.sroa.713.0.copyload, null
  br i1 %.not.i.i, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

bb.m:                                             ; preds = %bb.k
  %.not10.i.i = icmp eq ptr %.sroa.713.0.copyload, null
  br i1 %.not10.i.i, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %bb.l
  tail call fastcc void @ZL_SDDL_DynExprSet_decref(ptr noundef %1, ptr noundef %.sroa.713.0.copyload), !noalias !333, !inline_history !328
  br label %ZL_SDDL_Expr_decref.exit

bb.n:                                             ; preds = %bb.j
  tail call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef %.sroa.511.0.copyload), !noalias !333, !inline_history !329
  br label %ZL_SDDL_Expr_decref.exit

bb.o:                                             ; preds = %bb.j
  %.not.i10 = icmp eq ptr %.sroa.9.0.copyload, null
  br i1 %.not.i10, label %ZL_SDDL_Expr_decref.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef nonnull %.sroa.9.0.copyload), !noalias !333, !inline_history !329
  br label %ZL_SDDL_Expr_decref.exit

ZL_SDDL_Expr_decref.exit:                         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %.sink.split.i.i, %bb.n, %bb.o, %bb.p
  %i.ab = add nuw i64 %.0.i24, 1                  ; 2 uses
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !333
  %.not46.i = icmp ult i64 %i.ab, %i.ac
  br i1 %.not46.i, label %bb.i, label %.critedge52.i, !llvm.loop !330

.critedge50.i:                                    ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !333
  %i.af = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.z, ptr %i.ae, ptr nonnull @ZL_SDDL_State_consumeFunc.__zl_static_error_info.417, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.413, i32 noundef 2320, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !327 ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.af, 0
  %i.ah = extractvalue { i32, ptr } %i.af, 1
  store i32 %i.ag, ptr %0, align 8, !tbaa !66, !alias.scope !333
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !54, !alias.scope !333
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !333
  br label %ZL_SDDL_State_consumeFunc.exit

.critedge52.i:                                    ; preds = %ZL_SDDL_Expr_decref.exit, %.critedge48.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 6, ptr %i.ai, align 8, !tbaa !53, !alias.scope !334
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.039.i, ptr %i.aj, align 8, !tbaa !54, !alias.scope !334
  br label %ZL_SDDL_State_consumeFunc.exit

ZL_SDDL_State_consumeFunc.exit:                   ; preds = %.critedge50.i, %bb.d, %bb.h, %.critedge52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !333
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  br label %ZL_SDDL_ExprType_toString.exit

bb.r:                                             ; preds = %bb.a
  br label %ZL_SDDL_ExprType_toString.exit

bb.s:                                             ; preds = %bb.a
  br label %ZL_SDDL_ExprType_toString.exit

bb.t:                                             ; preds = %bb.a
  br label %ZL_SDDL_ExprType_toString.exit

bb.u:                                             ; preds = %bb.a
  br label %ZL_SDDL_ExprType_toString.exit

bb.v:                                             ; preds = %bb.a
  br label %ZL_SDDL_ExprType_toString.exit

bb.w:                                             ; preds = %bb.a
  br label %ZL_SDDL_ExprType_toString.exit

ZL_SDDL_ExprType_toString.exit:                   ; preds = %bb.a, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i9 = phi ptr [ @.str.331, %bb.w ], [ @.str.326, %bb.a ], [ @.str.327, %bb.q ], [ @.str.328, %bb.r ], [ @.str.135, %bb.v ], [ @.str.133, %bb.s ], [ @.str.134, %bb.t ], [ @.str.330, %bb.u ]
  %i.ak = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consume.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.333, i32 noundef 2339, i32 noundef 12, ptr noundef nonnull @.str.334, ptr noundef nonnull %.0.i9) #15 ; 2 uses
  %i.al = extractvalue { i32, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.ak, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.al, ptr %i.am, ptr noundef nonnull @.str.81) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.al, ptr %0, align 8, !tbaa !66
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.51.0..sroa_idx, align 8, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %ZL_SDDL_ExprType_toString.exit, %ZL_SDDL_State_consumeFunc.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc { i32, i64 } @ZL_SDDL_State_sizeofField(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 9 uses
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !37
  %i.d = load i32, ptr %1, align 8, !tbaa !53     ; 2 uses
  %.not = icmp eq i32 %i.d, 3
  br i1 %.not, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_sizeofField.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.418, i32 noundef 2393, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.377, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.378, i32 noundef %i.d, i32 noundef 3) #15 ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.e, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.f, ptr %i.g, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  %i.h = ptrtoint ptr %i.g to i64
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  switch i32 %i.j, label %bb.u [
    i32 0, label %bb.v
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %3, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.thread33, label %.preheader, !prof !38

.preheader:                                       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !143
  %.not42.i73.not = icmp eq i64 %i.q, 0
  br i1 %.not42.i73.not, label %ZL_SDDL_State_sizeofRecord.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.f

.thread33:                                        ; preds = %bb.e
  %i.s = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_sizeofRecord.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.420, i32 noundef 2354, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.374, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !inline_history !335 ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i32, ptr } %i.s, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.t, ptr %i.u, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !inline_history !335
  %i.v = ptrtoint ptr %i.u to i64
  br label %ZL_SDDL_State_sizeofRecord.exit

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %.0.i75 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.j ] ; 2 uses
  %.032.i74 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.j ]
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %.0.i75 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %.not40.i = icmp eq i32 %i.y, 3
  br i1 %.not40.i, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.z = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_sizeofRecord.__zl_static_error_info.421, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.420, i32 noundef 2358, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.377, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.378, i32 noundef %i.y, i32 noundef 3) #15, !inline_history !335 ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.z, 1       ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aa, ptr %i.ab, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !inline_history !335
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %ZL_SDDL_State_sizeofRecord.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call fastcc { i32, i64 } @ZL_SDDL_State_sizeofField(ptr noundef %0, ptr noundef nonnull %i.x), !inline_history !335 ; 2 uses
  %i.ae = extractvalue { i32, i64 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.ad, 1      ; 2 uses
  %.not.i21 = icmp eq i32 %i.ae, 0
  br i1 %.not.i21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.ae, ptr %i.ag, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.420, i32 noundef 2360, ptr noundef nonnull @.str.12) #15, !inline_history !335 ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0
  %i.aj = extractvalue { i32, ptr } %i.ah, 1
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %ZL_SDDL_State_sizeofRecord.exit

bb.j:                                             ; preds = %bb.h
  %i.al = add nsw i64 %i.af, %.032.i74            ; 2 uses
  %i.am = add nuw i64 %.0.i75, 1                  ; 2 uses
  %i.an = load i64, ptr %i.p, align 8, !tbaa !143
  %.not42.i = icmp ult i64 %i.am, %i.an
  br i1 %.not42.i, label %bb.f, label %ZL_SDDL_State_sizeofRecord.exit, !llvm.loop !336

ZL_SDDL_State_sizeofRecord.exit:                  ; preds = %bb.j, %.preheader, %bb.g, %bb.i, %.thread33
  %.sroa.030.7.i = phi i32 [ %i.t, %.thread33 ], [ %i.aa, %bb.g ], [ %i.ai, %bb.i ], [ 0, %.preheader ], [ 0, %bb.j ]
  %.sroa.8.7.i = phi i64 [ %i.v, %.thread33 ], [ %i.ac, %bb.g ], [ %i.ak, %bb.i ], [ 0, %.preheader ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.v

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %2, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !73 ; 2 uses
  %.not.i18 = icmp eq ptr %i.aq, null
  br i1 %.not.i18, label %.thread49, label %bb.l, !prof !38

.thread49:                                        ; preds = %bb.k
  %i.ar = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_sizeofArray.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.422, i32 noundef 2373, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.374, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !inline_history !337 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.ar, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.as, ptr %i.at, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !inline_history !337
  %i.au = ptrtoint ptr %i.at to i64
  br label %ZL_SDDL_State_sizeofArray.exit

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !128 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !53 ; 2 uses
  %.not45.i = icmp eq i32 %i.ax, 3
  br i1 %.not45.i, label %bb.n, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.ay = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_sizeofArray.__zl_static_error_info.423, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.422, i32 noundef 2376, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.425, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.378, i32 noundef %i.ax, i32 noundef 3) #15, !inline_history !337 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i32, ptr } %i.ay, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.az, ptr %i.ba, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !inline_history !337
  %i.bb = ptrtoint ptr %i.ba to i64
end_hunk_2
begin_hunk_3_@ZL_SDDL_State_consumeField:bb.a
  br i1 %i.ek, label %bb.ap, label %bb.bd

bb.ap:                                            ; preds = %bb.ao
  %i.el = load i64, ptr %i.o, align 8, !tbaa !61, !noalias !377 ; 2 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.el)
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %.split1.i.i, label %bb.bc

.split1.i.i:                                      ; preds = %bb.ap
  %i.eo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.el, i1 true)
  switch i64 %i.eo, label %bb.bc [
    i64 0, label %bb.aq
    i64 1, label %bb.at
    i64 2, label %bb.aw
    i64 3, label %bb.az
  ]

bb.aq:                                            ; preds = %.split1.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !107, !noalias !377
  %i.er = load i64, ptr %i.t, align 8, !tbaa !109, !noalias !377
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  %.val.i.i = load i8, ptr %i.es, align 1, !noalias !377 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !64, !range !141, !noalias !377, !noundef !142
  %i.ev = trunc nuw i8 %i.eu to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !376, !noalias !374
  br i1 %i.ev, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ew = sext i8 %.val.i.i to i64
  br label %ZL_SDDL_State_readAtom.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.ex = zext i8 %.val.i.i to i64
  br label %ZL_SDDL_State_readAtom.exit.i

bb.at:                                            ; preds = %.split1.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !65, !range !141, !noalias !377, !noundef !142
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !107, !noalias !377
  %i.fd = load i64, ptr %i.t, align 8, !tbaa !109, !noalias !377
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd
  %.val33.i.i = load i16, ptr %i.fe, align 1, !noalias !377 ; 2 uses
  %i.ff = tail call i16 @llvm.bswap.i16(i16 %.val33.i.i)
  %.031.i.i = select i1 %i.fa, i16 %i.ff, i16 %.val33.i.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !64, !range !141, !noalias !377, !noundef !142
  %i.fi = trunc nuw i8 %i.fh to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !376, !noalias !374
  br i1 %i.fi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fj = sext i16 %.031.i.i to i64
  br label %ZL_SDDL_State_readAtom.exit.i

bb.av:                                            ; preds = %bb.at
  %i.fk = zext i16 %.031.i.i to i64
  br label %ZL_SDDL_State_readAtom.exit.i

bb.aw:                                            ; preds = %.split1.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !65, !range !141, !noalias !377, !noundef !142
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !107, !noalias !377
  %i.fq = load i64, ptr %i.t, align 8, !tbaa !109, !noalias !377
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fq
  %.val35.i.i = load i32, ptr %i.fr, align 1, !noalias !377 ; 2 uses
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %.val35.i.i)
  %.0.i.i = select i1 %i.fn, i32 %i.fs, i32 %.val35.i.i ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !64, !range !141, !noalias !377, !noundef !142
  %i.fv = trunc nuw i8 %i.fu to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !376, !noalias !374
  br i1 %i.fv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fw = sext i32 %.0.i.i to i64
  br label %ZL_SDDL_State_readAtom.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.fx = zext i32 %.0.i.i to i64
  br label %ZL_SDDL_State_readAtom.exit.i

bb.az:                                            ; preds = %.split1.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !65, !range !141, !noalias !377, !noundef !142
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !107, !noalias !377
  %i.gd = load i64, ptr %i.t, align 8, !tbaa !109, !noalias !377
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %.val37.i.i = load i64, ptr %i.ge, align 1, !noalias !377 ; 2 uses
  br i1 %i.ga, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gf = tail call noundef i64 @llvm.bswap.i64(i64 %.val37.i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !379, !noalias !374
  br label %ZL_SDDL_State_readAtom.exit.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !380, !noalias !374
  br label %ZL_SDDL_State_readAtom.exit.i

bb.bc:                                            ; preds = %.split1.i.i, %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !381, !noalias !374
  br label %ZL_SDDL_State_readAtom.exit.i

bb.bd:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !382, !noalias !374
  br label %ZL_SDDL_State_readAtom.exit.i

bb.be:                                            ; preds = %.split.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !383, !noalias !374
  br label %ZL_SDDL_State_readAtom.exit.i

bb.bf:                                            ; preds = %.split.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !384, !noalias !374
  br label %ZL_SDDL_State_readAtom.exit.i

bb.bg:                                            ; preds = %.split.i.i, %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i8 0, i64 48, i1 false), !alias.scope !385, !noalias !374
  br label %ZL_SDDL_State_readAtom.exit.i

ZL_SDDL_State_readAtom.exit.i:                    ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.an
  %.sroa.0.0.i = phi i32 [ 0, %bb.bg ], [ 2, %bb.an ], [ 0, %bb.bc ], [ 2, %bb.ar ], [ 2, %bb.as ], [ 2, %bb.au ], [ 2, %bb.av ], [ 2, %bb.ax ], [ 2, %bb.ay ], [ 2, %bb.ba ], [ 2, %bb.bb ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.bf ]
  %.sroa.2064.0.i = phi i64 [ 0, %bb.bg ], [ %i.eh, %bb.an ], [ 0, %bb.bc ], [ %i.ew, %bb.ar ], [ %i.ex, %bb.as ], [ %i.fj, %bb.au ], [ %i.fk, %bb.av ], [ %i.fw, %bb.ax ], [ %i.fx, %bb.ay ], [ %i.gf, %bb.ba ], [ %.val37.i.i, %bb.bb ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.bf ]
  %i.gg = load i64, ptr %i.t, align 8, !tbaa !109, !noalias !374
  %i.gh = add i64 %i.gg, %i.p
  store i64 %i.gh, ptr %i.t, align 8, !tbaa !109, !noalias !374
  store i32 0, ptr %0, align 8, !tbaa !132, !alias.scope !374
  store i32 0, ptr %.sroa.411.0..sroa_idx.i, align 4, !alias.scope !374
  store i32 %.sroa.0.0.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !tbaa !66, !alias.scope !374
  %.sroa.20.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %.sroa.20.0..sroa.412.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !374
  %.sroa.2064.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2064.0.i, ptr %.sroa.2064.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !374
  %.sroa.29.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.0..sroa.412.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.i, i64 48, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.i)
  br label %ZL_SDDL_State_consumeAtom.exit

ZL_SDDL_State_consumeAtom.exit:                   ; preds = %bb.d, %bb.f, %bb.g, %bb.w, %bb.ak, %ZL_SDDL_State_readAtom.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !374
  br label %bb.el

bb.bh:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !386
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i8 0, i64 24, i1 false), !noalias !386
  store ptr %i.c, ptr %6, align 8, !tbaa !37, !noalias !386
  %i.gj = load ptr, ptr %1, align 8, !tbaa !85, !noalias !386
  %i.gk = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.gj, i64 noundef 64) #15, !noalias !386 ; 10 uses
  %.not.i21 = icmp eq ptr %i.gk, null
  br i1 %.not.i21, label %bb.bi, label %.critedge.i17

bb.bi:                                            ; preds = %bb.bh
  %i.gl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeRecord.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.370, i32 noundef 2134, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !noalias !386, !inline_history !362 ; 2 uses
  %i.gm = extractvalue { i32, ptr } %i.gl, 0      ; 2 uses
  %i.gn = extractvalue { i32, ptr } %i.gl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.gm, ptr %i.gn, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !386, !inline_history !362
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !386
  store i32 %i.gm, ptr %0, align 8, !tbaa !66, !alias.scope !386
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gn, ptr %.sroa.57.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !386
  br label %ZL_SDDL_State_consumeRecord.exit

.critedge.i17:                                    ; preds = %bb.bh
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !89, !noalias !386
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !89, !noalias !386
  store i64 1, ptr %i.gk, align 8, !tbaa !45, !noalias !386
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gt = load ptr, ptr %1, align 8, !tbaa !85, !noalias !386
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gs, i8 0, i64 36, i1 false), !noalias !386
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  store i32 -2, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66, !noalias !386
  %.sroa.5.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  store i32 1024, ptr %.sroa.5.0..sroa_idx.i22, align 8, !tbaa !66, !noalias !386
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !386
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  store ptr %i.gt, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !90, !noalias !386
  %i.gu = tail call fastcc { i32, i64 } @ZL_SDDL_State_consumeRecord_withScope(ptr noundef nonnull %1, ptr noundef nonnull %i.go, ptr noundef nonnull %i.gk), !noalias !386, !inline_history !362 ; 2 uses
  %i.gv = extractvalue { i32, i64 } %i.gu, 0      ; 2 uses
  %.not19.i = icmp eq i32 %i.gv, 0
  br i1 %.not19.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.critedge.i17
  %i.gw = extractvalue { i32, i64 } %i.gu, 1
  tail call fastcc void @ZL_SDDL_Scope_decref(ptr noundef nonnull %1, ptr noundef nonnull %i.gk), !noalias !386, !inline_history !362
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !386
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.cast = inttoptr i64 %i.gw to ptr
  %i.gx = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.gv, ptr %.cast, ptr nonnull @ZL_SDDL_State_consumeRecord.__zl_static_error_info.371, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.370, i32 noundef 2142, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !362 ; 2 uses
  %i.gy = extractvalue { i32, ptr } %i.gx, 0
  %i.gz = extractvalue { i32, ptr } %i.gx, 1
  store i32 %i.gy, ptr %0, align 8, !tbaa !66, !alias.scope !386
  store ptr %i.gz, ptr %.sroa.54.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !386
  br label %ZL_SDDL_State_consumeRecord.exit

bb.bk:                                            ; preds = %.critedge.i17
  %.sroa.54.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 6, ptr %.sroa.54.0..sroa_idx.i95, align 8, !tbaa !53, !alias.scope !387
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gk, ptr %i.ha, align 8, !tbaa !54, !alias.scope !387
  br label %ZL_SDDL_State_consumeRecord.exit

ZL_SDDL_State_consumeRecord.exit:                 ; preds = %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !386
  br label %bb.el

bb.bl:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !388
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i8 0, i64 24, i1 false), !noalias !388
  store ptr %i.c, ptr %4, align 8, !tbaa !37, !noalias !388
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !73, !noalias !388 ; 2 uses
  %.not.i18 = icmp eq ptr %i.hd, null
  br i1 %.not.i18, label %bb.bm, label %.critedge.i19, !prof !38

bb.bm:                                            ; preds = %bb.bl
  %i.he = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeArray.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.381, i32 noundef 2211, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.374, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15, !noalias !388, !inline_history !367 ; 2 uses
  %i.hf = extractvalue { i32, ptr } %i.he, 0      ; 2 uses
  %i.hg = extractvalue { i32, ptr } %i.he, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.hf, ptr %i.hg, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !388, !inline_history !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !388
  store i32 %i.hf, ptr %0, align 8, !tbaa !66, !alias.scope !388
  %.sroa.568.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hg, ptr %.sroa.568.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  br label %ZL_SDDL_State_consumeArray.exit

.critedge.i19:                                    ; preds = %bb.bl
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !128, !noalias !388 ; 10 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !53, !noalias !388 ; 2 uses
  %.not93.i.not = icmp eq i32 %i.hj, 3
  switch i32 %i.hj, label %bb.bn [
    i32 8, label %bb.bo
    i32 3, label %bb.bo
  ], !prof !389

bb.bn:                                            ; preds = %.critedge.i19
  %i.hk = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeArray.__zl_static_error_info.382, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.381, i32 noundef 2217, i32 noundef 12, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.384) #15, !noalias !388, !inline_history !367 ; 2 uses
  %i.hl = extractvalue { i32, ptr } %i.hk, 0      ; 2 uses
  %i.hm = extractvalue { i32, ptr } %i.hk, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.hl, ptr %i.hm, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !388, !inline_history !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !388
  store i32 %i.hl, ptr %0, align 8, !tbaa !66, !alias.scope !388
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hm, ptr %.sroa.546.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  br label %ZL_SDDL_State_consumeArray.exit

bb.bo:                                            ; preds = %.critedge.i19, %.critedge.i19
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !53, !noalias !388 ; 2 uses
  %.not94.i = icmp eq i32 %i.ho, 2
  br i1 %.not94.i, label %.critedge101.i, label %bb.bp, !prof !42

bb.bp:                                            ; preds = %bb.bo
  %i.hp = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeArray.__zl_static_error_info.385, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.381, i32 noundef 2218, i32 noundef 12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.253, i32 noundef %i.ho, i32 noundef 2) #15, !noalias !388, !inline_history !367 ; 2 uses
  %i.hq = extractvalue { i32, ptr } %i.hp, 0      ; 2 uses
  %i.hr = extractvalue { i32, ptr } %i.hp, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.hq, ptr %i.hr, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !388, !inline_history !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !388
  store i32 %i.hq, ptr %0, align 8, !tbaa !66, !alias.scope !388
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hr, ptr %.sroa.541.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  br label %ZL_SDDL_State_consumeArray.exit

.critedge101.i:                                   ; preds = %bb.bo
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hi, i64 72
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !54, !noalias !388 ; 8 uses
  %i.hu = icmp sgt i64 %i.ht, -1
  br i1 %i.hu, label %.critedge103.i, label %bb.bq, !prof !42

bb.bq:                                            ; preds = %.critedge101.i
  %i.hv = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeArray.__zl_static_error_info.388, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.381, i32 noundef 2219, i32 noundef 12, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.390, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.232, i64 noundef %i.ht, i64 noundef 0) #15, !noalias !388, !inline_history !367 ; 2 uses
  %i.hw = extractvalue { i32, ptr } %i.hv, 0      ; 2 uses
  %i.hx = extractvalue { i32, ptr } %i.hv, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.hw, ptr %i.hx, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !388, !inline_history !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !388
  store i32 %i.hw, ptr %0, align 8, !tbaa !66, !alias.scope !388
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hx, ptr %.sroa.536.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  br label %ZL_SDDL_State_consumeArray.exit

.critedge103.i:                                   ; preds = %.critedge101.i
  br i1 %.not93.i.not, label %bb.br, label %bb.eb

bb.br:                                            ; preds = %.critedge103.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !54, !noalias !388 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 1
  br i1 %i.ia, label %bb.bs, label %bb.dd

bb.bs:                                            ; preds = %bb.br
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !390
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i8 0, i64 24, i1 false), !noalias !390
  store ptr %i.c, ptr %3, align 8, !tbaa !37, !noalias !390
  %i.id = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !61, !noalias !390
  %i.if = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !375, !noalias !390 ; 3 uses
  %i.ih = mul i64 %i.ie, %i.ht                    ; 5 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !390
  br label %ZL_SDDL_State_consumeArray_ofAtoms.exit

bb.bu:                                            ; preds = %bb.bs
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !109, !noalias !390
  %i.il = add i64 %i.ik, %i.ih                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.in = load i64, ptr %i.im, align 8, !tbaa !108, !noalias !390 ; 2 uses
  %.not.i43 = icmp ugt i64 %i.il, %i.in
  br i1 %.not.i43, label %bb.bv, label %.critedge.i44, !prof !38

bb.bv:                                            ; preds = %bb.bu
  %i.io = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeArray_ofAtoms.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.394, i32 noundef 2083, i32 noundef 3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.32, i64 noundef %i.il, i64 noundef %i.in) #15, !noalias !390 ; 2 uses
  %i.ip = extractvalue { i32, ptr } %i.io, 0      ; 2 uses
  %i.iq = extractvalue { i32, ptr } %i.io, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ip, ptr %i.iq, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !390
  store i32 %i.ip, ptr %0, align 8, !tbaa !66, !alias.scope !390
  %.sroa.515.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iq, ptr %.sroa.515.0..sroa_idx.i90, align 8, !tbaa !54, !alias.scope !390
  br label %ZL_SDDL_State_consumeArray_ofAtoms.exit

.critedge.i44:                                    ; preds = %bb.bu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !390
  %i.ir = tail call fastcc { i32, i64 } @ZL_SDDL_State_updateDest(ptr noundef nonnull %1, i32 noundef %i.ig, ptr noundef nonnull readonly %i.ib), !noalias !390 ; 2 uses
  %i.is = extractvalue { i32, i64 } %i.ir, 0      ; 2 uses
  %.sroa.412.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not39.i46 = icmp eq i32 %i.is, 0
  br i1 %.not39.i46, label %bb.bx, label %bb.bw, !prof !42

bb.bw:                                            ; preds = %.critedge.i44
  %i.it = extractvalue { i32, i64 } %i.ir, 1
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.is, ptr %i.iu, ptr nonnull @ZL_SDDL_State_consumeArray_ofAtoms.__zl_static_error_info.395, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.394, i32 noundef 2085, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !noalias !390 ; 2 uses
  %i.iw = extractvalue { i32, ptr } %i.iv, 0
  %i.ix = extractvalue { i32, ptr } %i.iv, 1
  store i32 %i.iw, ptr %0, align 8, !tbaa !66, !alias.scope !390
  store ptr %i.ix, ptr %.sroa.412.0..sroa_idx.i45, align 8, !tbaa !54, !alias.scope !390
  br label %ZL_SDDL_State_consumeArray_ofAtoms.exit

bb.bx:                                            ; preds = %.critedge.i44
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 5 uses
  %.val.i47 = load i32, ptr %i.iy, align 8, !tbaa !117, !noalias !390 ; 2 uses
  %i.iz = icmp eq i32 %.val.i47, 0
  br i1 %i.iz, label %bb.bz, label %bb.by, !prof !38

bb.by:                                            ; preds = %bb.bx
  %i.ja = zext i32 %.val.i47 to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !54, !noalias !390
  %i.jd = add nsw i64 %i.ja, -1                   ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !66, !noalias !390
  %.not40.i48 = icmp eq i32 %i.ig, %i.jf
  br i1 %.not40.i48, label %bb.db, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 4 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !117, !noalias !390
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !145, !noalias !390 ; 8 uses
  %.not.i.i49 = icmp ult i32 %i.jh, %i.jj
  br i1 %.not.i.i49, label %bb.cn, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jk = icmp eq i32 %i.jj, 0                    ; 2 uses
  br i1 %i.jk, label %GenericVector_nextCapacity.exit.i.i50, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jl = icmp ugt i32 %i.jj, 511
  br i1 %i.jl, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jm = zext i32 %i.jj to i64                   ; 2 uses
  %i.jn = lshr i64 %i.jm, 2
  %i.jo = add nuw nsw i64 %i.jn, %i.jm
  br label %GenericVector_nextCapacity.exit.i.i50

bb.cd:                                            ; preds = %bb.cb
end_hunk_3
begin_hunk_4_@ZL_SDDL_State_consumeField:bb.a
  br label %GenericVector_reallocData.exit.i.i.i83

GenericVector_reallocData.exit.i.i.i83:           ; preds = %bb.cl, %bb.ck
  %.0.i28.i.i.i84 = phi ptr [ %i.kg, %bb.ck ], [ %i.kh, %bb.cl ] ; 2 uses
  %.not26.i.i.i85 = icmp eq ptr %.0.i28.i.i.i84, null
  br i1 %.not26.i.i.i85, label %GenericVector_reallocData.exit._crit_edge.i.i.i87, label %.thread20.i.i86

GenericVector_reallocData.exit._crit_edge.i.i.i87: ; preds = %GenericVector_reallocData.exit.i.i.i83
  %.022.in.pre.i.i.i88 = load i32, ptr %i.ji, align 4, !tbaa !145, !noalias !390
  %i.ki = zext i32 %.022.in.pre.i.i.i88 to i64
  %.not22.i.i89 = icmp samesign ugt i64 %.010.i.i.i56, %i.ki
  br i1 %.not22.i.i89, label %bb.cm, label %bb.cn

.thread20.i.i86:                                  ; preds = %GenericVector_reallocData.exit.i.i.i83
  store ptr %.0.i28.i.i.i84, ptr %i.ke, align 8, !tbaa !94, !noalias !390
  %i.kj = trunc nuw i64 %spec.select.i18.i.i81 to i32
  store i32 %i.kj, ptr %i.ji, align 4, !tbaa !145, !noalias !390
  br label %bb.cn

bb.cm:                                            ; preds = %GenericVector_reallocData.exit._crit_edge.i.i.i87, %GenericVector_nextCapacity.exit.i.i50
  %i.kk = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeArray_ofAtoms.__zl_static_error_info.396, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.394, i32 noundef 2091, i32 noundef 70, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.346) #15, !noalias !390 ; 2 uses
  %i.kl = extractvalue { i32, ptr } %i.kk, 0      ; 2 uses
  %i.km = extractvalue { i32, ptr } %i.kk, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kl, ptr %i.km, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !390
  store i32 %i.kl, ptr %0, align 8, !tbaa !66, !alias.scope !390
  store ptr %i.km, ptr %.sroa.412.0..sroa_idx.i45, align 8, !tbaa !54, !alias.scope !390
  br label %ZL_SDDL_State_consumeArray_ofAtoms.exit

bb.cn:                                            ; preds = %.thread20.i.i86, %GenericVector_reallocData.exit._crit_edge.i.i.i87, %bb.ce, %bb.bz
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !94, !noalias !390
  %i.kp = load i32, ptr %i.jg, align 8, !tbaa !117, !noalias !390
  %i.kq = zext i32 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kr
  store i64 %i.ih, ptr %i.ks, align 1, !noalias !390
  %i.kt = load i32, ptr %i.jg, align 8, !tbaa !117, !noalias !390
  %i.ku = add i32 %i.kt, 1
  store i32 %i.ku, ptr %i.jg, align 8, !tbaa !117, !noalias !390
  %i.kv = load i32, ptr %i.iy, align 8, !tbaa !117, !noalias !390
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 396 ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !145, !noalias !390 ; 8 uses
  %.not.i41.i58 = icmp ult i32 %i.kv, %i.kx
  br i1 %.not.i41.i58, label %GenericVector_pushBack.exit63.i67, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ky = icmp eq i32 %i.kx, 0                    ; 2 uses
  br i1 %i.ky, label %GenericVector_nextCapacity.exit.i42.i59, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kz = icmp ugt i32 %i.kx, 511
  br i1 %i.kz, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.la = zext i32 %i.kx to i64                   ; 2 uses
  %i.lb = lshr i64 %i.la, 2
  %i.lc = add nuw nsw i64 %i.lb, %i.la
  br label %GenericVector_nextCapacity.exit.i42.i59

bb.cr:                                            ; preds = %bb.cp
  %i.ld = shl nuw nsw i32 %i.kx, 1
  %i.le = zext nneg i32 %i.ld to i64
  br label %GenericVector_nextCapacity.exit.i42.i59

GenericVector_nextCapacity.exit.i42.i59:          ; preds = %bb.cr, %bb.cq, %bb.co
  %.0.i.i43.i60 = phi i64 [ %i.le, %bb.cr ], [ %i.lc, %bb.cq ], [ 4, %bb.co ] ; 2 uses
  %i.lf = zext i32 %i.kx to i64                   ; 6 uses
  %i.lg = icmp samesign ult i64 %.0.i.i43.i60, %i.lf
  %.phi.trans.insert.i.i44.i61 = getelementptr i8, ptr %1, i64 400
  %.val.pre.i.i45.i62 = load i32, ptr %.phi.trans.insert.i.i44.i61, align 8, !tbaa !92, !noalias !390
  %.pre.i.i46.i63 = zext i32 %.val.pre.i.i45.i62 to i64 ; 4 uses
  %spec.select.i.i47.i64 = tail call i64 @llvm.umin.i64(i64 %.0.i.i43.i60, i64 %.pre.i.i46.i63)
  %.010.i.i48.i65 = select i1 %i.lg, i64 %.pre.i.i46.i63, i64 %spec.select.i.i47.i64 ; 4 uses
  %i.lh = icmp eq i64 %.010.i.i48.i65, %i.lf
  br i1 %i.lh, label %bb.da, label %bb.cs

bb.cs:                                            ; preds = %GenericVector_nextCapacity.exit.i42.i59
  %.not.i.i49.i66 = icmp samesign ugt i64 %.010.i.i48.i65, %i.lf
  br i1 %.not.i.i49.i66, label %bb.ct, label %GenericVector_pushBack.exit63.i67

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.ky, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.li = icmp ugt i32 %i.kx, 511
  br i1 %i.li, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.lj = lshr i64 %i.lf, 2
  %i.lk = add nuw nsw i64 %i.lj, %i.lf
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.ll = shl nuw nsw i32 %i.kx, 1
  %i.lm = zext nneg i32 %i.ll to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.ct
  %.0.i.i.i52.i68 = phi i64 [ %i.lm, %bb.cw ], [ %i.lk, %bb.cv ], [ 4, %bb.ct ] ; 2 uses
  %i.ln = icmp samesign ult i64 %.0.i.i.i52.i68, %i.lf
  %spec.select.i.i.i53.i69 = tail call i64 @llvm.umin.i64(i64 %.0.i.i.i52.i68, i64 %.pre.i.i46.i63)
  %i.lo = tail call i64 @llvm.umax.i64(i64 %.010.i.i48.i65, i64 %spec.select.i.i.i53.i69)
  %spec.select.i18.i54.i70 = select i1 %i.ln, i64 %.pre.i.i46.i63, i64 %i.lo ; 2 uses
  %i.lp = shl nuw nsw i64 %spec.select.i18.i54.i70, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !93, !noalias !390 ; 2 uses
  %.not.i.i.i55.i71 = icmp eq ptr %i.lr, null
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !94, !noalias !390 ; 2 uses
  br i1 %.not.i.i.i55.i71, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lu = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.lr, ptr noundef %i.lt, i64 noundef %i.lp) #15, !noalias !390
  br label %GenericVector_reallocData.exit.i.i56.i72

bb.cz:                                            ; preds = %bb.cx
  %i.lv = tail call ptr @ZL_realloc(ptr noundef %i.lt, i64 noundef %i.lp) #15, !noalias !390
  br label %GenericVector_reallocData.exit.i.i56.i72

GenericVector_reallocData.exit.i.i56.i72:         ; preds = %bb.cz, %bb.cy
  %.0.i28.i.i57.i73 = phi ptr [ %i.lu, %bb.cy ], [ %i.lv, %bb.cz ] ; 2 uses
  %.not26.i.i58.i74 = icmp eq ptr %.0.i28.i.i57.i73, null
  br i1 %.not26.i.i58.i74, label %GenericVector_reallocData.exit._crit_edge.i.i60.i76, label %.thread20.i59.i75

GenericVector_reallocData.exit._crit_edge.i.i60.i76: ; preds = %GenericVector_reallocData.exit.i.i56.i72
  %.022.in.pre.i.i61.i77 = load i32, ptr %i.kw, align 4, !tbaa !145, !noalias !390
  %i.lw = zext i32 %.022.in.pre.i.i61.i77 to i64
  %.not22.i62.i78 = icmp samesign ugt i64 %.010.i.i48.i65, %i.lw
  br i1 %.not22.i62.i78, label %bb.da, label %GenericVector_pushBack.exit63.i67

.thread20.i59.i75:                                ; preds = %GenericVector_reallocData.exit.i.i56.i72
  store ptr %.0.i28.i.i57.i73, ptr %i.ls, align 8, !tbaa !94, !noalias !390
  %i.lx = trunc nuw i64 %spec.select.i18.i54.i70 to i32
  store i32 %i.lx, ptr %i.kw, align 4, !tbaa !145, !noalias !390
  br label %GenericVector_pushBack.exit63.i67

GenericVector_pushBack.exit63.i67:                ; preds = %.thread20.i59.i75, %GenericVector_reallocData.exit._crit_edge.i.i60.i76, %bb.cs, %bb.cn
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !94, !noalias !390
  %i.ma = load i32, ptr %i.iy, align 8, !tbaa !117, !noalias !390
  %i.mb = zext i32 %i.ma to i64
  %i.mc = shl nuw nsw i64 %i.mb, 2
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mc
  store i32 %i.ig, ptr %i.md, align 1, !noalias !390
  %i.me = load i32, ptr %i.iy, align 8, !tbaa !117, !noalias !390
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr %i.iy, align 8, !tbaa !117, !noalias !390
  br label %bb.dc

bb.da:                                            ; preds = %GenericVector_reallocData.exit._crit_edge.i.i60.i76, %GenericVector_nextCapacity.exit.i42.i59
  %i.mg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeArray_ofAtoms.__zl_static_error_info.397, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.394, i32 noundef 2092, i32 noundef 70, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.349) #15, !noalias !390 ; 2 uses
  %i.mh = extractvalue { i32, ptr } %i.mg, 0      ; 2 uses
  %i.mi = extractvalue { i32, ptr } %i.mg, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.mh, ptr %i.mi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15, !noalias !390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !390
  store i32 %i.mh, ptr %0, align 8, !tbaa !66, !alias.scope !390
  store ptr %i.mi, ptr %.sroa.412.0..sroa_idx.i45, align 8, !tbaa !54, !alias.scope !390
  br label %ZL_SDDL_State_consumeArray_ofAtoms.exit

bb.db:                                            ; preds = %bb.by
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !54, !noalias !390
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.jd ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !45, !noalias !390
  %i.mn = add i64 %i.mm, %i.ih
  store i64 %i.mn, ptr %i.ml, align 8, !tbaa !45, !noalias !390
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %GenericVector_pushBack.exit63.i67
  %i.mo = load i64, ptr %i.ij, align 8, !tbaa !109, !noalias !390
  %i.mp = add i64 %i.mo, %i.ih
  store i64 %i.mp, ptr %i.ij, align 8, !tbaa !109, !noalias !390
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !390
  br label %ZL_SDDL_State_consumeArray_ofAtoms.exit

ZL_SDDL_State_consumeArray_ofAtoms.exit:          ; preds = %bb.bt, %bb.bv, %bb.bw, %bb.cm, %bb.da, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !390
  br label %ZL_SDDL_State_consumeArray.exit

bb.dd:                                            ; preds = %bb.br
  %i.mq = icmp eq i32 %i.hz, 2
  %i.mr = icmp samesign ugt i64 %i.ht, 1
  %or.cond.i = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %or.cond.i, label %bb.de, label %bb.eb

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !388
  %i.ms = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.mt = tail call fastcc { i32, i64 } @ZL_SDDL_State_consumeRecord_noScope(ptr noundef nonnull %1, ptr noundef nonnull %i.ms, i1 noundef zeroext true), !noalias !388, !inline_history !367 ; 2 uses
  %i.mu = extractvalue { i32, i64 } %i.mt, 0      ; 3 uses
  %i.mv = extractvalue { i32, i64 } %i.mt, 1      ; 2 uses
  store i32 %i.mu, ptr %0, align 8, !tbaa !66, !alias.scope !388
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.mv, ptr %.sroa.428.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  %.not97.i = icmp eq i32 %i.mu, 0
  br i1 %.not97.i, label %bb.dg, label %bb.df, !prof !42

bb.df:                                            ; preds = %bb.de
  %i.mw = inttoptr i64 %i.mv to ptr
  %i.mx = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.mu, ptr %i.mw, ptr nonnull @ZL_SDDL_State_consumeArray.__zl_static_error_info.391, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.381, i32 noundef 2232, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !367 ; 2 uses
  %i.my = extractvalue { i32, ptr } %i.mx, 0
  %i.mz = extractvalue { i32, ptr } %i.mx, 1
  store i32 %i.my, ptr %0, align 8, !tbaa !66, !alias.scope !388
  store ptr %i.mz, ptr %.sroa.428.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  br label %ZL_SDDL_State_consumeArray.exit

bb.dg:                                            ; preds = %bb.de
  %i.na = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !54, !noalias !388
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 32
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !146, !noalias !388
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !148, !noalias !388
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val110.i = load i32, ptr %i.ng, align 8, !tbaa !117, !noalias !388
  %i.nh = zext i32 %.val110.i to i64
  %i.ni = add nsw i64 %i.ht, -1
  %i.nj = mul i64 %i.nf, %i.ni                    ; 2 uses
  %i.nk = add i64 %i.nj, %i.nh                    ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !145, !noalias !388 ; 4 uses
  %i.nn = zext i32 %i.nm to i64                   ; 4 uses
  %.not.i29 = icmp ugt i64 %i.nk, %i.nn
  br i1 %.not.i29, label %bb.dh, label %GenericVector_reserve.exit42

bb.dh:                                            ; preds = %bb.dg
  %i.no = getelementptr i8, ptr %1, i64 368
  %.val27.i31 = load i32, ptr %i.no, align 8, !tbaa !92, !noalias !388
  %i.np = zext i32 %.val27.i31 to i64             ; 3 uses
  %i.nq = icmp ugt i64 %i.nk, %i.np
  br i1 %i.nq, label %GenericVector_reserve.exit42, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nr = icmp eq i32 %i.nm, 0
  br i1 %i.nr, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ns = icmp ugt i32 %i.nm, 511
  br i1 %i.ns, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.nt = lshr i64 %i.nn, 2
  %i.nu = add nuw nsw i64 %i.nt, %i.nn
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.nv = shl nuw nsw i32 %i.nm, 1
  %i.nw = zext nneg i32 %i.nv to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.di
  %.0.i.i32 = phi i64 [ %i.nw, %bb.dl ], [ %i.nu, %bb.dk ], [ 4, %bb.di ] ; 2 uses
  %i.nx = icmp samesign ult i64 %.0.i.i32, %i.nn
  %spec.select.i.i33 = tail call i64 @llvm.umin.i64(i64 %.0.i.i32, i64 %i.np)
  %.010.i.i34 = select i1 %i.nx, i64 %i.np, i64 %spec.select.i.i33
  %spec.select.i35 = tail call i64 @llvm.umax.i64(i64 %i.nk, i64 %.010.i.i34) ; 2 uses
  %i.ny = shl nuw nsw i64 %spec.select.i35, 3     ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !93, !noalias !388 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.oa, null
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !94, !noalias !388 ; 2 uses
  br i1 %.not.i.i36, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.od = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.oa, ptr noundef %i.oc, i64 noundef %i.ny) #15, !noalias !388
  br label %GenericVector_reallocData.exit.i37

bb.do:                                            ; preds = %bb.dm
  %i.oe = tail call ptr @ZL_realloc(ptr noundef %i.oc, i64 noundef %i.ny) #15, !noalias !388
  br label %GenericVector_reallocData.exit.i37

GenericVector_reallocData.exit.i37:               ; preds = %bb.do, %bb.dn
  %.0.i28.i38 = phi ptr [ %i.od, %bb.dn ], [ %i.oe, %bb.do ] ; 2 uses
  %.not26.i39 = icmp eq ptr %.0.i28.i38, null
  br i1 %.not26.i39, label %GenericVector_reserve.exit42, label %bb.dp

bb.dp:                                            ; preds = %GenericVector_reallocData.exit.i37
  store ptr %.0.i28.i38, ptr %i.ob, align 8, !tbaa !94, !noalias !388
  %i.of = trunc nuw i64 %spec.select.i35 to i32
  store i32 %i.of, ptr %i.nl, align 4, !tbaa !145, !noalias !388
  br label %GenericVector_reserve.exit42

GenericVector_reserve.exit42:                     ; preds = %GenericVector_reallocData.exit.i37, %bb.dg, %bb.dh, %bb.dp
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val.i20 = load i32, ptr %i.og, align 8, !tbaa !117, !noalias !388
  %i.oh = zext i32 %.val.i20 to i64
  %i.oi = add i64 %i.nj, %i.oh                    ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 396 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !145, !noalias !388 ; 4 uses
  %i.ol = zext i32 %i.ok to i64                   ; 4 uses
  %.not.i25 = icmp ugt i64 %i.oi, %i.ol
  br i1 %.not.i25, label %bb.dq, label %.lr.ph.preheader

bb.dq:                                            ; preds = %GenericVector_reserve.exit42
  %i.om = getelementptr i8, ptr %1, i64 400
  %.val27.i = load i32, ptr %i.om, align 8, !tbaa !92, !noalias !388
  %i.on = zext i32 %.val27.i to i64               ; 3 uses
  %i.oo = icmp ugt i64 %i.oi, %i.on
  br i1 %i.oo, label %.lr.ph.preheader, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.op = icmp eq i32 %i.ok, 0
  br i1 %i.op, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.oq = icmp ugt i32 %i.ok, 511
  br i1 %i.oq, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.or = lshr i64 %i.ol, 2
  %i.os = add nuw nsw i64 %i.or, %i.ol
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.ot = shl nuw nsw i32 %i.ok, 1
  %i.ou = zext nneg i32 %i.ot to i64
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.dr
  %.0.i.i26 = phi i64 [ %i.ou, %bb.du ], [ %i.os, %bb.dt ], [ 4, %bb.dr ] ; 2 uses
  %i.ov = icmp samesign ult i64 %.0.i.i26, %i.ol
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i26, i64 %i.on)
  %.010.i.i = select i1 %i.ov, i64 %i.on, i64 %spec.select.i.i
  %spec.select.i27 = tail call i64 @llvm.umax.i64(i64 %i.oi, i64 %.010.i.i) ; 2 uses
  %i.ow = shl nuw nsw i64 %spec.select.i27, 2     ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !93, !noalias !388 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.oy, null
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !94, !noalias !388 ; 2 uses
  br i1 %.not.i.i28, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pb = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.oy, ptr noundef %i.pa, i64 noundef %i.ow) #15, !noalias !388
  br label %GenericVector_reallocData.exit.i

bb.dx:                                            ; preds = %bb.dv
  %i.pc = tail call ptr @ZL_realloc(ptr noundef %i.pa, i64 noundef %i.ow) #15, !noalias !388
  br label %GenericVector_reallocData.exit.i

GenericVector_reallocData.exit.i:                 ; preds = %bb.dx, %bb.dw
  %.0.i28.i = phi ptr [ %i.pb, %bb.dw ], [ %i.pc, %bb.dx ] ; 2 uses
  %.not26.i = icmp eq ptr %.0.i28.i, null
  br i1 %.not26.i, label %.lr.ph.preheader, label %bb.dy

bb.dy:                                            ; preds = %GenericVector_reallocData.exit.i
  store ptr %.0.i28.i, ptr %i.oz, align 8, !tbaa !94, !noalias !388
  %i.pd = trunc nuw i64 %spec.select.i27 to i32
  store i32 %i.pd, ptr %i.oj, align 4, !tbaa !145, !noalias !388
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.dy, %bb.dq, %GenericVector_reserve.exit42, %GenericVector_reallocData.exit.i
  br label %.lr.ph

bb.dz:                                            ; preds = %.lr.ph
  %i.pe = add nuw i64 %.086.i108, 1               ; 2 uses
  %exitcond115.not = icmp eq i64 %i.pe, %i.ht
  br i1 %exitcond115.not, label %.critedge105.i, label %.lr.ph, !llvm.loop !370

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dz
  %.086.i108 = phi i64 [ %i.pe, %bb.dz ], [ 1, %.lr.ph.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !alias.scope !388
  %i.pf = tail call fastcc { i32, i64 } @ZL_SDDL_State_consumeRecord_noScope(ptr noundef %1, ptr noundef nonnull %i.ms, i1 noundef zeroext false), !noalias !388, !inline_history !367 ; 2 uses
  %i.pg = extractvalue { i32, i64 } %i.pf, 0      ; 3 uses
  %i.ph = extractvalue { i32, i64 } %i.pf, 1      ; 2 uses
  store i32 %i.pg, ptr %0, align 8, !tbaa !66, !alias.scope !388
  store i64 %i.ph, ptr %.sroa.428.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  %.not98.i = icmp eq i32 %i.pg, 0
  br i1 %.not98.i, label %bb.dz, label %bb.ea, !prof !42

bb.ea:                                            ; preds = %.lr.ph
  %i.pi = inttoptr i64 %i.ph to ptr
  %i.pj = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.pg, ptr %i.pi, ptr nonnull @ZL_SDDL_State_consumeArray.__zl_static_error_info.392, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.381, i32 noundef 2248, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !367 ; 2 uses
  %i.pk = extractvalue { i32, ptr } %i.pj, 0
  %i.pl = extractvalue { i32, ptr } %i.pj, 1
  store i32 %i.pk, ptr %0, align 8, !tbaa !66, !alias.scope !388
  store ptr %i.pl, ptr %.sroa.428.0..sroa_idx.i, align 8, !tbaa !54, !alias.scope !388
  br label %ZL_SDDL_State_consumeArray.exit

.critedge105.i:                                   ; preds = %bb.dz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %ZL_SDDL_State_consumeArray.exit

bb.eb:                                            ; preds = %bb.dd, %.critedge103.i
  %.not96.i109.not = icmp eq i64 %i.ht, 0
  br i1 %.not96.i109.not, label %.critedge109.i, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.eb
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.pn = getelementptr i8, ptr %0, i64 16
  br label %bb.ec

bb.ec:                                            ; preds = %.lr.ph111, %ZL_SDDL_Expr_decref.exit
  %.0.i110 = phi i64 [ 0, %.lr.ph111 ], [ %i.pq, %ZL_SDDL_Expr_decref.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !388
  call fastcc void @ZL_SDDL_State_consume(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %1, ptr noundef nonnull %i.hi), !noalias !388, !inline_history !367
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pn, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !114
  %i.po = load i32, ptr %0, align 8, !tbaa !54, !alias.scope !388 ; 2 uses
  %.not95.i = icmp eq i32 %i.po, 0
  br i1 %.not95.i, label %bb.ed, label %.critedge107.i, !prof !42

bb.ed:                                            ; preds = %bb.ec
  %.sroa.0.0.copyload = load i32, ptr %i.pm, align 8, !tbaa !66, !noalias !388
  %.sroa.591.0.copyload = load ptr, ptr %.sroa.591.0..sroa_idx, align 8, !noalias !388 ; 2 uses
  %.sroa.793.0.copyload = load ptr, ptr %.sroa.793.0..sroa_idx, align 8, !noalias !388 ; 3 uses
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !54, !noalias !388 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !388
  switch i32 %.sroa.0.0.copyload, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.ee
    i32 8, label %bb.ei
    i32 6, label %bb.eh
  ]

bb.ee:                                            ; preds = %bb.ed
  %i.pp = ptrtoint ptr %.sroa.591.0.copyload to i64
  %.sroa.591.0.extract.trunc = trunc i64 %i.pp to i32
  switch i32 %.sroa.591.0.extract.trunc, label %ZL_SDDL_Expr_decref.exit [
    i32 3, label %bb.eg
    i32 2, label %bb.ef
  ]

bb.ef:                                            ; preds = %bb.ee
  %.not.i.i24 = icmp eq ptr %.sroa.793.0.copyload, null
  br i1 %.not.i.i24, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

bb.eg:                                            ; preds = %bb.ee
  %.not10.i.i = icmp eq ptr %.sroa.793.0.copyload, null
  br i1 %.not10.i.i, label %ZL_SDDL_Expr_decref.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.eg, %bb.ef
  tail call fastcc void @ZL_SDDL_DynExprSet_decref(ptr noundef %1, ptr noundef %.sroa.793.0.copyload), !noalias !388, !inline_history !371
  br label %ZL_SDDL_Expr_decref.exit

bb.eh:                                            ; preds = %bb.ed
  tail call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef %.sroa.591.0.copyload), !noalias !388, !inline_history !372
  br label %ZL_SDDL_Expr_decref.exit

bb.ei:                                            ; preds = %bb.ed
  %.not.i23 = icmp eq ptr %.sroa.9.0.copyload, null
  br i1 %.not.i23, label %ZL_SDDL_Expr_decref.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call fastcc void @ZL_SDDL_Scope_decref(ptr noundef %1, ptr noundef nonnull %.sroa.9.0.copyload), !noalias !388, !inline_history !372
  br label %ZL_SDDL_Expr_decref.exit

ZL_SDDL_Expr_decref.exit:                         ; preds = %bb.ed, %bb.ee, %bb.ef, %bb.eg, %.sink.split.i.i, %bb.eh, %bb.ei, %bb.ej
  %i.pq = add nuw i64 %.0.i110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.pq, %i.ht
  br i1 %exitcond.not, label %.critedge109.i, label %bb.ec, !llvm.loop !373

.critedge107.i:                                   ; preds = %bb.ec
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !alias.scope !388
  %i.pt = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.po, ptr %i.ps, ptr nonnull @ZL_SDDL_State_consumeArray.__zl_static_error_info.393, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.381, i32 noundef 2258, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8) #15, !inline_history !367 ; 2 uses
  %i.pu = extractvalue { i32, ptr } %i.pt, 0
  %i.pv = extractvalue { i32, ptr } %i.pt, 1
  store i32 %i.pu, ptr %0, align 8, !tbaa !66, !alias.scope !388
  store ptr %i.pv, ptr %i.pr, align 8, !tbaa !54, !alias.scope !388
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !388
  br label %ZL_SDDL_State_consumeArray.exit

.critedge109.i:                                   ; preds = %ZL_SDDL_Expr_decref.exit, %bb.eb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %ZL_SDDL_State_consumeArray.exit

ZL_SDDL_State_consumeArray.exit:                  ; preds = %.critedge107.i, %bb.ea, %bb.bm, %bb.bn, %bb.bp, %bb.bq, %ZL_SDDL_State_consumeArray_ofAtoms.exit, %bb.df, %.critedge105.i, %.critedge109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !388
  br label %bb.el

bb.ek:                                            ; preds = %bb.a
  %i.pw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_consumeField.__zl_static_error_info.339, ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.336, i32 noundef 2287, i32 noundef 12, ptr noundef nonnull @.str.155, i32 noundef %i.d) #15 ; 2 uses
  %i.px = extractvalue { i32, ptr } %i.pw, 0      ; 2 uses
  %i.py = extractvalue { i32, ptr } %i.pw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.px, ptr %i.py, ptr noundef nonnull @.str.81) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store i32 %i.px, ptr %0, align 8, !tbaa !66
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.py, ptr %.sroa.51.0..sroa_idx, align 8, !tbaa !54
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %ZL_SDDL_State_consumeArray.exit, %ZL_SDDL_State_consumeRecord.exit, %ZL_SDDL_State_consumeAtom.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc { i32, i64 } @ZL_SDDL_State_updateDest(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  store ptr %i.c, ptr %3, align 8, !tbaa !37
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.val67 = load i32, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  %i.f = zext i32 %.val67 to i64                  ; 2 uses
  %.not = icmp ugt i32 %.val67, %1
  br i1 %.not, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %1, 1
  %i.h = zext i32 %i.g to i64
  %i.i = tail call fastcc i64 @GenericVector_resize(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef %i.h, i1 noundef zeroext true)
  %.not62.not = icmp eq i64 %i.i, 0
  br i1 %.not62.not, label %.thread, label %bb.c, !prof !38

.thread:                                          ; preds = %bb.b
  %i.j = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_updateDest.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.351, i32 noundef 1877, i32 noundef 70, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.352) #15 ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.j, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.k, ptr %i.l, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  %i.m = ptrtoint ptr %i.l to i64
  br label %.thread80

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.f
  %i.q = sub nuw nsw i64 %i.d, %i.f
  %i.r = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.d ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !138  ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !62
  store i32 %i.z, ptr %i.u, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !61
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !65, !range !141, !noundef !142
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !140
  br label %.thread80

bb.f:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.u, align 8, !tbaa !139 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %.not63 = icmp eq i32 %i.af, %i.ah
  br i1 %.not63, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ai = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_updateDest.__zl_static_error_info.353, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.351, i32 noundef 1894, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.356, i32 noundef %i.af, i32 noundef %i.ah) #15 ; 2 uses
  %i.aj = extractvalue { i32, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i32, ptr } %i.ai, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aj, ptr %i.ak, ptr noundef nonnull @.str.357) #15
  %i.al = ptrtoint ptr %i.ak to i64
  br label %.thread80

bb.h:                                             ; preds = %bb.f
  %.not64 = icmp eq i32 %i.af, 1
  br i1 %.not64, label %.thread80, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %.not65 = icmp eq i64 %i.w, %i.an
  br i1 %.not65, label %bb.k, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.ao = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_updateDest.__zl_static_error_info.358, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.351, i32 noundef 1900, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.360, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.361, i64 noundef %i.w, i64 noundef %i.an) #15 ; 2 uses
  %i.ap = extractvalue { i32, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { i32, ptr } %i.ao, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ap, ptr %i.aq, ptr noundef nonnull @.str.362) #15
  %i.ar = ptrtoint ptr %i.aq to i64
  br label %.thread80

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.at = load i8, ptr %i.as, align 8, !tbaa !140, !range !141, !noundef !142 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.av = load i8, ptr %i.au, align 2, !tbaa !65, !range !141, !noundef !142 ; 2 uses
  %.not66 = icmp eq i8 %i.at, %i.av
  br i1 %.not66, label %.thread80, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = zext nneg i8 %i.at to i32
  %i.ay = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_State_updateDest.__zl_static_error_info.363, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.351, i32 noundef 1905, i32 noundef 1, ptr noundef nonnull @.str.365, ptr noundef nonnull @.str.366, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.367, i32 noundef %i.ax, i32 noundef %i.aw) #15 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i32, ptr } %i.ay, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.az, ptr %i.ba, ptr noundef nonnull @.str.368) #15
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %.thread80

.thread80:                                        ; preds = %bb.k, %bb.e, %bb.h, %bb.l, %bb.j, %bb.g, %.thread
  %.sroa.054.6 = phi i32 [ %i.k, %.thread ], [ %i.aj, %bb.g ], [ %i.az, %bb.l ], [ %i.ap, %bb.j ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ]
  %.sroa.10.6 = phi i64 [ %i.m, %.thread ], [ %i.al, %bb.g ], [ %i.bb, %bb.l ], [ %i.ar, %bb.j ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.054.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 0, 4294967296) i64 @GenericVector_resize(ptr nofree noundef captures(none) %0, i64 noundef range(i64 4, 25) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !117
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i64 %2 to i32
  store i32 %i.c, ptr %0, align 8, !tbaa !117
  br label %.critedge25

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !145  ; 4 uses
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %.not.i = icmp ugt i64 %2, %i.f
  br i1 %.not.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val27.i = load i32, ptr %i.g, align 8, !tbaa !92
  %i.h = zext i32 %.val27.i to i64                ; 3 uses
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %.critedge25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %i.e, 0
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i32 %i.e, 511
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i64 %i.f, 2
  %i.m = add nuw nsw i64 %i.l, %i.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i32 %i.e, 1
  %i.o = zext nneg i32 %i.n to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
end_hunk_4
