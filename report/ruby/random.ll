Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/random?download=true
inline.NumInlined: 245
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@domain_error:bb.a
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 67, ptr %i.a, align 8, !tbaa !81
  %i.b = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !81
  %i.c = call i64 @rb_class_new_instance(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.b) #23
  call void @rb_exc_raise(i64 noundef %i.c) #25
  unreachable
}

declare i64 @rb_check_to_int(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef range(i64 -4611686018427387904, 4611686020574871552) %2) unnamed_addr #0 !guid !205 {
bb.a:
  %3 = alloca %union.anon.21, align 8             ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %limited_rand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %narrow = sub nuw nsw i64 64, %i.a              ; 5 uses
  %i.b = icmp ult i64 %2, 4294967296              ; 3 uses
  %i.c = select i1 %i.b, i32 4, i32 8             ; 2 uses
  %i.d = shl nsw i64 -1, %narrow                  ; 3 uses
  %i.e = xor i64 %i.d, -1                         ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 2 uses
  %i.g = shl nuw nsw i32 %i.c, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nsw i64 -1, %i.h
  %i.j = xor i64 %i.i, -1
  %i.k = select i1 %i.b, i64 %i.j, i64 -1         ; 2 uses
  br i1 %i.b, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.027.us = phi i64 [ %i.p, %bb.e ], [ 0, %bb.c ]
  %.0.us = phi i64 [ %i.q, %bb.e ], [ 0, %bb.c ]  ; 2 uses
  %i.l = or i64 %.0.us, %i.d
  %.not34.us = icmp eq i64 %i.l, -1
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %i.f) ; 0 uses
  %i.n = load i32, ptr %3, align 8
  %i.o = zext i32 %i.n to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us
  %.128.us = phi i64 [ %i.o, %bb.d ], [ %.027.us, %.split.us ] ; 2 uses
  %.1.us = phi i64 [ %i.k, %bb.d ], [ %.0.us, %.split.us ]
  %i.p = lshr i64 %.128.us, %narrow
  %i.q = lshr i64 %.1.us, %narrow
  %i.r = and i64 %.128.us, %i.e                   ; 2 uses
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %.split.us, label %limited_rand.exit, !llvm.loop !204

.split:                                           ; preds = %bb.c, %bb.g
  %.027 = phi i64 [ %i.w, %bb.g ], [ 0, %bb.c ]
  %.0 = phi i64 [ %i.x, %bb.g ], [ 0, %bb.c ]     ; 2 uses
  %i.t = or i64 %.0, %i.d
  %.not34 = icmp eq i64 %i.t, -1
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.u = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %i.f) ; 0 uses
  %i.v = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.128 = phi i64 [ %i.v, %bb.f ], [ %.027, %.split ] ; 2 uses
  %.1 = phi i64 [ %i.k, %bb.f ], [ %.0, %.split ]
  %i.w = lshr i64 %.128, %narrow
  %i.x = lshr i64 %.1, %narrow
  %i.y = and i64 %.128, %i.e                      ; 2 uses
  %i.z = icmp ult i64 %2, %i.y
  br i1 %i.z, label %.split, label %limited_rand.exit, !llvm.loop !204

bb.h:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr @default_rand_key, align 8, !tbaa !66
  %i.ab = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.aa) #23 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %default_rand.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.ae = load ptr, ptr @default_rand_key, align 8, !tbaa !66
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.ae, ptr noundef nonnull %i.ad) #23
  br label %default_rand.exit.i

default_rand.exit.i:                              ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.ad, %bb.i ], [ %i.ab, %bb.h ]
  %i.af = icmp eq ptr %1, %.0.i.i
  br i1 %i.af, label %try_rand_if.exit, label %bb.j

bb.j:                                             ; preds = %default_rand.exit.i
  %i.ag = inttoptr i64 %0 to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !84
  %i.aj = and i64 %i.ai, -2
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !92
  br label %try_rand_if.exit

try_rand_if.exit:                                 ; preds = %bb.j, %default_rand.exit.i
  %.0.i = phi ptr [ %i.am, %bb.j ], [ @random_mt_if, %default_rand.exit.i ]
  %i.an = lshr i64 %2, 1
  %i.ao = or i64 %i.an, %2                        ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = or i64 %i.ap, %i.ao                     ; 2 uses
  %i.ar = lshr i64 %i.aq, 4
  %i.as = or i64 %i.ar, %i.aq                     ; 2 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = or i64 %i.at, %i.as                     ; 2 uses
  %i.av = lshr i64 %i.au, 16
  %i.aw = or i64 %i.av, %i.au                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = or i64 %i.ax, %i.aw
  %.fr47 = freeze i64 %i.ay                       ; 6 uses
  %i.az = icmp ugt i64 %2, 4294967295
  %i.ba = getelementptr i8, ptr %.0.i, i64 32     ; 5 uses
  br i1 %i.az, label %.preheader.i, label %.preheader29.i

.preheader.i:                                     ; preds = %try_rand_if.exit
  %.not27.i = icmp ult i64 %i.aw, 4294967296
  %i.bb = and i64 %.fr47, 4294967295
  %.not27.1.i = icmp eq i64 %i.bb, 0              ; 2 uses
  br i1 %.not27.i, label %.preheader.i.split.us, label %.preheader.i.split

.preheader.i.split.us:                            ; preds = %.preheader.i
  br i1 %.not27.1.i, label %limited_rand.exit, label %.loopexit28.loopexit.i.us

.loopexit28.loopexit.i.us:                        ; preds = %.preheader.i.split.us, %.loopexit28.loopexit.i.us
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bd = tail call i32 %i.bc(ptr noundef nonnull %1) #23, !inline_history !2
  %i.be = zext i32 %i.bd to i64
  %i.bf = and i64 %.fr47, %i.be                   ; 2 uses
  %i.bg = icmp ult i64 %2, %i.bf
  br i1 %i.bg, label %.loopexit28.loopexit.i.us, label %limited_rand.exit

.preheader.i.split:                               ; preds = %.preheader.i
  br i1 %.not27.1.i, label %.loopexit28.i.us38, label %.loopexit28.i

.loopexit28.i.us38:                               ; preds = %.preheader.i.split, %.loopexit28.i.us38
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bi = tail call i32 %i.bh(ptr noundef nonnull %1) #23, !inline_history !2
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bj, 32
  %i.bl = and i64 %i.bk, %.fr47                   ; 2 uses
  %i.bm = icmp ult i64 %2, %i.bl
  br i1 %i.bm, label %.loopexit28.i.us38, label %limited_rand.exit

.loopexit28.i:                                    ; preds = %.preheader.i.split, %.loopexit28.i.backedge
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bo = tail call i32 %i.bn(ptr noundef nonnull %1) #23, !inline_history !2
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw i64 %i.bp, 32                   ; 2 uses
  %i.br = and i64 %i.bq, %.fr47
  %i.bs = icmp ult i64 %2, %i.br
  br i1 %i.bs, label %.loopexit28.i.backedge, label %bb.k

bb.k:                                             ; preds = %.loopexit28.i
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bu = tail call i32 %i.bt(ptr noundef nonnull %1) #23, !inline_history !2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = or disjoint i64 %i.bq, %i.bv
  %i.bx = and i64 %i.bw, %.fr47                   ; 2 uses
  %i.by = icmp ult i64 %2, %i.bx
  br i1 %i.by, label %.loopexit28.i.backedge, label %limited_rand.exit

.loopexit28.i.backedge:                           ; preds = %bb.k, %.loopexit28.i
  br label %.loopexit28.i

.preheader29.i:                                   ; preds = %try_rand_if.exit, %.preheader29.i
  %i.bz = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.ca = tail call i32 %i.bz(ptr noundef nonnull %1) #23, !inline_history !2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = and i64 %.fr47, %i.cb                   ; 2 uses
  %i.cd = icmp samesign ult i64 %2, %i.cc
  br i1 %i.cd, label %.preheader29.i, label %limited_rand.exit, !llvm.loop !0

limited_rand.exit:                                ; preds = %.preheader29.i, %bb.k, %.loopexit28.i.us38, %.loopexit28.loopexit.i.us, %bb.g, %bb.e, %.preheader.i.split.us, %bb.a
  %.029 = phi i64 [ %i.y, %bb.g ], [ 0, %bb.a ], [ %i.bl, %.loopexit28.i.us38 ], [ %i.bf, %.loopexit28.loopexit.i.us ], [ 0, %.preheader.i.split.us ], [ %i.bx, %bb.k ], [ %i.r, %bb.e ], [ %i.cc, %.preheader29.i ]
  ret i64 %.029
}

declare i32 @rb_bigzero_p(i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_minus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_norm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @random_ulong_limited_big(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !guid !207 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_absint_numwords(i64 noundef %2, i64 noundef 32, ptr noundef nonnull %i.b) #23 ; 10 uses
  %i.d = shl i64 %i.c, 1                          ; 3 uses
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.f = shl i64 %i.c, 3
  %i.g = alloca i8, i64 %i.f, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !109

bb.e:                                             ; preds = %bb.d
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.d, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.d
  %i.i = shl i64 %i.c, 3
  %i.j = and i64 %i.c, 2305843009213693951
  %i.k = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.i, i64 noundef %i.j) #28
  br label %bb.f

bb.f:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.c
  %i.l = phi ptr [ %i.g, %bb.c ], [ %i.k, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !81
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 -1, %i.n                        ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.c ; 8 uses
  %i.q = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef %i.c, i64 noundef 4, i64 noundef 0, i32 noundef 65) #23 ; 0 uses
  %i.r = shl i64 %i.c, 2                          ; 2 uses
  %i.s = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef %i.p, i64 noundef %i.r) ; 0 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !19
  %i.u = and i32 %i.t, %i.o
  store i32 %i.u, ptr %i.p, align 4, !tbaa !19
  %.not45 = icmp eq i64 %i.c, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.f, %.lr.ph.us.backedge
  %.041.us = phi i64 [ %.041.us.be, %.lr.ph.us.backedge ], [ 0, %bb.f ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.l, i64 %.041.us
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19   ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.p, i64 %.041.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %i.z = icmp ult i32 %i.w, %i.y
  br i1 %i.z, label %.loopexit.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us
  %i.aa = icmp uge i32 %i.y, %i.w
  %i.ab = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.c
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.us.backedge, label %._crit_edge

.lr.ph.us.backedge:                               ; preds = %bb.g, %.loopexit.us
  %.041.us.be = phi i64 [ %i.ab, %bb.g ], [ 0, %.loopexit.us ]
  br label %.lr.ph.us, !llvm.loop !206

.loopexit.us:                                     ; preds = %.lr.ph.us
  %i.ad = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %i.p, i64 noundef %i.r) ; 0 uses
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !19
  %i.af = and i32 %i.ae, %i.o
  store i32 %i.af, ptr %i.p, align 4, !tbaa !19
  br label %.lr.ph.us.backedge

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ag = call i64 @rb_integer_unpack(ptr noundef nonnull %i.p, i64 noundef %i.c, i64 noundef 4, i64 noundef 0, i32 noundef 65) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr @default_rand_key, align 8, !tbaa !66
  %i.ai = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.ah) #23 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %default_rand.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.al = load ptr, ptr @default_rand_key, align 8, !tbaa !66
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.al, ptr noundef nonnull %i.ak) #23
  br label %default_rand.exit.i

default_rand.exit.i:                              ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.ak, %bb.i ], [ %i.ai, %bb.h ]
  %i.am = icmp eq ptr %1, %.0.i.i
  br i1 %i.am, label %try_rand_if.exit, label %bb.j

bb.j:                                             ; preds = %default_rand.exit.i
  %i.an = inttoptr i64 %0 to ptr
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !84
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92
  br label %try_rand_if.exit

try_rand_if.exit:                                 ; preds = %default_rand.exit.i, %bb.j
  %.0.i = phi ptr [ %i.at, %bb.j ], [ @random_mt_if, %default_rand.exit.i ]
  %i.au = tail call fastcc i64 @limited_big_rand(ptr noundef %.0.i, ptr noundef %1, i64 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %try_rand_if.exit, %._crit_edge
  %.036 = phi i64 [ %i.au, %try_rand_if.exit ], [ %i.ag, %._crit_edge ]
  ret i64 %.036
}

declare i64 @rb_check_to_float(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

declare i64 @rb_to_float(i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_plus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_range_values(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_check_funcall_default(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #6

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #1

declare i64 @rb_integer_unpack(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @limited_big_rand(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 !guid !209 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @rb_absint_numwords(i64 noundef %2, i64 noundef 32, ptr noundef null) #23 ; 8 uses
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = icmp ult i64 %i.c, 256
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.e = shl i64 %i.b, 3
  %i.f = alloca i8, i64 %i.e, align 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 4611686018427387903
  br i1 %i.g, label %bb.d, label %rb_alloc_tmp_buffer2.exit, !prof !109

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.c, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.c
  %i.h = shl i64 %i.b, 3
  %i.i = and i64 %i.b, 2305843009213693951
  %i.j = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.h, i64 noundef %i.i) #28
  br label %bb.e

bb.e:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.b
  %i.k = phi ptr [ %i.f, %bb.b ], [ %i.j, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %i.b ; 2 uses
  %i.m = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.k, i64 noundef %i.b, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23 ; 0 uses
  %i.n = getelementptr i8, ptr %0, i64 32
  %.03448 = add i64 %i.b, -1                      ; 3 uses
  %i.o = icmp sgt i64 %.03448, -1
  br i1 %i.o, label %.lr.ph, label %.loopexit._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.backedge
  %.03451 = phi i64 [ %.03451.be, %.lr.ph.backedge ], [ %.03448, %bb.e ] ; 4 uses
  %.03350 = phi i32 [ %.03350.be, %.lr.ph.backedge ], [ 1, %bb.e ] ; 2 uses
  %.03549 = phi i32 [ %.03549.be, %.lr.ph.backedge ], [ 0, %bb.e ]
  %i.p = getelementptr [4 x i8], ptr %i.k, i64 %.03451
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 3 uses
  %.not = icmp eq i32 %.03549, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = or i64 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = or i64 %i.w, %i.v                        ; 2 uses
  %i.y = lshr i64 %i.x, 8
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = lshr i64 %i.z, 16
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = trunc nuw i64 %i.ab to i32
  %.not41 = icmp eq i64 %i.ab, 0
  br i1 %.not41, label %bb.i, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.f
  %i.ad = phi i32 [ %i.ac, %bb.f ], [ -1, %.lr.ph ] ; 3 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.af = call i32 %i.ae(ptr noundef nonnull %1) #23
  %i.ag = and i32 %i.af, %i.ad                    ; 4 uses
  %.not42 = icmp eq i32 %.03350, 0
  br i1 %.not42, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ah = icmp ult i32 %i.q, %i.ag
  br i1 %i.ah, label %.lr.ph.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp uge i32 %i.ag, %i.q
  %spec.select = zext i1 %i.ai to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.thread, %bb.h
  %i.aj = phi i32 [ 0, %bb.f ], [ %i.ad, %bb.h ], [ %i.ad, %.thread ]
  %.1 = phi i32 [ %.03350, %bb.f ], [ %spec.select, %bb.h ], [ 0, %.thread ]
  %.032 = phi i32 [ 0, %bb.f ], [ %i.ag, %bb.h ], [ %i.ag, %.thread ]
  %i.ak = getelementptr [4 x i8], ptr %i.l, i64 %.03451
  store i32 %.032, ptr %i.ak, align 4, !tbaa !19
  %.034 = add nsw i64 %.03451, -1
  %i.al = icmp sgt i64 %.03451, 0
  br i1 %i.al, label %.lr.ph.backedge, label %.loopexit._crit_edge

.lr.ph.backedge:                                  ; preds = %bb.i, %bb.g
  %.03451.be = phi i64 [ %.034, %bb.i ], [ %.03448, %bb.g ]
  %.03350.be = phi i32 [ %.1, %bb.i ], [ 1, %bb.g ]
  %.03549.be = phi i32 [ %i.aj, %bb.i ], [ 0, %bb.g ]
  br label %.lr.ph, !llvm.loop !208

.loopexit._crit_edge:                             ; preds = %bb.i, %bb.e
  %i.am = call i64 @rb_integer_unpack(ptr noundef %i.l, i64 noundef %i.b, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.am
}

declare i64 @rb_big_uminus(i64 noundef) local_unnamed_addr #1

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_init_default(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 !guid !210 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.b = load i64, ptr %0, align 8, !tbaa !211
  %i.c = add i64 %i.b, 31                         ; 2 uses
  %i.d = lshr i64 %i.c, 5                         ; 5 uses
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.f = icmp ult i64 %i.c, 8160
  %i.g = shl nuw nsw i64 %i.e, 2                  ; 3 uses
  br i1 %i.f, label %bb.b, label %rb_alloc_tmp_buffer2.exit

bb.b:                                             ; preds = %bb.a
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.c

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.g, 4
  %i.j = lshr i64 %i.i, 3
  %i.k = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef %i.j) #28
  br label %bb.c

bb.c:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.b
  %i.l = phi ptr [ %i.h, %bb.b ], [ %i.k, %rb_alloc_tmp_buffer2.exit ] ; 5 uses
  %i.m = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.n = call i32 @ruby_fill_random_bytes(ptr noundef nonnull %i.l, i64 noundef %i.m, i32 noundef 0) ; 0 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110
  call void %i.p(ptr noundef %1, ptr noundef nonnull %i.l, i64 noundef %i.d) #23
  %i.q = getelementptr [4 x i8], ptr %i.l, i64 %i.d ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = icmp ult i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %make_seed_value.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.q, align 4, !tbaa !19
  br label %make_seed_value.exit

make_seed_value.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  %i.u = call i64 @rb_integer_unpack(ptr noundef nonnull %i.l, i64 noundef %.0.i, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef -1) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.u
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #6

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_random(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !guid !212 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #25
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.h

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = tail call fastcc double @random_real(i64 noundef %2, ptr noundef %3, i32 noundef 1) ; 2 uses
  %i.c = bitcast double %i.b to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.c, 3458764513820540928
  br i1 %cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %i.c, 60
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 7
  %i.g = add nsw i32 %i.f, -5
  %i.h = icmp ult i32 %i.g, -2
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.c, i64 range(i64 3458764513820540929, 3458764513820540928) %i.c, i64 3)
  %i.j = and i64 %i.i, -4
  %i.k = or disjoint i64 %i.j, 2
  br label %rb_float_new_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.c, 0
  br i1 %i.l, label %rb_float_new_inline.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.m = tail call i64 @rb_float_new_in_heap(double noundef %i.b) #23
  br label %rb_float_new_inline.exit

bb.h:                                             ; preds = %rb_check_arity.exit
  %i.n = load i64, ptr %1, align 8, !tbaa !81     ; 8 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %rb_float_new_inline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = and i64 %i.n, 3
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp eq i64 %i.n, 0
  %i.s = and i64 %i.n, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %RB_FLOAT_TYPE_P.exit.thread31, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.j
  %i.v = inttoptr i64 %i.n to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !98
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %RB_FLOAT_TYPE_P.exit.thread, label %RB_FLOAT_TYPE_P.exit.thread31

RB_FLOAT_TYPE_P.exit.thread31:                    ; preds = %bb.j, %RB_FLOAT_TYPE_P.exit
  %i.z = tail call i64 @rb_check_to_int(i64 noundef %i.n) #23 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.k

bb.k:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread31
  %i.ab = tail call fastcc i64 @rand_int(i64 noundef %2, ptr noundef %3, i64 noundef %i.z, i32 noundef 1)
  br label %rb_float_new_inline.exit

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %bb.i, %RB_FLOAT_TYPE_P.exit.thread31, %RB_FLOAT_TYPE_P.exit
  %i.ac = tail call i64 @rb_check_to_float(i64 noundef %i.n) #23 ; 6 uses
  %i.ad = icmp eq i64 %i.ac, 4
  br i1 %i.ad, label %bb.u, label %bb.l

bb.l:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.ae = and i64 %i.ac, 3
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq i64 %i.ac, -9223372036854775806
  br i1 %.not.i.i.i, label %float_value.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg.i.i.i = ashr i64 %i.ac, 63
  %i.ag = add nsw i64 %.neg.i.i.i, 2
  %i.ah = and i64 %i.ac, -4
  %i.ai = or i64 %i.ag, %i.ah                     ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ai, i64 range(i64 1, 0) %i.ai, i64 61)
  %i.ak = bitcast i64 %i.aj to double
  br label %rb_float_value_inline.exit.i

bb.o:                                             ; preds = %bb.l
  %i.al = inttoptr i64 %i.ac to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !113
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.o, %bb.n
  %.0.i.i = phi double [ %i.an, %bb.o ], [ %i.ak, %bb.n ] ; 3 uses
  %i.ao = tail call double @llvm.fabs.f64(double %.0.i.i)
  %i.ap = fcmp ueq double %i.ao, +inf
  br i1 %i.ap, label %bb.p, label %float_value.exit

bb.p:                                             ; preds = %rb_float_value_inline.exit.i
  tail call fastcc void @domain_error() #27
  unreachable

float_value.exit:                                 ; preds = %rb_float_value_inline.exit.i
  %i.aq = fcmp olt double %.0.i.i, 0.000000e+00
  br i1 %i.aq, label %rb_float_new_inline.exit, label %float_value.exit.thread

float_value.exit.thread:                          ; preds = %bb.m, %float_value.exit
  %.0.i.i3436 = phi double [ %.0.i.i, %float_value.exit ], [ 0.000000e+00, %bb.m ] ; 2 uses
  %i.ar = tail call fastcc double @random_real(i64 noundef %2, ptr noundef %3, i32 noundef 1) ; 2 uses
  %i.as = fcmp ogt double %.0.i.i3436, 0.000000e+00
  %i.at = fmul double %.0.i.i3436, %i.ar
  %.0 = select i1 %i.as, double %i.at, double %i.ar ; 2 uses
  %i.au = bitcast double %.0 to i64               ; 5 uses
  %cond.i27 = icmp eq i64 %i.au, 3458764513820540928
  br i1 %cond.i27, label %bb.t, label %bb.q

bb.q:                                             ; preds = %float_value.exit.thread
  %i.av = lshr i64 %i.au, 60
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 7
  %i.ay = add nsw i32 %i.ax, -5
  %i.az = icmp ult i32 %i.ay, -2
  br i1 %i.az, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.au, i64 range(i64 3458764513820540929, 3458764513820540928) %i.au, i64 3)
  %i.bb = and i64 %i.ba, -4
  %i.bc = or disjoint i64 %i.bb, 2
  br label %rb_float_new_inline.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = icmp eq i64 %i.au, 0
  br i1 %i.bd, label %rb_float_new_inline.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %float_value.exit.thread
  %i.be = tail call i64 @rb_float_new_in_heap(double noundef %.0) #23
  br label %rb_float_new_inline.exit

bb.u:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.bf = tail call fastcc i64 @rand_range(i64 noundef %2, ptr noundef %3, i64 noundef %i.n)
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.t, %bb.s, %bb.r, %bb.g, %bb.f, %bb.e, %float_value.exit, %bb.h, %bb.u, %bb.k
  %.1 = phi i64 [ 4, %float_value.exit ], [ %i.ab, %bb.k ], [ %i.bf, %bb.u ], [ 4, %bb.h ], [ -9223372036854775806, %bb.f ], [ %i.k, %bb.e ], [ %i.m, %bb.g ], [ %i.bc, %bb.r ], [ %i.be, %bb.t ], [ -9223372036854775806, %bb.s ]
  ret i64 %.1
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @invalid_argument(i64 noundef %0) unnamed_addr #20 !guid !213 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !81
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.32, i64 noundef %0) #25
  unreachable
}

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_obj_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_check_copyable(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @default_rand_mark(ptr nofree noundef readonly captures(none) %0) #0 !guid !214 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73
  tail call void @rb_gc_mark(i64 noundef %i.a) #23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind allocsize(1,2) }
attributes #29 = { memory(none) }

!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !76}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !76}
!4 = distinct !{ptr @rb_str_new, null}
!5 = distinct !{null}
!6 = distinct !{!6, !76}
!7 = distinct !{!7, !76}
!8 = distinct !{!8, !76}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!15 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i64 -6840118766637560874}
!21 = !{i64 -3380810397958834641}
!22 = !{i64 -7706563437365163458}
!23 = !{i64 3220296536810772320}
!24 = !{i64 -1540535831050426573}
!25 = !{i64 -7364861602716145592}
!26 = !{i64 -524454151791444506}
!27 = !{i64 -4834400821636202536}
!28 = !{i64 6865298275441122408}
!29 = !{i64 2540872731782290742}
!30 = !{i64 -2386886844539465665}
!31 = !{i64 -4893040055179228992}
!32 = !{i64 -3930687328770491152}
!33 = !{i64 63349033348913143}
!34 = !{i64 -2194199733162904142}
!35 = !{i64 2132270163056427965}
!36 = !{i64 9066774500450289245}
!37 = !{i64 6803119319691407858}
!38 = !{i64 6834896924005856485}
!39 = !{i64 -5618002006826441374}
!40 = !{i64 -1756587372715337818}
!41 = !{i64 2253102005042593259}
!42 = !{i64 225421683166783528}
!43 = !{i64 -4889323569119720198}
!44 = !{i64 3375575470268192778}
!45 = !{i64 -1260277253556416076}
!46 = !{i64 -7556992064691145629}
!47 = !{i64 -6613384629042227116}
!48 = !{i64 4560223740942699633}
!49 = !{i64 -7167813508040832320}
!50 = !{i64 -2504838774634003144}
!51 = !{i64 -2319895721150335225}
!52 = !{i64 6185464666578879974}
!53 = !{i64 4451013128888493759}
!54 = !{i64 1690567310397381996}
!55 = !{i64 4941391712321588168}
!56 = !{i64 -8671505869878495660}
!57 = !{i64 -126774075056502285}
!58 = !{i64 2489654965415393971}
!59 = !{i64 -1306419364428783054}
!60 = !{i64 188031665881478783}
!61 = !{i64 5177856314220011310}
!62 = !{i64 1540944814037365971}
!63 = !{i64 6380202218637007355}
!64 = !{!"any pointer", !17, i64 0}
!65 = !{!"p1 _ZTS26rb_ractor_local_key_struct", !64, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"long", !17, i64 0}
!68 = !{!"rb_random_struct", !67, i64 0}
!69 = !{!"p1 int", !64, i64 0}
!70 = !{!"MT", !17, i64 0, !69, i64 2496, !18, i64 2504}
!71 = !{!"", !68, i64 0, !70, i64 8}
!72 = !{!71, !69, i64 2504}
!73 = !{!71, !67, i64 0}
!74 = !{!70, !18, i64 2504}
!75 = !{!70, !69, i64 2496}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!68, !67, i64 0}
!80 = !{!"timespec", !67, i64 0, !67, i64 8}
!81 = !{!67, !67, i64 0}
!82 = !{!"RBasic", !67, i64 0, !67, i64 8}
!83 = !{!"RTypedData", !82, i64 0, !67, i64 16, !67, i64 24, !64, i64 32}
!84 = !{!83, !67, i64 24}
!85 = !{!"RData", !82, i64 0, !64, i64 16, !64, i64 24, !64, i64 32}
!86 = !{!85, !64, i64 32}
!87 = !{!"p1 omnipotent char", !64, i64 0}
!88 = !{!"", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !17, i64 32}
!89 = !{!"p1 _ZTS19rb_data_type_struct", !64, i64 0}
!90 = !{!"rb_data_type_struct", !87, i64 0, !88, i64 8, !89, i64 48, !64, i64 56, !67, i64 64}
!91 = !{!90, !87, i64 0}
!92 = !{!90, !64, i64 56}
!93 = !{!"", !17, i64 0, !17, i64 1}
!94 = !{!"short", !17, i64 0}
!95 = !{!"", !67, i64 0, !93, i64 8, !94, i64 10, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48}
!96 = !{!95, !64, i64 32}
!97 = !{!"branch_weights", i32 1073205, i32 2146410443}
!98 = !{!82, !67, i64 0}
!99 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!100 = !{!17, !17, i64 0}
!101 = !{!95, !64, i64 48}
!102 = !{!95, !64, i64 40}
!103 = !{!69, !69, i64 0}
!104 = !{!83, !64, i64 32}
!105 = !{!"branch_weights", i32 -100663296, i32 2097152}
!106 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!107 = !{!90, !89, i64 48}
!108 = !{!71, !18, i64 2512}
!109 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!110 = !{!95, !64, i64 16}
!111 = !{!"double", !17, i64 0}
!112 = !{!"RFloat", !82, i64 0, !111, i64 16}
!113 = !{!112, !111, i64 16}
!114 = !{i64 618750324250633914}
!115 = !{i64 -7578434632293260059}
!116 = !{i64 3718421263212540713}
!117 = distinct !{!117, !76, !77, !78}
!118 = distinct !{!118, !76, !77, !78}
!119 = !{i64 -5939820034838464938}
!120 = !{i64 -5795039800445084422}
!121 = !{i64 -4102022493988193168}
!122 = !{i64 3594099070360947357}
!123 = !{i64 -7034816534612706195}
!124 = distinct !{!124, !76}
!125 = distinct !{!125, !76}
!126 = !{i64 -8867494200674943235}
!127 = !{!"stat", !67, i64 0, !67, i64 8, !67, i64 16, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !80, i64 72, !80, i64 88, !80, i64 104, !17, i64 120}
!128 = !{!127, !18, i64 24}
!129 = !{i64 9107892678001752948}
!130 = !{i64 309040005871064209}
!131 = !{i64 -6701949061230460386}
!132 = !{!"RString", !82, i64 0, !67, i64 16, !17, i64 24}
!133 = !{!132, !67, i64 16}
!134 = !{i64 -5052263794531700582}
!135 = distinct !{ptr @random_real, null}
!136 = !{i64 8012503457037977116}
!137 = !{ptr @random_real}
!138 = !{i64 8243341100505452129}
!139 = !{i64 3092673988741096395}
!140 = !{i64 3465819518927665596}
!141 = !{i64 -151876439667956499}
!142 = distinct !{!142, !76}
!143 = !{i64 7127529747036294076}
!144 = !{i64 -3593457055083191345}
!145 = !{i64 -912285164995023075}
!146 = distinct !{!146, !76, !77, !78}
!147 = distinct !{!147, !76, !77, !78}
!148 = distinct !{!148, !76, !77, !78}
!149 = distinct !{!149, !76, !77, !78}
!150 = distinct !{!150, !76, !77, !78}
!151 = distinct !{!151, !76, !77, !78}
!152 = distinct !{!152, !76, !77, !78}
!153 = distinct !{!153, !76, !77, !78}
!154 = distinct !{!154, !76, !77, !78}
!155 = distinct !{!155, !76, !77, !78}
!156 = distinct !{!156, !76, !77, !78}
!157 = distinct !{!157, !76, !77, !78}
!158 = !{i64 -5601899774089575049}
!159 = !{!80, !67, i64 8}
!160 = !{!80, !67, i64 0}
!161 = !{i64 -8598259265157303515}
!162 = !{i64 -2447892909967631153}
!163 = !{i64 -895371544814245079}
!164 = !{i64 3868842902360812544}
!165 = !{i64 8044567743907815887}
!166 = !{i64 -5213712444519700954}
!167 = !{!95, !17, i64 8}
!168 = !{!95, !17, i64 9}
!169 = !{!"branch_weights", i32 2146410443, i32 1073205}
!170 = !{!"branch_weights", i32 4001, i32 1}
!171 = !{i64 5063647871508955886}
!172 = !{i64 -452526201166103105}
!173 = !{i64 -5159311437384794483}
!174 = !{i64 3433305377823333125}
!175 = !{i64 0, i64 8, !81, i64 8, i64 2496, !100, i64 2504, i64 8, !103, i64 2512, i64 4, !19}
!176 = !{i64 -4282078007988415885}
!177 = !{i64 1446098594517474200}
!178 = !{i64 -1877791453714664787}
!179 = !{i64 8801119432961277591}
!180 = !{i64 -996095662945228933}
!181 = !{i64 -5922815966589367402}
!182 = !{i64 2321761811699980668}
!183 = !{i64 4237039564784366367}
!184 = !{i64 432675797151508130}
!185 = !{i64 451746609795140478}
!186 = !{i64 2849127293585052117}
!187 = !{i64 -2207403869158284194}
!188 = !{i64 8661544612553278691}
!189 = !{i64 -6843758194645679900}
!190 = !{i64 886453315555262135}
!191 = !{!95, !64, i64 24}
!192 = !{i64 6978414765374857813}
!193 = !{i64 4617108820246045138}
!194 = !{i64 -2813480756674869600}
!195 = !{i64 664462233795304051}
!196 = !{i64 -6779409604836741795}
!197 = !{i64 -5722844092520230782}
!198 = !{i64 8721518830640229028}
!199 = !{i64 4910512108034240935}
!200 = !{!"p1 long", !64, i64 0}
!201 = !{!200, !200, i64 0}
!202 = !{i64 2155753400}
!203 = !{i64 -6419421539499502092}
!204 = distinct !{!204, !76}
!205 = !{i64 -6210003124978558637}
!206 = distinct !{!206, !76}
!207 = !{i64 7241088983536865751}
!208 = distinct !{!208, !76}
!209 = !{i64 2431904265198942822}
!210 = !{i64 5002100422888269363}
!211 = !{!95, !67, i64 0}
!212 = !{i64 3790297298130787840}
!213 = !{i64 -3790246132529796416}
!214 = !{i64 8118399104846734153}
end_hunk_0
