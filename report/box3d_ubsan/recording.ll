Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/recording?download=true
inline.NumInlined: 947
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3RecQueryBegin:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @68, i64 %i.b) #12, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.h, align 4, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !551
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.k, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecQueryCommit(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !552 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [3 x i8], align 1                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %3 = alloca %struct.b3RecBuffer, align 8        ; 8 uses
  %i.f = icmp ne ptr %0, null, !nosanitize !10
  %i.g = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !10
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !10
  %i.j = and i1 %i.f, %i.i, !nosanitize !10
  br i1 %i.j, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @69, i64 %i.g) #12, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  tail call void @b3LockMutex(ptr noundef %i.l) #13
  %i.m = icmp ne ptr %2, null, !nosanitize !10
  %i.n = ptrtoint ptr %2 to i64, !nosanitize !10  ; 2 uses
  %i.o = and i64 %i.n, 7, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @70, i64 %i.n) #12, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61   ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.f, label %b3RecCommitRecordLocked.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 2 uses
  %.not20 = icmp eq ptr %i.u, null
  br i1 %.not20, label %.critedge23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %.not27 = icmp eq i8 %i.v, 0
  br i1 %.not27, label %.critedge23, label %b3RecCommitRecordLocked.exit

b3RecCommitRecordLocked.exit:                     ; preds = %bb.g, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = tail call i64 @b3HashQueryTag(i64 noundef %i.s, ptr noundef %i.x) ; 2 uses
  %i.z = load i64, ptr %i.r, align 8, !tbaa !61
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !62
  tail call void @b3RecInternTag(ptr noundef nonnull %0, i64 noundef %i.y, i64 noundef %i.z, ptr noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 %i.y, ptr %i.e, align 8
  call void @b3RecBufAppend(ptr noundef nonnull %3, ptr noundef nonnull %i.e, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ac = load ptr, ptr %3, align 8, !tbaa !19
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -17, ptr %i.c, align 1, !tbaa !20
  call void @b3RecBufAppend(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ae = trunc i32 %i.ad to i8
  store i8 %i.ae, ptr %i.d, align 1, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ag = lshr i32 %i.ad, 8
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aj = lshr i32 %i.ad, 16
  %i.ak = trunc i32 %i.aj to i8
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !20
  call void @b3RecBufAppend(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 3)
  call void @b3RecBufAppend(ptr noundef nonnull %0, ptr noundef readonly %i.ac, i32 noundef %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.al = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %b3RecBufFree.exit, label %bb.h

bb.h:                                             ; preds = %b3RecCommitRecordLocked.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !18
  %i.ao = sext i32 %i.an to i64
  call void @b3Free(ptr noundef nonnull %i.al, i64 noundef %i.ao) #13
  br label %b3RecBufFree.exit

b3RecBufFree.exit:                                ; preds = %b3RecCommitRecordLocked.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.critedge23

.critedge23:                                      ; preds = %bb.g, %b3RecBufFree.exit, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !553
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !554 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1, !tbaa !20
  call void @b3RecBufAppend(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %i.b, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.av = lshr i32 %i.as, 8
  %i.aw = trunc i32 %i.av to i8
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ay = lshr i32 %i.as, 16
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !20
  call void @b3RecBufAppend(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 3)
  call void @b3RecBufAppend(ptr noundef nonnull %0, ptr noundef readonly %i.ar, i32 noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !57
  call void @b3UnlockMutex(ptr noundef %i.ba) #13
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i25, label %b3RecBufFree.exit26, label %bb.i

bb.i:                                             ; preds = %.critedge23
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !18
  %i.be = sext i32 %i.bd to i64
  call void @b3Free(ptr noundef nonnull %i.bb, i64 noundef %i.be) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %b3RecBufFree.exit26

b3RecBufFree.exit26:                              ; preds = %.critedge23, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 1, 0) i64 @b3HashQueryTag(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !556 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = xor i64 %i.a, -3750763034362895579
  %i.c = mul i64 %i.b, 1099511628211
  %i.d = lshr i64 %0, 8
  %i.e = and i64 %i.d, 255
  %i.f = xor i64 %i.e, %i.c
  %i.g = mul i64 %i.f, 1099511628211
  %i.h = lshr i64 %0, 16
  %i.i = and i64 %i.h, 255
  %i.j = xor i64 %i.i, %i.g
  %i.k = mul i64 %i.j, 1099511628211
  %i.l = lshr i64 %0, 24
  %i.m = and i64 %i.l, 255
  %i.n = xor i64 %i.m, %i.k
  %i.o = mul i64 %i.n, 1099511628211
  %i.p = lshr i64 %0, 32
  %i.q = and i64 %i.p, 255
  %i.r = xor i64 %i.q, %i.o
  %i.s = mul i64 %i.r, 1099511628211
  %i.t = lshr i64 %0, 40
  %i.u = and i64 %i.t, 255
  %i.v = xor i64 %i.u, %i.s
  %i.w = mul i64 %i.v, 1099511628211
  %i.x = lshr i64 %0, 48
  %i.y = and i64 %i.x, 255
  %i.z = xor i64 %i.y, %i.w
  %i.aa = mul i64 %i.z, 1099511628211
  %i.ab = lshr i64 %0, 56
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 1099511628211            ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.ae = ptrtoint ptr %1 to i64, !nosanitize !10 ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.f, %3
  %.lcssa = phi i64 [ %9, %3 ], [ %i.an, %bb.f ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @820, i64 %i.ae, i64 %.lcssa) #12, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.f, %.preheader
  %i.af = phi ptr [ %1, %.preheader ], [ %i.am, %bb.f ]
  %.040 = phi i32 [ 0, %.preheader ], [ %i.ah, %bb.f ] ; 2 uses
  %.139 = phi i64 [ %i.ad, %.preheader ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20  ; 2 uses
  %.not18 = icmp eq i8 %i.ag, 0
  br i1 %.not18, label %.loopexit, label %3

2:                                                ; preds = %bb.e
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @821, i64 2147483647, i64 1) #12, !nosanitize !10
  unreachable, !nosanitize !10

3:                                                ; preds = %bb.c
  %4 = add nuw nsw i32 %.040, 1
  %5 = zext i8 %i.ag to i64
  %6 = xor i64 %.139, %5
  %7 = mul i64 %6, 1099511628211                  ; 2 uses
  %8 = sext i32 %4 to i64                         ; 2 uses
  %9 = add i64 %8, %i.ae, !nosanitize !10         ; 2 uses
  %.not41 = icmp ult i64 %9, %i.ae, !nosanitize !10
  br i1 %.not41, label %bb.b, label %bb.d, !prof !34, !nosanitize !10

bb.d:                                             ; preds = %3
  %10 = getelementptr inbounds i8, ptr %1, i64 %8
  %11 = load i8, ptr %10, align 1, !tbaa !20      ; 2 uses
  %.not18.1 = icmp eq i8 %11, 0
  br i1 %.not18.1, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %12 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.040, i32 2) ; 2 uses
  %13 = extractvalue { i32, i1 } %12, 1, !nosanitize !10
  br i1 %13, label %2, label %bb.f, !prof !17, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.ah = extractvalue { i32, i1 } %12, 0, !nosanitize !10 ; 2 uses
  %i.ai = zext i8 %11 to i64
  %i.aj = xor i64 %7, %i.ai
  %i.ak = mul i64 %i.aj, 1099511628211
  %i.al = sext i32 %i.ah to i64                   ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = add i64 %i.al, %i.ae, !nosanitize !10   ; 2 uses
  %.not41.1 = icmp ult i64 %i.an, %i.ae, !nosanitize !10
  br i1 %.not41.1, label %bb.b, label %bb.c, !prof !34, !llvm.loop !555, !nosanitize !10

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.2 = phi i64 [ %i.ad, %bb.a ], [ %.139, %bb.c ], [ %7, %bb.d ]
  %i.ao = tail call i64 @llvm.umax.i64(i64 %.2, i64 1)
  ret i64 %i.ao
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecInternTag(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 !func_sanitize !562 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.b3RecTagMap_itr, align 8    ; 5 uses
  %i.b = icmp ne ptr %0, null, !nosanitize !10
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @988, i64 %i.c) #12, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %.b3RecTags.exit_crit_edge

.b3RecTags.exit_crit_edge:                        ; preds = %bb.c
  %.pre212 = ptrtoint ptr %i.h to i64, !nosanitize !10
  br label %b3RecTags.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @b3Alloc(i64 noundef 32) #13 ; 8 uses
  %i.k = icmp ne ptr %i.j, null, !nosanitize !10
  %i.l = ptrtoint ptr %i.j to i64, !nosanitize !10 ; 3 uses
  %i.m = and i64 %i.l, 7, !nosanitize !10
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !10
  %i.o = and i1 %i.k, %i.n, !nosanitize !10
  br i1 %i.o, label %b3RecTagMap_init.exit.i, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @990, i64 %i.l) #12, !nosanitize !10
  unreachable, !nosanitize !10

b3RecTagMap_init.exit.i:                          ; preds = %bb.d
  store i64 0, ptr %i.j, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @vt_empty_placeholder_metadatum, ptr %i.r, align 8, !tbaa !69
  store ptr %i.j, ptr %i.g, align 8, !tbaa !63
  br label %b3RecTags.exit

b3RecTags.exit:                                   ; preds = %.b3RecTags.exit_crit_edge, %b3RecTagMap_init.exit.i
  %.pre-phi213 = phi i64 [ %.pre212, %.b3RecTags.exit_crit_edge ], [ %i.l, %b3RecTagMap_init.exit.i ] ; 2 uses
  %i.s = phi ptr [ %i.h, %.b3RecTags.exit_crit_edge ], [ %i.j, %b3RecTagMap_init.exit.i ] ; 5 uses
  %i.t = lshr i64 %1, 23
  %i.u = xor i64 %i.t, %1
  %i.v = mul i64 %i.u, 2388976653695081527        ; 3 uses
  %i.w = and i64 %.pre-phi213, 7, !nosanitize !10
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !10
  br i1 %i.x, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %b3RecTags.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @992, i64 %.pre-phi213) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %b3RecTags.exit
  %i.y = lshr i64 %i.v, 47
  %i.z = xor i64 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67, !noalias !563 ; 5 uses
  %i.ac = and i64 %i.ab, %i.z                     ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69, !noalias !563 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  %i.ag = add i64 %i.ac, 4611686018427387904
  %i.ah = icmp sgt i64 %i.ag, -1
  %i.ai = shl i64 %i.ac, 1
  %i.aj = ptrtoint ptr %i.ae to i64, !nosanitize !10 ; 11 uses
  %i.ak = add i64 %i.ai, %i.aj, !nosanitize !10   ; 4 uses
  %i.al = icmp ne ptr %i.ae, null, !nosanitize !10 ; 2 uses
  %i.am = icmp eq i64 %i.ak, 0                    ; 2 uses
  %i.an = xor i1 %i.al, %i.am
  %i.ao = icmp uge i64 %i.ak, %i.aj, !nosanitize !10
  %i.ap = and i1 %i.ah, %i.ao, !nosanitize !10
  %i.aq = and i1 %i.an, %i.ap, !nosanitize !10
  br i1 %i.aq, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @993, i64 %i.aj, i64 %i.ak) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.af to i64, !nosanitize !10 ; 2 uses
  %i.as = and i64 %i.ar, 1, !nosanitize !10
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !10
  %i.au = and i1 %i.al, %i.at
  br i1 %i.au, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @994, i64 %i.ar) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.av = load i16, ptr %i.af, align 2, !tbaa !70, !noalias !563
  %i.aw = and i16 %i.av, 2048
  %.not.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i, label %b3RecTagMap_get.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ax = lshr i64 %i.v, 48
  %i.ay = trunc nuw i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.r
  %.not3484.us.i = phi i1 [ %.not34.us.i, %bb.r ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.ba = phi i64 [ %i.cm, %bb.r ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.bb = phi ptr [ %i.ci, %bb.r ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %.083.us.i = phi i64 [ %i.ch, %bb.r ], [ %i.ac, %.lr.ph.i ] ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64, !nosanitize !10 ; 2 uses
  %i.bd = and i64 %i.bc, 1, !nosanitize !10
  %i.be = icmp eq i64 %i.bd, 0, !nosanitize !10
  br i1 %i.be, label %bb.l, label %.split.us.i, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.bf = load i16, ptr %i.bb, align 2, !tbaa !70, !noalias !563 ; 2 uses
  %i.bg = xor i16 %i.bf, %i.ay
  %i.bh = icmp ult i16 %i.bg, 4096
  br i1 %i.bh, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !68, !noalias !563 ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.083.us.i ; 2 uses
  %i.bk = add nsw i64 %.083.us.i, 576460752303423488
  %i.bl = icmp ult i64 %i.bk, 1152921504606846976
  %i.bm = shl i64 %.083.us.i, 4
  %i.bn = ptrtoint ptr %i.bi to i64, !nosanitize !10 ; 4 uses
  %i.bo = add i64 %i.bm, %i.bn, !nosanitize !10   ; 3 uses
  %i.bp = icmp ne ptr %i.bi, null, !nosanitize !10 ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 0                    ; 2 uses
  %i.br = xor i1 %i.bp, %i.bq
  %i.bs = icmp uge i64 %i.bo, %i.bn, !nosanitize !10
  %i.bt = and i1 %i.bl, %i.bs, !nosanitize !10
  %i.bu = and i1 %i.br, %i.bt, !nosanitize !10
  br i1 %i.bu, label %bb.n, label %.split86.us.i, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bv = ptrtoint ptr %i.bj to i64, !nosanitize !10 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !10
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !10
  %i.by = and i1 %i.bp, %i.bx
  br i1 %i.by, label %bb.o, label %.split90.us.i, !prof !11, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  %i.bz = load i64, ptr %i.bj, align 8, !tbaa !72, !noalias !563
  %i.ca = icmp eq i64 %i.bz, %1
  br i1 %i.ca, label %.split93.us.i, label %bb.p, !prof !73

bb.p:                                             ; preds = %bb.o, %bb.l
  br i1 %.not3484.us.i, label %.split102.us.i, label %bb.q, !prof !17, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  %i.cb = and i16 %i.bf, 2047                     ; 2 uses
  %.not32.us.i = icmp eq i16 %i.cb, 2047
  br i1 %.not32.us.i, label %b3RecTagMap_get.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = zext nneg i16 %i.cb to i64              ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 1
  %i.ce = mul nuw nsw i64 %i.cd, %i.cc
  %i.cf = lshr i64 %i.ce, 1
  %i.cg = add i64 %i.cf, %i.ac
  %i.ch = and i64 %i.cg, %i.ab                    ; 4 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ch
  %i.cj = add i64 %i.ch, 4611686018427387904
  %i.ck = icmp sgt i64 %i.cj, -1
  %i.cl = shl i64 %i.ch, 1
  %i.cm = add i64 %i.cl, %i.aj, !nosanitize !10   ; 4 uses
  %.not34.us.i = icmp eq i64 %i.cm, 0
  %i.cn = icmp uge i64 %i.cm, %i.aj, !nosanitize !10
  %i.co = and i1 %i.ck, %i.cn, !nosanitize !10
  br i1 %i.co, label %.lr.ph.split.us.i, label %._crit_edge.i, !prof !74, !nosanitize !10

._crit_edge.i:                                    ; preds = %bb.r
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @995, i64 %i.aj, i64 %i.cm) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @996, i64 %i.bc) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split86.us.i:                                    ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @997, i64 %i.bn, i64 %i.bo) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split90.us.i:                                    ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @999, i64 %i.bv) #12, !noalias !563, !nosanitize !10
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!355 = !{!"p1 _ZTS11b3Scheduler", !12, i64 0}
!356 = !{!"p1 _ZTS11b3Recording", !12, i64 0}
!357 = !{!"b3World", !307, i64 0, !315, i64 800, !316, i64 1144, !318, i64 3832, !50, i64 3848, !319, i64 3856, !321, i64 3880, !319, i64 3896, !323, i64 3920, !319, i64 3936, !325, i64 3960, !319, i64 3976, !327, i64 4000, !319, i64 4016, !329, i64 4040, !319, i64 4056, !331, i64 4080, !12, i64 4096, !334, i64 4104, !336, i64 4128, !338, i64 4144, !340, i64 4160, !342, i64 4176, !344, i64 4192, !346, i64 4208, !6, i64 4224, !6, i64 4256, !7, i64 4288, !348, i64 4296, !350, i64 4312, !352, i64 4328, !352, i64 4344, !352, i64 4360, !352, i64 4376, !12, i64 4392, !12, i64 4400, !12, i64 4408, !24, i64 4416, !7, i64 4424, !29, i64 4428, !28, i64 4440, !28, i64 4444, !28, i64 4448, !28, i64 4452, !28, i64 4456, !28, i64 4460, !28, i64 4464, !12, i64 4472, !12, i64 4480, !26, i64 4488, !353, i64 4492, !7, i64 4584, !7, i64 4588, !6, i64 4592, !354, i64 4624, !12, i64 4648, !12, i64 4656, !12, i64 4664, !12, i64 4672, !7, i64 4680, !12, i64 4688, !12, i64 4696, !12, i64 4704, !12, i64 4712, !355, i64 4720, !12, i64 4728, !356, i64 4736, !28, i64 4744, !28, i64 4748, !7, i64 4752, !7, i64 4756, !26, i64 4760, !14, i64 4762, !14, i64 4763, !14, i64 4764, !14, i64 4765, !14, i64 4766, !14, i64 4767}
!358 = !{!357, !356, i64 4736}
!359 = !{!357, !26, i64 4760}
!360 = !{!357, !26, i64 4488}
!361 = !{!24, !24, i64 0}
!362 = !{i64 0, i64 8, !361, i64 8, i64 4, !81}
!363 = !{!"branch_weights", i32 4096, i32 2147479552}
!364 = !{!"branch_weights", i32 1, i32 127}
!365 = !{!"branch_weights", i32 127, i32 255873}
!366 = !{!64, !64, i64 0}
!367 = !{i64 0, i64 8, !361, i64 8, i64 8, !361, i64 16, i64 8, !300, i64 24, i64 8, !366}
!368 = !{i32 -1056584962, i32 1721825556}
!369 = !{!15, !14, i64 16}
!370 = !{i32 -1056584962, i32 -1596585135}
!371 = !{i32 -1056584962, i32 -723273240}
!372 = !{i32 -1056584962, i32 -1531158970}
!373 = !{i32 -1056584962, i32 869424217}
!374 = !{i32 -1056584962, i32 1975540660}
!375 = !{i32 -1056584962, i32 1167460540}
!376 = !{i32 -1056584962, i32 -184889423}
!377 = !{i32 -1056584962, i32 -2000051621}
!378 = !{i32 -1056584962, i32 -2052953017}
!379 = !{i32 -1056584962, i32 -1992505899}
!380 = !{i32 -1056584962, i32 2012166547}
!381 = !{i32 -1056584962, i32 1038354611}
!382 = !{!"b3QueryFilter", !24, i64 0, !24, i64 8, !24, i64 16, !13, i64 24}
!383 = !{!382, !24, i64 0}
!384 = !{!382, !24, i64 8}
!385 = distinct !{!385, !25}
!386 = !{i32 -1056584962, i32 412486549}
!387 = !{i32 -1056584962, i32 -18563273}
!388 = !{i32 -1056584962, i32 -89082539}
!389 = !{!"b3RayResult", !27, i64 0, !29, i64 8, !29, i64 20, !24, i64 32, !28, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 60}
!390 = !{!389, !24, i64 32}
!391 = !{!389, !28, i64 40}
!392 = !{!389, !7, i64 44}
!393 = !{!389, !7, i64 48}
!394 = !{!389, !14, i64 60}
!395 = !{i32 -1056584962, i32 -486386800}
!396 = !{i32 -1056584962, i32 1809753081}
!397 = !{!"b3Plane", !29, i64 0, !28, i64 12}
!398 = !{!"b3PlaneResult", !397, i64 0, !29, i64 16, !7, i64 28, !7, i64 32, !7, i64 36}
!399 = !{!398, !28, i64 12}
!400 = !{!398, !7, i64 28}
!401 = !{!398, !7, i64 32}
!402 = !{!398, !7, i64 36}
!403 = !{i32 -1056584962, i32 -311780568}
!404 = !{i32 -1056584962, i32 -1633066988}
!405 = !{i32 -1056584962, i32 519981874}
!406 = !{i32 -1056584962, i32 -255613862}
!407 = !{i32 -1056584962, i32 -944621727}
!408 = !{i32 -1056584962, i32 2026818800}
!409 = !{!30, !24, i64 0}
!410 = !{!30, !24, i64 8}
!411 = !{!30, !7, i64 16}
!412 = !{i32 -1056584962, i32 -1703408195}
!413 = !{!31, !28, i64 0}
!414 = !{!31, !28, i64 4}
!415 = !{!31, !28, i64 8}
!416 = !{!31, !24, i64 24}
!417 = !{!31, !7, i64 32}
!418 = !{i32 -1056584962, i32 -1814429252}
!419 = !{!"b3MassData", !28, i64 0, !29, i64 4, !32, i64 16}
!420 = !{!419, !28, i64 0}
!421 = !{i32 -1056584962, i32 1221238313}
!422 = !{i32 -1056584962, i32 -1935633064}
!423 = !{!"b3ExplosionDef", !24, i64 0, !29, i64 8, !28, i64 20, !28, i64 24, !28, i64 28}
!424 = !{!423, !24, i64 0}
!425 = !{!423, !28, i64 20}
!426 = !{!423, !28, i64 24}
!427 = !{!423, !28, i64 28}
!428 = !{i32 -1056584962, i32 -999912377}
!429 = !{!"b3MotionLocks", !14, i64 0, !14, i64 1, !14, i64 2, !14, i64 3, !14, i64 4, !14, i64 5}
!430 = !{!"b3BodyDef", !7, i64 0, !29, i64 4, !33, i64 16, !29, i64 32, !29, i64 44, !28, i64 56, !28, i64 60, !28, i64 64, !28, i64 68, !13, i64 72, !12, i64 80, !429, i64 88, !14, i64 94, !14, i64 95, !14, i64 96, !14, i64 97, !14, i64 98, !14, i64 99, !7, i64 100}
!431 = !{!430, !7, i64 0}
!432 = !{!430, !28, i64 56}
!433 = !{!430, !28, i64 60}
!434 = !{!430, !28, i64 64}
!435 = !{!430, !28, i64 68}
!436 = !{!430, !13, i64 72}
!437 = !{!430, !14, i64 94}
!438 = !{!430, !14, i64 95}
!439 = !{!430, !14, i64 96}
!440 = !{!430, !14, i64 97}
!441 = !{!430, !14, i64 98}
!442 = !{!430, !14, i64 99}
!443 = distinct !{!443, !25}
!444 = !{i32 -1056584962, i32 -201143158}
!445 = !{!36, !13, i64 0}
!446 = !{!36, !35, i64 16}
!447 = !{!36, !28, i64 72}
!448 = !{!36, !28, i64 76}
!449 = !{!36, !14, i64 104}
!450 = !{!36, !14, i64 105}
!451 = !{!36, !14, i64 106}
!452 = !{!36, !14, i64 107}
!453 = !{!36, !14, i64 108}
!454 = !{!36, !14, i64 109}
!455 = !{!36, !14, i64 110}
!456 = !{!36, !14, i64 111}
!457 = !{!36, !14, i64 112}
!458 = !{i32 -1056584962, i32 -25031983}
!459 = !{i32 -1056584962, i32 625784965}
!460 = !{!39, !28, i64 80}
!461 = !{!39, !28, i64 84}
!462 = !{!39, !28, i64 88}
!463 = !{!39, !28, i64 92}
!464 = !{!39, !28, i64 96}
!465 = !{!39, !14, i64 100}
!466 = !{i32 -1056584962, i32 -1784632746}
!467 = !{!"b3DistanceJointDef", !39, i64 0, !28, i64 112, !14, i64 116, !28, i64 120, !28, i64 124, !28, i64 128, !28, i64 132, !14, i64 136, !28, i64 140, !28, i64 144, !14, i64 148, !28, i64 152, !28, i64 156}
!468 = !{!467, !28, i64 112}
!469 = !{!467, !14, i64 116}
!470 = !{!467, !28, i64 120}
!471 = !{!467, !28, i64 124}
!472 = !{!467, !28, i64 128}
!473 = !{!467, !28, i64 132}
!474 = !{!467, !14, i64 136}
!475 = !{!467, !28, i64 140}
!476 = !{!467, !28, i64 144}
!477 = !{!467, !14, i64 148}
!478 = !{!467, !28, i64 152}
!479 = !{!467, !28, i64 156}
!480 = !{i32 -1056584962, i32 -806320259}
!481 = !{i32 -1056584962, i32 1108117156}
!482 = !{!"b3MotorJointDef", !39, i64 0, !29, i64 112, !28, i64 124, !29, i64 128, !28, i64 140, !28, i64 144, !28, i64 148, !28, i64 152, !28, i64 156, !28, i64 160, !28, i64 164}
!483 = !{!482, !28, i64 124}
!484 = !{!482, !28, i64 140}
!485 = !{!482, !28, i64 144}
!486 = !{!482, !28, i64 148}
!487 = !{!482, !28, i64 152}
!488 = !{!482, !28, i64 156}
!489 = !{!482, !28, i64 160}
!490 = !{!482, !28, i64 164}
!491 = !{i32 -1056584962, i32 390989725}
!492 = !{!"b3PrismaticJointDef", !39, i64 0, !14, i64 112, !28, i64 116, !28, i64 120, !28, i64 124, !14, i64 128, !28, i64 132, !28, i64 136, !14, i64 140, !28, i64 144, !28, i64 148}
!493 = !{!492, !14, i64 112}
!494 = !{!492, !28, i64 116}
!495 = !{!492, !28, i64 120}
!496 = !{!492, !28, i64 124}
!497 = !{!492, !14, i64 128}
!498 = !{!492, !28, i64 132}
!499 = !{!492, !28, i64 136}
!500 = !{!492, !14, i64 140}
!501 = !{!492, !28, i64 144}
!502 = !{!492, !28, i64 148}
!503 = !{i32 -1056584962, i32 183872781}
!504 = !{!"b3RevoluteJointDef", !39, i64 0, !28, i64 112, !14, i64 116, !28, i64 120, !28, i64 124, !14, i64 128, !28, i64 132, !28, i64 136, !14, i64 140, !28, i64 144, !28, i64 148}
!505 = !{!504, !28, i64 112}
!506 = !{!504, !14, i64 116}
!507 = !{!504, !28, i64 120}
!508 = !{!504, !28, i64 124}
!509 = !{!504, !14, i64 128}
!510 = !{!504, !28, i64 132}
!511 = !{!504, !28, i64 136}
!512 = !{!504, !14, i64 140}
!513 = !{!504, !28, i64 144}
!514 = !{!504, !28, i64 148}
!515 = !{i32 -1056584962, i32 1949113097}
!516 = !{!"b3SphericalJointDef", !39, i64 0, !14, i64 112, !28, i64 116, !28, i64 120, !33, i64 124, !14, i64 140, !28, i64 144, !14, i64 148, !28, i64 152, !28, i64 156, !14, i64 160, !28, i64 164, !29, i64 168}
!517 = !{!516, !14, i64 112}
!518 = !{!516, !28, i64 116}
!519 = !{!516, !28, i64 120}
!520 = !{!516, !14, i64 140}
!521 = !{!516, !28, i64 144}
!522 = !{!516, !14, i64 148}
!523 = !{!516, !28, i64 152}
!524 = !{!516, !28, i64 156}
!525 = !{!516, !14, i64 160}
!526 = !{!516, !28, i64 164}
!527 = !{i32 -1056584962, i32 -535760790}
!528 = !{i32 -1056584962, i32 655735798}
!529 = !{!"b3WheelJointDef", !39, i64 0, !14, i64 112, !28, i64 116, !28, i64 120, !14, i64 124, !28, i64 128, !28, i64 132, !14, i64 136, !28, i64 140, !28, i64 144, !14, i64 148, !28, i64 152, !28, i64 156, !28, i64 160, !28, i64 164, !14, i64 168, !28, i64 172, !28, i64 176}
!530 = !{!529, !14, i64 112}
!531 = !{!529, !28, i64 116}
!532 = !{!529, !28, i64 120}
!533 = !{!529, !14, i64 124}
!534 = !{!529, !28, i64 128}
!535 = !{!529, !28, i64 132}
!536 = !{!529, !14, i64 136}
!537 = !{!529, !28, i64 140}
!538 = !{!529, !28, i64 144}
!539 = !{!529, !14, i64 148}
!540 = !{!529, !28, i64 152}
!541 = !{!529, !28, i64 156}
!542 = !{!529, !28, i64 160}
!543 = !{!529, !28, i64 164}
!544 = !{!529, !14, i64 168}
!545 = !{!529, !28, i64 172}
!546 = !{!529, !28, i64 176}
!547 = !{i32 -1056584962, i32 602771444}
!548 = !{i32 -1056584962, i32 -1385178340}
!549 = !{i32 -1056584962, i32 372239430}
!550 = !{i32 -1056584962, i32 -1822904460}
!551 = !{!58, !7, i64 40}
!552 = !{i32 -1056584962, i32 672735472}
!553 = !{!58, !13, i64 16}
!554 = !{!58, !7, i64 28}
!555 = distinct !{!555, !25, !557}
!556 = !{i32 -1056584962, i32 -1586468262}
!557 = !{!"llvm.loop.estimated_trip_count", i32 524288}
!558 = distinct !{!558, !"b3RecTagMap_get"}
!559 = distinct !{!559, !558, !"b3RecTagMap_get: argument 0"}
!560 = distinct !{!560, !"b3RecTagMap_insert"}
!561 = distinct !{!561, !560, !"b3RecTagMap_insert: argument 0"}
!562 = !{i32 -1056584962, i32 -718076343}
!563 = !{!559}
!564 = !{!561}
!565 = !{i32 -1056584962, i32 -626543306}
!566 = !{i32 -1056584962, i32 -1962067908}
!567 = distinct !{!567, !25}
!568 = !{i32 -1056584962, i32 941104080}
!569 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44, i64 12, i64 4, !44, i64 16, i64 4, !44, i64 20, i64 4, !44, i64 24, i64 4, !44, i64 28, i64 4, !81, i64 32, i64 4, !81, i64 36, i64 4, !81}
!570 = !{i32 -1056584962, i32 -93794502}
!571 = !{!"", !92, i64 0, !28, i64 4, !7, i64 8}
!572 = !{!571, !28, i64 4}
!573 = !{!571, !7, i64 8}
!574 = !{!"", !92, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!575 = !{!574, !28, i64 4}
!576 = !{!574, !28, i64 8}
!577 = !{!574, !28, i64 12}
!578 = !{!"", !37, i64 0, !13, i64 8}
!579 = !{!578, !13, i64 8}
!580 = !{!"", !37, i64 0, !38, i64 8, !28, i64 36, !14, i64 40}
!581 = !{!580, !28, i64 36}
!582 = !{!580, !14, i64 40}
!583 = !{!"", !37, i64 0, !36, i64 8, !7, i64 128, !29, i64 132}
!584 = !{!583, !7, i64 128}
!585 = !{!"", !27, i64 0, !28, i64 8, !14, i64 12}
!586 = !{!585, !28, i64 8}
!587 = !{!585, !14, i64 12}
!588 = !{!"", !27, i64 0, !30, i64 8, !14, i64 32}
!589 = !{!588, !14, i64 32}
!590 = !{!"", !27, i64 0, !29, i64 8, !28, i64 20, !28, i64 24, !28, i64 28, !14, i64 32}
!591 = !{!590, !28, i64 20}
!592 = !{!590, !28, i64 24}
!593 = !{!590, !28, i64 28}
!594 = !{!590, !14, i64 32}
!595 = !{!"", !27, i64 0, !13, i64 8}
!596 = !{!595, !13, i64 8}
!597 = !{!"", !27, i64 0, !31, i64 8, !7, i64 48}
!598 = !{!597, !7, i64 48}
!599 = !{!"", !27, i64 0, !7, i64 8, !29, i64 12}
!600 = !{!599, !7, i64 8}
!601 = !{i32 -1056584962, i32 1711105337}
!602 = !{i32 -1056584962, i32 1757683650}
!603 = !{i32 -1056584962, i32 -384955822}
!604 = !{i32 -1056584962, i32 -1196467052}
!605 = !{i32 -1056584962, i32 -1500330952}
!606 = !{i32 -1056584962, i32 215719913}
!607 = !{i32 -1056584962, i32 1121490977}
!608 = !{i32 -1056584962, i32 1657116585}
!609 = !{i32 -1056584962, i32 -1002448316}
!610 = !{i32 -1056584962, i32 -242586227}
!611 = !{i32 -1056584962, i32 -1017319917}
!612 = !{i32 -1056584962, i32 303153749}
!613 = !{i32 -1056584962, i32 1478849443}
!614 = !{i32 -1056584962, i32 -925136995}
!615 = !{i32 -1056584962, i32 575362873}
!616 = !{i32 -1056584962, i32 784773647}
!617 = distinct !{!617, !"b3GeometryHashMap_end_itr"}
!618 = distinct !{!618, !617, !"b3GeometryHashMap_end_itr: argument 0"}
!619 = distinct !{!619, !"b3GeometryHashMap_end_itr"}
!620 = distinct !{!620, !619, !"b3GeometryHashMap_end_itr: argument 0"}
!621 = !{i32 -1056584962, i32 771678771}
!622 = !{!618}
!623 = !{!620}
!624 = distinct !{!624, !"b3GeometryHashMap_insert"}
!625 = distinct !{!625, !624, !"b3GeometryHashMap_insert: argument 0"}
!626 = !{i32 -1056584962, i32 704149427}
!627 = !{!293, !24, i64 0}
!628 = !{!293, !7, i64 32}
!629 = !{!625}
!630 = !{i32 -1056584962, i32 -942113937}
!631 = !{!53, !7, i64 12}
!632 = distinct !{!632, !25}
!633 = distinct !{!633, !25}
!634 = !{!56, !7, i64 48}
!635 = !{!56, !51, i64 40}
!636 = !{i32 -1056584962, i32 65790219}
!637 = !{i32 -1056584962, i32 1363938293}
!638 = !{i32 -1056584962, i32 1222662899}
!639 = !{i32 -1056584962, i32 582326158}
!640 = !{i32 -1056584962, i32 -844296690}
!641 = !{!"b3RecHeader", !7, i64 0, !26, i64 4, !26, i64 6, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !28, i64 12, !7, i64 16, !7, i64 20, !24, i64 24, !24, i64 32, !24, i64 40}
!642 = !{!641, !7, i64 0}
!643 = !{!641, !26, i64 4}
!644 = !{!641, !26, i64 6}
!645 = !{!641, !6, i64 8}
!646 = !{!641, !6, i64 10}
!647 = !{!641, !28, i64 12}
!648 = !{!641, !24, i64 24}
!649 = distinct !{!649, !25}
!650 = !{i32 -1056584962, i32 -1752220721}
!651 = !{!357, !7, i64 3888}
!652 = !{!357, !320, i64 3880}
!653 = !{!"b3Body", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !28, i64 52, !28, i64 56, !28, i64 60, !28, i64 64, !32, i64 68, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !26, i64 124}
!654 = !{!653, !7, i64 108}
!655 = !{i32 -1056584962, i32 1079287094}
!656 = !{i32 -1056584962, i32 -832509481}
!657 = !{i32 -1056584962, i32 -340540233}
!658 = !{i32 -1056584962, i32 1398916823}
!659 = !{!"b3HullData", !24, i64 0, !24, i64 8, !55, i64 16, !28, i64 40, !28, i64 44, !28, i64 48, !29, i64 52, !32, i64 64, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140}
!660 = !{!659, !7, i64 140}
!661 = !{i32 -1056584962, i32 -870298400}
!662 = !{!"b3MeshData", !24, i64 0, !24, i64 8, !7, i64 16, !55, i64 20, !28, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!663 = !{!662, !7, i64 16}
!664 = !{i32 -1056584962, i32 -6523052}
!665 = !{!"b3HeightFieldData", !24, i64 0, !24, i64 8, !7, i64 16, !55, i64 20, !28, i64 44, !28, i64 48, !28, i64 52, !29, i64 56, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !6, i64 88, !6, i64 89}
!666 = !{!665, !7, i64 16}
!667 = !{i32 -1056584962, i32 -567650879}
!668 = !{!"p1 _ZTS10b3TreeNode", !12, i64 0}
!669 = !{!"p1 _ZTS6b3AABB", !12, i64 0}
!670 = !{!"p1 _ZTS6b3Vec3", !12, i64 0}
!671 = !{!"b3DynamicTree", !24, i64 0, !668, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !308, i64 40, !669, i64 48, !670, i64 56, !308, i64 64, !7, i64 72}
!672 = !{!"b3CompoundData", !24, i64 0, !7, i64 8, !7, i64 12, !671, i64 16, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140}
!673 = !{!672, !7, i64 8}
!674 = !{!672, !668, i64 24}
!675 = distinct !{!675, !"b3GeometryHashMap_end_itr"}
!676 = distinct !{!676, !675, !"b3GeometryHashMap_end_itr: argument 0"}
!677 = distinct !{!677, !"b3GeometryHashMap_end_itr"}
!678 = distinct !{!678, !677, !"b3GeometryHashMap_end_itr: argument 0"}
!679 = !{i32 -1056584962, i32 96524844}
!680 = !{!676}
!681 = !{!678}
!682 = !{i32 -1056584962, i32 -651185186}
!683 = !{i32 -1056584962, i32 492710248}
!684 = !{i32 -1056584962, i32 1858962588}
!685 = distinct !{!685, !"b3RecTagMap_end_itr"}
!686 = distinct !{!686, !685, !"b3RecTagMap_end_itr: argument 0"}
!687 = distinct !{!687, !"b3RecTagMap_end_itr"}
!688 = distinct !{!688, !687, !"b3RecTagMap_end_itr: argument 0"}
!689 = !{i32 -1056584962, i32 93700346}
!690 = !{!686}
!691 = !{!688}
!692 = !{i32 -1056584962, i32 -1150953622}
!693 = !{i32 -1056584962, i32 -1109839050}
!694 = !{i32 -1056584962, i32 -134052549}
end_hunk_1
