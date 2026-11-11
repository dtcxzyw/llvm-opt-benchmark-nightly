Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/recording?download=true
inline.NumInlined: 947
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3RecQueryCommit:bb.a
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

bb.b:                                             ; preds = %bb.h, %bb.e
  %.lcssa = phi i64 [ %i.am, %bb.e ], [ %i.ax, %bb.h ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @820, i64 %i.ae, i64 %.lcssa) #12, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.h, %.preheader
  %i.af = phi ptr [ %1, %.preheader ], [ %i.aw, %bb.h ]
  %.040 = phi i32 [ 0, %.preheader ], [ %i.ar, %bb.h ] ; 2 uses
  %.139 = phi i64 [ %i.ad, %.preheader ], [ %i.au, %bb.h ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20  ; 2 uses
  %.not18 = icmp eq i8 %i.ag, 0
  br i1 %.not18, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @821, i64 2147483647, i64 1) #12, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.ah = add nuw nsw i32 %.040, 1
  %i.ai = zext i8 %i.ag to i64
  %i.aj = xor i64 %.139, %i.ai
  %i.ak = mul i64 %i.aj, 1099511628211            ; 2 uses
  %i.al = sext i32 %i.ah to i64                   ; 2 uses
  %i.am = add i64 %i.al, %i.ae, !nosanitize !10   ; 2 uses
  %.not41 = icmp ult i64 %i.am, %i.ae, !nosanitize !10
  br i1 %.not41, label %bb.b, label %bb.f, !prof !34, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20  ; 2 uses
  %.not18.1 = icmp eq i8 %i.ao, 0
  br i1 %.not18.1, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.040, i32 2) ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ap, 1, !nosanitize !10
  br i1 %i.aq, label %bb.d, label %bb.h, !prof !17, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  %i.ar = extractvalue { i32, i1 } %i.ap, 0, !nosanitize !10 ; 2 uses
  %i.as = zext i8 %i.ao to i64
  %i.at = xor i64 %i.ak, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = sext i32 %i.ar to i64                   ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = add i64 %i.av, %i.ae, !nosanitize !10   ; 2 uses
  %.not41.1 = icmp ult i64 %i.ax, %i.ae, !nosanitize !10
  br i1 %.not41.1, label %bb.b, label %bb.c, !prof !34, !llvm.loop !555, !nosanitize !10

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.a
  %.2 = phi i64 [ %i.ad, %bb.a ], [ %.139, %bb.c ], [ %i.ak, %bb.f ]
  %i.ay = tail call i64 @llvm.umax.i64(i64 %.2, i64 1)
  ret i64 %i.ay
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %b3RecTags.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @b3Alloc(i64 noundef 32) #13 ; 8 uses
  %i.k = icmp ne ptr %i.j, null, !nosanitize !10
  %i.l = ptrtoint ptr %i.j to i64, !nosanitize !10 ; 2 uses
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

b3RecTags.exit:                                   ; preds = %bb.c, %b3RecTagMap_init.exit.i
  %5 = phi ptr [ %i.j, %b3RecTagMap_init.exit.i ], [ %i.h, %bb.c ] ; 6 uses
  %.pre-phi213 = ptrtoint ptr %5 to i64           ; 2 uses
  %i.s = lshr i64 %1, 23
  %i.t = xor i64 %i.s, %1
  %i.u = mul i64 %i.t, 2388976653695081527        ; 3 uses
  %i.v = and i64 %.pre-phi213, 7, !nosanitize !10
  %i.w = icmp eq i64 %i.v, 0, !nosanitize !10
  br i1 %i.w, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %b3RecTags.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @992, i64 %.pre-phi213) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %b3RecTags.exit
  %i.x = lshr i64 %i.u, 47
  %i.y = xor i64 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !67, !noalias !563 ; 5 uses
  %i.ab = and i64 %i.aa, %i.y                     ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69, !noalias !563 ; 5 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ab ; 3 uses
  %i.af = add i64 %i.ab, 4611686018427387904
  %i.ag = icmp sgt i64 %i.af, -1
  %i.ah = shl i64 %i.ab, 1
  %i.ai = ptrtoint ptr %i.ad to i64, !nosanitize !10 ; 11 uses
  %i.aj = add i64 %i.ah, %i.ai, !nosanitize !10   ; 4 uses
  %i.ak = icmp ne ptr %i.ad, null, !nosanitize !10 ; 2 uses
  %i.al = icmp eq i64 %i.aj, 0                    ; 2 uses
  %i.am = xor i1 %i.ak, %i.al
  %i.an = icmp uge i64 %i.aj, %i.ai, !nosanitize !10
  %i.ao = and i1 %i.ag, %i.an, !nosanitize !10
  %i.ap = and i1 %i.am, %i.ao, !nosanitize !10
  br i1 %i.ap, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @993, i64 %i.ai, i64 %i.aj) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.aq = ptrtoint ptr %i.ae to i64, !nosanitize !10 ; 2 uses
  %i.ar = and i64 %i.aq, 1, !nosanitize !10
  %i.as = icmp eq i64 %i.ar, 0, !nosanitize !10
  %i.at = and i1 %i.ak, %i.as
  br i1 %i.at, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @994, i64 %i.aq) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.au = load i16, ptr %i.ae, align 2, !tbaa !70, !noalias !563
  %i.av = and i16 %i.au, 2048
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %b3RecTagMap_get.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.aw = lshr i64 %i.u, 48
  %i.ax = trunc nuw i64 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.r
  %.not3484.us.i = phi i1 [ %.not34.us.i, %bb.r ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.az = phi i64 [ %i.cl, %bb.r ], [ %i.aj, %.lr.ph.i ] ; 2 uses
  %i.ba = phi ptr [ %i.ch, %bb.r ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.083.us.i = phi i64 [ %i.cg, %bb.r ], [ %i.ab, %.lr.ph.i ] ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64, !nosanitize !10 ; 2 uses
  %i.bc = and i64 %i.bb, 1, !nosanitize !10
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !10
  br i1 %i.bd, label %bb.l, label %.split.us.i, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.be = load i16, ptr %i.ba, align 2, !tbaa !70, !noalias !563 ; 2 uses
  %i.bf = xor i16 %i.be, %i.ax
  %i.bg = icmp ult i16 %i.bf, 4096
  br i1 %i.bg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !68, !noalias !563 ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.083.us.i ; 2 uses
  %i.bj = add nsw i64 %.083.us.i, 576460752303423488
  %i.bk = icmp ult i64 %i.bj, 1152921504606846976
  %i.bl = shl i64 %.083.us.i, 4
  %i.bm = ptrtoint ptr %i.bh to i64, !nosanitize !10 ; 4 uses
  %i.bn = add i64 %i.bl, %i.bm, !nosanitize !10   ; 3 uses
  %i.bo = icmp ne ptr %i.bh, null, !nosanitize !10 ; 2 uses
  %i.bp = icmp eq i64 %i.bn, 0                    ; 2 uses
  %i.bq = xor i1 %i.bo, %i.bp
  %i.br = icmp uge i64 %i.bn, %i.bm, !nosanitize !10
  %i.bs = and i1 %i.bk, %i.br, !nosanitize !10
  %i.bt = and i1 %i.bq, %i.bs, !nosanitize !10
  br i1 %i.bt, label %bb.n, label %.split86.us.i, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %i.bi to i64, !nosanitize !10 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !nosanitize !10
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !10
  %i.bx = and i1 %i.bo, %i.bw
  br i1 %i.bx, label %bb.o, label %.split90.us.i, !prof !11, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  %i.by = load i64, ptr %i.bi, align 8, !tbaa !72, !noalias !563
  %i.bz = icmp eq i64 %i.by, %1
  br i1 %i.bz, label %.split93.us.i, label %bb.p, !prof !73

bb.p:                                             ; preds = %bb.o, %bb.l
  br i1 %.not3484.us.i, label %.split102.us.i, label %bb.q, !prof !17, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  %i.ca = and i16 %i.be, 2047                     ; 2 uses
  %.not32.us.i = icmp eq i16 %i.ca, 2047
  br i1 %.not32.us.i, label %b3RecTagMap_get.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = zext nneg i16 %i.ca to i64              ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 1
  %i.cd = mul nuw nsw i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = add i64 %i.ce, %i.ab
  %i.cg = and i64 %i.cf, %i.aa                    ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.cg
  %i.ci = add i64 %i.cg, 4611686018427387904
  %i.cj = icmp sgt i64 %i.ci, -1
  %i.ck = shl i64 %i.cg, 1
  %i.cl = add i64 %i.ck, %i.ai, !nosanitize !10   ; 4 uses
  %.not34.us.i = icmp eq i64 %i.cl, 0
  %i.cm = icmp uge i64 %i.cl, %i.ai, !nosanitize !10
  %i.cn = and i1 %i.cj, %i.cm, !nosanitize !10
  br i1 %i.cn, label %.lr.ph.split.us.i, label %._crit_edge.i, !prof !74, !nosanitize !10

._crit_edge.i:                                    ; preds = %bb.r
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @995, i64 %i.ai, i64 %i.cl) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @996, i64 %i.bb) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split86.us.i:                                    ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @997, i64 %i.bm, i64 %i.bn) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split90.us.i:                                    ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @999, i64 %i.bu) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split93.us.i:                                    ; preds = %bb.o
  br i1 %i.bp, label %bb.s, label %bb.t, !prof !17, !nosanitize !10

bb.s:                                             ; preds = %.split93.us.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1000, i64 %i.bm, i64 0) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %.split93.us.i
  br i1 %.not3484.us.i, label %bb.u, label %bb.v, !prof !17, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1001, i64 %i.ai, i64 %i.az) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.v:                                             ; preds = %bb.t
  %i.co = add i64 %i.aa, 4611686018427387904
  %i.cp = icmp sgt i64 %i.co, -1
  %i.cq = shl i64 %i.aa, 1
  %i.cr = add i64 %i.cq, %i.ai, !nosanitize !10   ; 2 uses
  %i.cs = icmp uge i64 %i.cr, %i.ai, !nosanitize !10
  %i.ct = and i1 %i.cp, %i.cs, !nosanitize !10
  br i1 %i.ct, label %bb.x, label %bb.w, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1002, i64 %i.ai, i64 %i.cr) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

bb.x:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.aa ; 3 uses
  %i.cv = ptrtoint ptr %i.cu to i64, !nosanitize !10 ; 2 uses
  %i.cw = add i64 %i.cv, 2, !nosanitize !10       ; 2 uses
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = icmp ult ptr %i.cu, inttoptr (i64 -2 to ptr)
  %i.cz = and i1 %i.cy, %i.cx, !nosanitize !10
  br i1 %i.cz, label %b3RecTagMap_get.exit, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1003, i64 %i.cv, i64 %i.cw) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

.split102.us.i:                                   ; preds = %bb.p
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1004, i64 %i.ai, i64 %i.az) #12, !noalias !563, !nosanitize !10
  unreachable, !nosanitize !10

b3RecTagMap_get.exit:                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.db = icmp eq ptr %i.ba, %i.da
  br i1 %i.db, label %b3RecTagMap_get.exit.thread, label %bb.as

b3RecTagMap_get.exit.thread:                      ; preds = %bb.q, %bb.k, %b3RecTagMap_get.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.de = load i32, ptr %i.dc, align 8, !tbaa !75 ; 8 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !76
  %i.dg = icmp eq i32 %i.de, %i.df
end_hunk_0
