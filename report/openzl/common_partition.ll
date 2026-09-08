Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/common_partition?download=true
inline.NumInlined: 31
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ZL_PartitionParams_getLargestPartitionSize:bb.a
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.012.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0911.ph = phi i64 [ 0, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %middle.block ], [ %.09., %scalar.ph ]
  ret i64 %.09.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.m, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 2 uses
  %.0911 = phi i64 [ %.09., %scalar.ph ], [ %.0911.ph, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.012
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %.09. = tail call i64 @llvm.umax.i64(i64 %.0911, i64 %i.l) ; 2 uses
  %i.m = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !36
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 65) i64 @ZL_PartitionParams_getNumTrailingZeros(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !17
  %i.b = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.a, i1 false) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc nuw nsw i64 %i.b to i32            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 5 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.h = icmp ult i64 %i.d, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.d, -4
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.014.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.01113.epil.init = phi i32 [ %i.e, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.m, %bb.b ] ; 2 uses
  %.01113.epil = phi i32 [ %.01113.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.014.epil
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.j, i1 true)
  %i.l = trunc nuw nsw i64 %i.k to i32
  %spec.select.epil = tail call i32 @llvm.smin.i32(i32 %.01113.epil, i32 %i.l) ; 2 uses
  %i.m = add nuw i64 %.014.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %bb.b, %._crit_edge.loopexit.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.b ]
  %i.n = zext nneg i32 %spec.select.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.011.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  ret i64 %.011.lcssa

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.014 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.c ] ; 5 uses
  %.01113 = phi i32 [ %i.e, %.lr.ph.new ], [ %spec.select.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.014
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.p, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.01113, i32 %i.r)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.014
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.u, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.014
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.z, i1 true)
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %spec.select.1, i32 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.014
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %spec.select.3 = tail call i32 @llvm.smin.i32(i32 %spec.select.2, i32 %i.ag) ; 3 uses
  %i.ah = add nuw i64 %.014, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !40
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_PartitionParams_parseHeader(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 15 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %struct.ZS_BitDStreamFF, align 8    ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #14
  store ptr %i.d, ptr %5, align 8, !tbaa !51
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !52

.thread:                                          ; preds = %bb.a
  %i.e = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 195, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef 0, i64 noundef 1) #13 ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.e, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.f, ptr %i.g, ptr noundef nonnull @.str.7) #13
  %i.h = ptrtoint ptr %i.g to i64
  br label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store ptr %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i8, ptr %2, align 1, !tbaa !22      ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 6 uses
  %i.m = and i32 %i.l, 3
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = zext nneg i32 %i.n to i64
  store i64 %i.o, ptr %1, align 8, !tbaa !19
  %i.p = and i32 %i.l, 4
  %.not148 = icmp eq i32 %i.p, 0
  br i1 %.not148, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.i = icmp ugt i8 %i.k, 23
  br i1 %or.cond.i, label %.thread174, label %ZL_PartitionParams_getPreset.exit

.thread174:                                       ; preds = %bb.c
  %i.q = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.8, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 207, i32 noundef 12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null) #13 ; 2 uses
  %i.r = extractvalue { i32, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i32, ptr } %i.q, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.r, ptr %i.s, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  %i.t = ptrtoint ptr %i.s to i64
  br label %ZL_PartitionParams_validate.exit

ZL_PartitionParams_getPreset.exit:                ; preds = %bb.c
  %i.u = lshr i32 %i.l, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @presetTable, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !tbaa.struct !54
  br label %ZL_PartitionParams_validate.exit

bb.d:                                             ; preds = %bb.b
  %i.y = and i32 %i.l, 8
  %.not149 = icmp eq i32 %i.y, 0
  br i1 %.not149, label %bb.e, label %.thread179

bb.e:                                             ; preds = %bb.d
  %i.z = call fastcc { i32, i64 } @ZL_varintDecode(ptr noundef %i.b, ptr noundef nonnull %i.i) ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.z, 1       ; 2 uses
  %.not150 = icmp eq i32 %i.aa, 0
  br i1 %.not150, label %.thread179, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %i.aa, ptr %i.ac, ptr nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 215, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15) #13 ; 2 uses
  %i.ae = extractvalue { i32, ptr } %i.ad, 0
  %i.af = extractvalue { i32, ptr } %i.ad, 1
  %i.ag = ptrtoint ptr %i.af to i64
  br label %ZL_PartitionParams_validate.exit

.thread179:                                       ; preds = %bb.e, %bb.d
  %storemerge = phi i64 [ 0, %bb.d ], [ %i.ab, %bb.e ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !17
  %i.ah = and i32 %i.l, 32
  %.not151 = icmp eq i32 %i.ah, 0
  br i1 %.not151, label %bb.t, label %bb.g

bb.g:                                             ; preds = %.thread179
  %i.ai = lshr i32 %i.l, 6
  %narrow = add nuw nsw i32 %i.ai, 3
  %i.aj = zext nneg i32 %narrow to i64            ; 5 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !25  ; 16 uses
  %.not153 = icmp eq ptr %i.ak, %i.i
  br i1 %.not153, label %.thread182, label %bb.h, !prof !52

.thread182:                                       ; preds = %bb.g
  %i.al = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.19, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 220, i32 noundef 12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, ptr noundef %i.ak, ptr noundef nonnull %i.i) #13 ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i32, ptr } %i.al, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.am, ptr %i.an, ptr noundef nonnull @.str.23) #13
  %i.ao = ptrtoint ptr %i.an to i64
  br label %ZL_PartitionParams_validate.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds i8, ptr %i.i, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22  ; 2 uses
  %.not154 = icmp eq i8 %i.aq, 0
  br i1 %.not154, label %.thread185, label %bb.i, !prof !52

.thread185:                                       ; preds = %bb.h
  %i.ar = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.24, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 222, i32 noundef 12, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 0) #13 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.ar, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.as, ptr %i.at, ptr noundef nonnull @.str.29) #13
  %i.au = ptrtoint ptr %i.at to i64
  br label %ZL_PartitionParams_validate.exit

bb.i:                                             ; preds = %bb.h
  %i.av = zext i8 %i.aq to i32
  %i.aw = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 256) %i.av, i1 true)
  %i.ax = xor i32 %i.aw, 31
  %narrow155 = sub nuw nsw i32 8, %i.ax
  %i.ay = zext nneg i32 %narrow155 to i64         ; 2 uses
  %i.az = ptrtoint ptr %i.i to i64
  %i.ba = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = shl i64 %i.bb, 3                        ; 3 uses
  %i.bd = sub i64 %i.bc, %i.ay                    ; 2 uses
  %i.be = urem i64 %i.bd, %i.aj                   ; 2 uses
  %i.bf = udiv exact i64 %i.bd, %i.aj             ; 3 uses
  %.not156 = icmp eq i64 %i.be, 0
  br i1 %.not156, label %bb.k, label %bb.j, !prof !26

bb.j:                                             ; preds = %bb.i
  %i.bg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.30, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 229, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, i64 noundef %i.be, i64 noundef 0) #13 ; 2 uses
  %i.bh = extractvalue { i32, ptr } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { i32, ptr } %i.bg, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bh, ptr %i.bi, ptr noundef nonnull @.str.34) #13
  %i.bj = ptrtoint ptr %i.bi to i64
  br label %ZL_PartitionParams_validate.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.bf, ptr %i.bk, align 8, !tbaa !16
  %i.bl = icmp samesign ult i64 %i.bf, 257
  br i1 %i.bl, label %bb.m, label %bb.l, !prof !26

bb.l:                                             ; preds = %bb.k
  %i.bm = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.35, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 233, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i64 noundef %i.bf, i64 noundef 256) #13 ; 2 uses
  %i.bn = extractvalue { i32, ptr } %i.bm, 0      ; 2 uses
  %i.bo = extractvalue { i32, ptr } %i.bm, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bn, ptr %i.bo, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  %i.bp = ptrtoint ptr %i.bo to i64
  br label %ZL_PartitionParams_validate.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.bq = icmp ugt i64 %i.bb, 7
  br i1 %i.bq, label %bb.n, label %.lr.ph.i.i.preheader, !prof !26

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %i.br = add i64 %3, %i.a
  %xtraiter = and i64 %i.bb, 3                    ; 3 uses
  %i.bs = sub i64 %i.ba, %i.br
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bb, 4
  br label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.m
  %.val.i = load i64, ptr %i.ak, align 1, !noalias !55 ; 2 uses
  store i64 %.val.i, ptr %6, align 8, !tbaa !56, !alias.scope !55
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !28, !alias.scope !55
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ak, ptr %i.bv, align 8, !tbaa !29, !alias.scope !55
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bb ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -7 ; 2 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !57, !alias.scope !55
  br label %ZS_BitDStreamFF_init.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.da, %.lr.ph.i.i ] ; 6 uses
  %.078.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cz, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22, !noalias !55
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.09.i.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.078.i.i
  %i.cf = or disjoint i64 %.09.i.i, 1             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !22, !noalias !55
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.cf, 3
  %i.ck = shl nuw nsw i64 %i.ci, %i.cj
  %i.cl = or i64 %i.ck, %i.ce
  %i.cm = or disjoint i64 %.09.i.i, 2             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !22, !noalias !55
  %i.cp = zext i8 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cm, 3
  %i.cr = shl nuw nsw i64 %i.cp, %i.cq
  %i.cs = or i64 %i.cr, %i.cl
  %i.ct = or disjoint i64 %.09.i.i, 3             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22, !noalias !55
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.ct, 3
  %i.cy = shl nuw nsw i64 %i.cw, %i.cx
  %i.cz = or i64 %i.cy, %i.cs                     ; 3 uses
  %i.da = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZS_BitDStreamFF_loadPartial.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !43

ZS_BitDStreamFF_loadPartial.exit.i.unr-lcssa:     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %ZS_BitDStreamFF_loadPartial.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.da, %ZS_BitDStreamFF_loadPartial.exit.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cz, %ZS_BitDStreamFF_loadPartial.exit.i.unr-lcssa ]
  %lcmp.mod266 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod266)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.dh, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %.078.i.i.epil = phi i64 [ %i.dg, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.09.i.i.epil
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22, !noalias !55
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %.09.i.i.epil, 3
  %i.df = shl nuw nsw i64 %i.dd, %i.de
  %i.dg = or i64 %i.df, %.078.i.i.epil            ; 2 uses
  %i.dh = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !44

ZS_BitDStreamFF_loadPartial.exit.i:               ; preds = %.lr.ph.i.i.epil, %ZS_BitDStreamFF_loadPartial.exit.i.unr-lcssa
  %.lcssa264 = phi i64 [ %i.cz, %ZS_BitDStreamFF_loadPartial.exit.i.unr-lcssa ], [ %i.dg, %.lr.ph.i.i.epil ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bb ; 3 uses
  store i64 %.lcssa264, ptr %6, align 8, !tbaa !56, !alias.scope !55
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dk = sub nuw nsw i64 64, %i.bc               ; 2 uses
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !28, !alias.scope !55
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !29, !alias.scope !55
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ak, ptr %i.dm, align 8, !tbaa !57, !alias.scope !55
  br label %ZS_BitDStreamFF_init.exit

ZS_BitDStreamFF_init.exit:                        ; preds = %bb.n, %ZS_BitDStreamFF_loadPartial.exit.i
  %i.dn = phi ptr [ %i.ak, %ZS_BitDStreamFF_loadPartial.exit.i ], [ %i.by, %bb.n ] ; 2 uses
  %i.do = phi ptr [ %i.di, %ZS_BitDStreamFF_loadPartial.exit.i ], [ %i.ak, %bb.n ]
  %i.dp = phi i64 [ %i.dk, %ZS_BitDStreamFF_loadPartial.exit.i ], [ 0, %bb.n ]
  %.07.lcssa.i.i165 = phi i64 [ %.lcssa264, %ZS_BitDStreamFF_loadPartial.exit.i ], [ %.val.i, %bb.n ]
  %.sink.i = phi ptr [ %i.di, %ZS_BitDStreamFF_loadPartial.exit.i ], [ %i.bx, %bb.n ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.sink.i, ptr %i.dq, align 8, !tbaa !30, !alias.scope !55
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.ak, ptr %i.dr, align 8, !tbaa !31, !alias.scope !55
  %.not219 = icmp eq i64 %i.bc, %i.ay
  br i1 %.not219, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ZS_BitDStreamFF_init.exit
  %notmask.i.i = shl nsw i64 -1, %i.aj
  %i.ds = xor i64 %notmask.i.i, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.dn, i64 -1 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  br label %bb.o

._crit_edge:                                      ; preds = %ZS_BitDStreamFF_reload.exit, %ZS_BitDStreamFF_init.exit
  %i.dx = call fastcc { i32, i64 } @ZS_BitDStreamFF_finish(ptr noundef %6) ; 2 uses
  %i.dy = extractvalue { i32, i64 } %i.dx, 0      ; 2 uses
  %.not157 = icmp eq i32 %i.dy, 0
  br i1 %.not157, label %.thread200, label %bb.s, !prof !26

bb.o:                                             ; preds = %.lr.ph, %ZS_BitDStreamFF_reload.exit
  %.0132215 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %ZS_BitDStreamFF_reload.exit ] ; 2 uses
  %.07.lcssa.i.i163214 = phi i64 [ %.07.lcssa.i.i165, %.lr.ph ], [ %.07.lcssa.i.i164, %ZS_BitDStreamFF_reload.exit ] ; 2 uses
  %i.dz = phi i64 [ %i.dp, %.lr.ph ], [ %i.et, %ZS_BitDStreamFF_reload.exit ]
  %i.ea = phi ptr [ %i.do, %.lr.ph ], [ %i.es, %ZS_BitDStreamFF_reload.exit ] ; 2 uses
  %i.eb = and i64 %.07.lcssa.i.i163214, %i.ds
  %i.ec = lshr i64 %.07.lcssa.i.i163214, %i.aj    ; 2 uses
  store i64 %i.ec, ptr %6, align 8, !tbaa !56
  %i.ed = add i64 %i.dz, %i.aj                    ; 5 uses
  store i64 %i.ed, ptr %i.dt, align 8, !tbaa !28
  %i.ee = shl nuw i64 1, %i.eb
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0132215
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !19
  %i.eg = lshr i64 %i.ed, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eg ; 7 uses
  %i.ei = icmp ult ptr %i.eh, %i.dn
  br i1 %i.ei, label %bb.p, label %bb.q, !prof !26

bb.p:                                             ; preds = %bb.o
  store ptr %i.eh, ptr %i.du, align 8, !tbaa !29
  %i.ej = and i64 %i.ed, 7                        ; 3 uses
  store i64 %i.ej, ptr %i.dt, align 8, !tbaa !28
  %.val22.i = load i64, ptr %i.eh, align 1
  %i.ek = lshr i64 %.val22.i, %i.ej
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  %.not.i = icmp ult ptr %i.eh, %.sink.i
  br i1 %.not.i, label %bb.r, label %ZS_BitDStreamFF_reload.exit

bb.r:                                             ; preds = %bb.q
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.el, %i.dw
  %i.en = shl i64 %i.em, 3
  store ptr %i.eh, ptr %i.du, align 8, !tbaa !29
  %i.eo = and i64 %i.ed, 7                        ; 3 uses
  store i64 %i.eo, ptr %i.dt, align 8, !tbaa !28
  %.val.i160 = load i64, ptr %i.dv, align 1
  %i.ep = or disjoint i64 %i.en, %i.eo
  %i.eq = lshr i64 %.val.i160, %i.ep
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.p
  %i.er = phi i64 [ %i.eo, %bb.r ], [ %i.ej, %bb.p ]
  %.sink.i161 = phi i64 [ %i.eq, %bb.r ], [ %i.ek, %bb.p ] ; 2 uses
  store i64 %.sink.i161, ptr %6, align 8, !tbaa !56
  br label %ZS_BitDStreamFF_reload.exit

ZS_BitDStreamFF_reload.exit:                      ; preds = %bb.q, %.sink.split.i
  %i.es = phi ptr [ %i.ea, %bb.q ], [ %i.eh, %.sink.split.i ]
  %i.et = phi i64 [ %i.ed, %bb.q ], [ %i.er, %.sink.split.i ]
  %.07.lcssa.i.i164 = phi i64 [ %i.ec, %bb.q ], [ %.sink.i161, %.sink.split.i ]
  %i.eu = add nuw i64 %.0132215, 1                ; 2 uses
  %i.ev = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.ew = icmp ult i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.o, label %._crit_edge, !llvm.loop !45

.thread200:                                       ; preds = %._crit_edge
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.ex, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.w

bb.s:                                             ; preds = %._crit_edge
  %i.ey = extractvalue { i32, i64 } %i.dx, 1
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %i.dy, ptr %i.ez, ptr nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.40, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 243, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15) #13 ; 2 uses
  %i.fb = extractvalue { i32, ptr } %i.fa, 0
  %i.fc = extractvalue { i32, ptr } %i.fa, 1
  %i.fd = ptrtoint ptr %i.fc to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %ZL_PartitionParams_validate.exit

bb.t:                                             ; preds = %.thread179
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !16
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.fg = icmp ult ptr %i.ff, %i.i
  br i1 %i.fg, label %.lr.ph217.preheader, label %._crit_edge218

.lr.ph217thread-pre-split:                        ; preds = %bb.v
  %.pr = load i64, ptr %i.fe, align 8, !tbaa !16  ; 2 uses
  %i.fh = icmp ult i64 %.pr, 256
  br i1 %i.fh, label %.lr.ph217.preheader, label %bb.u, !prof !58

bb.u:                                             ; preds = %.lr.ph217thread-pre-split
  %i.fi = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.41, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 251, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, i64 noundef %.pr, i64 noundef 256) #13 ; 2 uses
  %i.fj = extractvalue { i32, ptr } %i.fi, 0      ; 2 uses
  %i.fk = extractvalue { i32, ptr } %i.fi, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fj, ptr %i.fk, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  %i.fl = ptrtoint ptr %i.fk to i64
  br label %ZL_PartitionParams_validate.exit

.lr.ph217.preheader:                              ; preds = %bb.t, %.lr.ph217thread-pre-split
  %i.fm = call fastcc { i32, i64 } @ZL_varintDecode(ptr noundef %i.b, ptr noundef nonnull %i.i) ; 2 uses
  %i.fn = extractvalue { i32, i64 } %i.fm, 0      ; 2 uses
  %i.fo = extractvalue { i32, i64 } %i.fm, 1      ; 2 uses
  %.not152 = icmp eq i32 %i.fn, 0
  br i1 %.not152, label %bb.v, label %.thread206, !prof !26

.thread206:                                       ; preds = %.lr.ph217.preheader
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %i.fn, ptr %i.fp, ptr nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.44, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 255, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15) #13 ; 2 uses
  %i.fr = extractvalue { i32, ptr } %i.fq, 0
  %i.fs = extractvalue { i32, ptr } %i.fq, 1
  %i.ft = ptrtoint ptr %i.fs to i64
  br label %ZL_PartitionParams_validate.exit

bb.v:                                             ; preds = %.lr.ph217.preheader
  %i.fu = load i64, ptr %i.fe, align 8, !tbaa !16 ; 2 uses
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.fe, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fu
  store i64 %i.fo, ptr %i.fw, align 8, !tbaa !19
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.fy = icmp ult ptr %i.fx, %i.i
  br i1 %i.fy, label %.lr.ph217thread-pre-split, label %._crit_edge218, !llvm.loop !46

._crit_edge218:                                   ; preds = %bb.v, %bb.t
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.fz, align 8, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %.thread200, %._crit_edge218
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !16 ; 4 uses
  %i.gc = add i64 %i.gb, -257
  %or.cond20.i = icmp ult i64 %i.gc, -256
  br i1 %or.cond20.i, label %.loopexit, label %bb.x, !prof !59

bb.x:                                             ; preds = %bb.w
  %i.gd = icmp eq i64 %i.gb, 1
  %.pre = load i64, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ge = icmp eq i64 %.pre, 0
  %or.cond = select i1 %i.gd, i1 %i.ge, i1 false, !prof !60
  br i1 %or.cond, label %.loopexit, label %.lr.ph.i, !prof !60

.lr.ph.i:                                         ; preds = %bb.x, %._crit_edge.i
  %.01624.i = phi i64 [ %i.gl, %._crit_edge.i ], [ 0, %bb.x ] ; 2 uses
  %.023.i = phi i64 [ %i.gk, %._crit_edge.i ], [ %.pre, %bb.x ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01624.i
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !19 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %.loopexit, label %bb.y, !prof !59

bb.y:                                             ; preds = %.lr.ph.i
  %i.gi = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.023.i, i64 range(i64 1, 0) %i.gg) ; 2 uses
  %i.gj = extractvalue { i64, i1 } %i.gi, 1
  %i.gk = extractvalue { i64, i1 } %i.gi, 0       ; 2 uses
  %i.gl = add nuw i64 %.01624.i, 1                ; 3 uses
  br i1 %i.gj, label %bb.z, label %._crit_edge.i

bb.z:                                             ; preds = %bb.y
  %i.gm = icmp eq i64 %i.gl, %i.gb
  %i.gn = icmp eq i64 %i.gk, 0
  %or.cond.i162 = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond.i162, label %._crit_edge.i, label %.loopexit, !prof !61

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %exitcond.not.i = icmp eq i64 %i.gl, %i.gb
  br i1 %exitcond.not.i, label %ZL_PartitionParams_validate.exit, label %.lr.ph.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i, %bb.z, %bb.x, %bb.w
  %i.go = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_PartitionParams_parseHeader.__zl_static_error_info.45, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 259, i32 noundef 12, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #13 ; 2 uses
  %i.gp = extractvalue { i32, ptr } %i.go, 0      ; 2 uses
  %i.gq = extractvalue { i32, ptr } %i.go, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.gp, ptr %i.gq, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  %i.gr = ptrtoint ptr %i.gq to i64
  br label %ZL_PartitionParams_validate.exit

ZL_PartitionParams_validate.exit:                 ; preds = %._crit_edge.i, %bb.j, %bb.l, %.thread185, %.thread182, %.thread206, %bb.u, %bb.s, %bb.f, %.thread174, %ZL_PartitionParams_getPreset.exit, %.loopexit
  %.sroa.0123.15 = phi i32 [ %i.ae, %bb.f ], [ %i.gp, %.loopexit ], [ %i.am, %.thread182 ], [ %i.fb, %bb.s ], [ %i.fr, %.thread206 ], [ %i.fj, %bb.u ], [ 0, %ZL_PartitionParams_getPreset.exit ], [ %i.r, %.thread174 ], [ %i.bh, %bb.j ], [ %i.bn, %bb.l ], [ %i.as, %.thread185 ], [ 0, %._crit_edge.i ]
  %.sroa.37.15 = phi i64 [ %i.ag, %bb.f ], [ %i.gr, %.loopexit ], [ %i.ao, %.thread182 ], [ %i.fd, %bb.s ], [ %i.ft, %.thread206 ], [ %i.fl, %bb.u ], [ 0, %ZL_PartitionParams_getPreset.exit ], [ %i.t, %.thread174 ], [ %i.bj, %bb.j ], [ %i.bp, %bb.l ], [ %i.au, %.thread185 ], [ 0, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %ZL_PartitionParams_validate.exit
  %.sroa.0123.16 = phi i32 [ %.sroa.0123.15, %ZL_PartitionParams_validate.exit ], [ %i.f, %.thread ]
  %.sroa.37.16 = phi i64 [ %.sroa.37.15, %ZL_PartitionParams_validate.exit ], [ %i.h, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0123.16, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.37.16, 1
  ret { i32, i64 } %.fca.1.insert
end_hunk_0
