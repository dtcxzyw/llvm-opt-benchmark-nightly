Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1044
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tcg_remove_ops_after:bb.a
; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @tcg_emit_op(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 29360
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i, !prof !14

.preheader.i:                                     ; preds = %bb.a, %bb.f
  %.03238.i = phi ptr [ %i.i, %bb.f ], [ %i.d, %bb.a ] ; 6 uses
  %i.e = load i32, ptr %.03238.i, align 8
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 255
  %.not35.i = icmp ugt i32 %1, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %.03238.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not34.i = icmp eq ptr %i.i, null              ; 2 uses
  br i1 %.not35.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %.03238.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03238.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  br i1 %.not34.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 29368
  store ptr %i.l, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  store ptr %i.o, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.p = load i32, ptr %.03238.i, align 8
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.q, 255
  br label %tcg_op_alloc.exit

bb.f:                                             ; preds = %.preheader.i
  br i1 %.not34.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.f, %bb.a
  %i.s = tail call i32 @llvm.umax.i32(i32 %1, i32 4) ; 3 uses
  %i.t = shl i32 %i.s, 3
  %i.u = add i32 %i.t, 39
  %i.v = sdiv i32 %i.u, 8
  %i.w = shl nsw i32 %i.v, 3                      ; 2 uses
  %i.x = load i64, ptr %i.b, align 8              ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %.loopexit.i
  %i.ad = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.b, i32 noundef %i.w)
  br label %tcg_op_alloc.exit

bb.h:                                             ; preds = %.loopexit.i
  store i64 %i.z, ptr %i.b, align 8
  %i.ae = inttoptr i64 %i.x to ptr
  br label %tcg_op_alloc.exit

tcg_op_alloc.exit:                                ; preds = %bb.e, %bb.g, %bb.h
  %.1.i = phi ptr [ %.03238.i, %bb.e ], [ %i.ad, %bb.g ], [ %i.ae, %bb.h ] ; 9 uses
  %.0.i = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  store i64 0, ptr %.1.i, align 1
  %i.af = and i32 %0, 255
  %i.ag = shl nuw nsw i32 %.0.i, 8
  %i.ah = or disjoint i32 %i.af, %i.ag
  store i32 %i.ah, ptr %.1.i, align 8
  %i.ai = icmp ult i32 %.0.i, 256
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 29392 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %tcg_op_alloc.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.an, align 8            ; 2 uses
  store ptr %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  store ptr %.1.i, ptr %i.av, align 8
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 29392
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ar, ptr %i.az, align 8
  br label %bb.k

bb.j:                                             ; preds = %tcg_op_alloc.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 29352
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %i.bc, ptr %i.bd, align 8
  store ptr %.1.i, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 29352
  store ptr %i.ba, ptr %i.bf, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret ptr %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @tcg_op_insert_before(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 29360
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i, !prof !14

.preheader.i:                                     ; preds = %bb.a, %bb.f
  %.03238.i = phi ptr [ %i.i, %bb.f ], [ %i.d, %bb.a ] ; 6 uses
  %i.e = load i32, ptr %.03238.i, align 8
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 255
  %.not35.i = icmp ugt i32 %4, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %.03238.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not34.i = icmp eq ptr %i.i, null              ; 2 uses
  br i1 %.not35.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %.03238.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03238.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  br i1 %.not34.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 29368
  store ptr %i.l, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  store ptr %i.o, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.p = load i32, ptr %.03238.i, align 8
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.q, 255
  br label %tcg_op_alloc.exit

bb.f:                                             ; preds = %.preheader.i
  br i1 %.not34.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.f, %bb.a
  %i.s = tail call i32 @llvm.umax.i32(i32 %4, i32 4) ; 3 uses
  %i.t = shl i32 %i.s, 3
  %i.u = add i32 %i.t, 39
  %i.v = sdiv i32 %i.u, 8
  %i.w = shl nsw i32 %i.v, 3                      ; 2 uses
  %i.x = load i64, ptr %i.b, align 8              ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %.loopexit.i
  %i.ad = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.b, i32 noundef %i.w)
  br label %tcg_op_alloc.exit

bb.h:                                             ; preds = %.loopexit.i
  store i64 %i.z, ptr %i.b, align 8
  %i.ae = inttoptr i64 %i.x to ptr
  br label %tcg_op_alloc.exit

tcg_op_alloc.exit:                                ; preds = %bb.e, %bb.g, %bb.h
  %.1.i = phi ptr [ %.03238.i, %bb.e ], [ %i.ad, %bb.g ], [ %i.ae, %bb.h ] ; 7 uses
  %.0.i = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  store i64 0, ptr %.1.i, align 1
  %i.af = and i32 %2, 255
  %i.ag = shl nuw nsw i32 %.0.i, 8
  %i.ah = or disjoint i32 %i.af, %i.ag
  store i32 %i.ah, ptr %.1.i, align 8
  %i.ai = icmp ult i32 %.0.i, 256
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  %5 = trunc i32 %3 to i8
  %6 = getelementptr i8, ptr %.1.i, i64 2
  store i8 %5, ptr %6, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %i.an, ptr %i.ap, align 8
  store ptr %1, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.am, align 8
  store ptr %.1.i, ptr %i.aq, align 8
  store ptr %i.ao, ptr %i.am, align 8
  ret ptr %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @tcg_op_insert_after(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 29360
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i, !prof !14

.preheader.i:                                     ; preds = %bb.a, %bb.f
  %.03238.i = phi ptr [ %i.i, %bb.f ], [ %i.d, %bb.a ] ; 6 uses
  %i.e = load i32, ptr %.03238.i, align 8
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 255
  %.not35.i = icmp ugt i32 %4, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %.03238.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not34.i = icmp eq ptr %i.i, null              ; 2 uses
  br i1 %.not35.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %.03238.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03238.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  br i1 %.not34.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 29368
  store ptr %i.l, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  store ptr %i.o, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.p = load i32, ptr %.03238.i, align 8
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.q, 255
  br label %tcg_op_alloc.exit

bb.f:                                             ; preds = %.preheader.i
  br i1 %.not34.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.f, %bb.a
  %i.s = tail call i32 @llvm.umax.i32(i32 %4, i32 4) ; 3 uses
  %i.t = shl i32 %i.s, 3
  %i.u = add i32 %i.t, 39
  %i.v = sdiv i32 %i.u, 8
  %i.w = shl nsw i32 %i.v, 3                      ; 2 uses
  %i.x = load i64, ptr %i.b, align 8              ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %.loopexit.i
  %i.ad = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.b, i32 noundef %i.w)
  br label %tcg_op_alloc.exit

bb.h:                                             ; preds = %.loopexit.i
  store i64 %i.z, ptr %i.b, align 8
  %i.ae = inttoptr i64 %i.x to ptr
  br label %tcg_op_alloc.exit

tcg_op_alloc.exit:                                ; preds = %bb.e, %bb.g, %bb.h
  %.1.i = phi ptr [ %.03238.i, %bb.e ], [ %i.ad, %bb.g ], [ %i.ae, %bb.h ] ; 7 uses
  %.0.i = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  store i64 0, ptr %.1.i, align 1
  %i.af = and i32 %2, 255
  %i.ag = shl nuw nsw i32 %.0.i, 8
  %i.ah = or disjoint i32 %i.af, %i.ag
  store i32 %i.ah, ptr %.1.i, align 8
  %i.ai = icmp ult i32 %.0.i, 256
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  %5 = trunc i32 %3 to i8
  %6 = getelementptr i8, ptr %.1.i, i64 2
  store i8 %5, ptr %6, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 3 uses
  store ptr %i.an, ptr %i.ao, align 8
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %tcg_op_alloc.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.ap, align 8
  br label %bb.k

bb.j:                                             ; preds = %tcg_op_alloc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 29352
  store ptr %i.ao, ptr %i.aq, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %.1.i, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %i.am, ptr %i.ar, align 8
  ret ptr %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @tcg_gen_code(ptr noundef %0, ptr nofree noundef captures(none) initializes((84, 92)) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [4 x %struct.TCGMovExtend], align 16 ; 15 uses
  %4 = alloca [2 x %struct.TCGMovExtend], align 16 ; 12 uses
  %5 = alloca [2 x %struct.TCGMovExtend], align 16 ; 8 uses
  %i.a = alloca [16 x i64], align 16              ; 37 uses
  %i.b = alloca [16 x i32], align 16              ; 9 uses
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 4
  %.not277 = icmp eq i32 %i.d, 0
  br i1 %.not277, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @qemu_log_in_addr_range(i64 noundef %2) #26
  br i1 %i.e, label %bb.c, label %.critedge, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @qemu_log_trylock() #26    ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.f, i32 noundef 1, ptr noundef nonnull @.str.50) #26 ; 0 uses
  tail call void @tcg_dump_ops(ptr noundef %0, ptr noundef nonnull %i.f, i1 noundef zeroext false)
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.f, i32 noundef 1, ptr noundef nonnull @.str.4) #26 ; 0 uses
  tail call void @qemu_log_unlock(ptr noundef nonnull %i.f) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(384) %i.i, i8 noundef 0, i64 noundef 384, i1 noundef false) #26
  tail call void @tcg_optimize(ptr noundef %0) #26
  tail call fastcc void @reachable_code_pass(ptr noundef %0)
  tail call fastcc void @liveness_pass_0(ptr noundef %0)
  tail call fastcc void @liveness_pass_1(ptr noundef %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.critedge
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 65536
  %.not278 = icmp eq i32 %i.n, 0
  br i1 %.not278, label %.critedge137, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call zeroext i1 @qemu_log_in_addr_range(i64 noundef %2) #26
  br i1 %i.o, label %bb.g, label %.critedge137, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @qemu_log_trylock() #26    ; 5 uses
  %.not132 = icmp eq ptr %i.p, null
  br i1 %.not132, label %.critedge137, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.p, i32 noundef 1, ptr noundef nonnull @.str.51) #26 ; 0 uses
  tail call void @tcg_dump_ops(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i1 noundef zeroext false)
  %i.r = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.p, i32 noundef 1, ptr noundef nonnull @.str.4) #26 ; 0 uses
  tail call void @qemu_log_unlock(ptr noundef nonnull %i.p) #26
  br label %.critedge137

.critedge137:                                     ; preds = %bb.e, %bb.g, %bb.h, %bb.f
  %i.s = tail call fastcc zeroext i1 @liveness_pass_2(ptr noundef nonnull %0)
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge137
  tail call fastcc void @liveness_pass_1(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %.critedge137, %bb.i, %.critedge
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 8
  %.not279 = icmp eq i32 %i.u, 0
  br i1 %.not279, label %.critedge139, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call zeroext i1 @qemu_log_in_addr_range(i64 noundef %2) #26
  br i1 %i.v, label %bb.l, label %.critedge139, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.w = tail call ptr @qemu_log_trylock() #26    ; 5 uses
  %.not133 = icmp eq ptr %i.w, null
  br i1 %.not133, label %.critedge139, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.w, i32 noundef 1, ptr noundef nonnull @.str.52) #26 ; 0 uses
  tail call void @tcg_dump_ops(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i1 noundef zeroext true)
  %i.y = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.w, i32 noundef 1, ptr noundef nonnull @.str.4) #26 ; 0 uses
  tail call void @qemu_log_unlock(ptr noundef nonnull %i.w) #26
  br label %.critedge139

.critedge139:                                     ; preds = %bb.j, %bb.l, %bb.m, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 -1, ptr %i.z, align 4
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %tcg_reg_alloc_start.exit

.lr.ph.i:                                         ; preds = %.critedge139
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 672
  %wide.trip.count.i = zext nneg i32 %i.ab to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %indvars.iv.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 5 uses
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 7
  switch i32 %i.ai, label %bb.s [
    i32 4, label %bb.o
    i32 3, label %bb.p
    i32 2, label %bb.t
    i32 0, label %bb.q
    i32 1, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.0.i = phi i64 [ 0, %bb.q ], [ 512, %bb.n ]
  %i.aj = and i64 %i.af, -274877906945
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2673, ptr noundef nonnull @__func__.tcg_reg_alloc_start, ptr noundef null) #27
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n
  %i.ak = phi i64 [ %i.af, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.aj, %bb.r ]
  %.1.i = phi i64 [ 768, %bb.o ], [ 256, %bb.p ], [ 512, %bb.n ], [ %.0.i, %bb.r ]
  %i.al = and i64 %i.ak, -65281
  %i.am = or i64 %i.al, %.1.i
  store i64 %i.am, ptr %i.ae, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tcg_reg_alloc_start.exit, label %bb.n, !llvm.loop !43

tcg_reg_alloc_start.exit:                         ; preds = %bb.t, %.critedge139
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 29400 ; 33 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.an, i8 noundef 0, i64 noundef 256, i1 noundef false) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  %i.aq = load i64, ptr @tcg_splitwx_diff, align 8
  %i.ar = sub i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  %i.at = select i1 %.not.i, ptr null, ptr %i.as  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 150 uses
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 26
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = zext i16 %i.bd to i32
end_hunk_0
begin_hunk_1_@liveness_pass_1:bb.a

bb.w:                                             ; preds = %.lr.ph483, %bb.z
  %indvars.iv541 = phi i64 [ 0, %.lr.ph483 ], [ %indvars.iv.next542, %bb.z ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv541
  %gep616 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep615, i64 %indvars.iv541
  %i.il = load i64, ptr %gep616, align 8
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = load i32, ptr %i.ik, align 4            ; 2 uses
  %trunc326 = trunc i32 %i.in to i8
  switch i8 %trunc326, label %bb.z [
    i8 0, label %bb.x
    i8 3, label %bb.x
    i8 4, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.io = lshr i32 %i.in, 8
  %i.ip = and i32 %i.io, 255                      ; 2 uses
  %i.iq = icmp samesign ult i32 %i.ip, 6
  br i1 %i.iq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_call_iarg_regs, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = shl nuw i32 1, %i.it
  %i.iv = getelementptr i8, ptr %i.im, i64 48
  %.val352 = load ptr, ptr %i.iv, align 8         ; 2 uses
  %i.iw = load i32, ptr %.val352, align 4
  %i.ix = or i32 %i.iw, %i.iu
  store i32 %i.ix, ptr %.val352, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %exitcond545.not = icmp eq i64 %indvars.iv.next542, %wide.trip.count544
  br i1 %exitcond545.not, label %.thread452, label %bb.w, !llvm.loop !82

la_reset_pref.exit384:                            ; preds = %bb.d
  %i.iy = getelementptr inbounds nuw i8, ptr %.0303505, i64 32
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = inttoptr i64 %i.iz to ptr               ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  store i64 1, ptr %i.jb, align 8
  %i.jc = getelementptr i8, ptr %i.ja, i64 48
  %.val.i383 = load ptr, ptr %i.jc, align 8
  store i32 0, ptr %.val.i383, align 4
  br label %.thread452

bb.aa:                                            ; preds = %bb.d
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %bb.aa
  %.0296 = phi i32 [ 36, %bb.aa ], [ 34, %bb.d ]  ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0303505, i64 32 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0303505, i64 40 ; 3 uses
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = inttoptr i64 %i.jf to ptr
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = icmp eq i64 %i.ji, 1
  %i.jk = load i64, ptr %i.jd, align 8
  %i.jl = inttoptr i64 %i.jk to ptr
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = icmp eq i64 %i.jn, 1                    ; 2 uses
  br i1 %i.jj, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.jo, label %.thread455, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jp = and i32 %i.di, -256
  %i.jq = or disjoint i32 %i.jp, 32
  store i32 %i.jq, ptr %.0303505, align 8
  br label %.loopexit.sink.split

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.jo, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.jr = lshr i32 %i.di, 16
  %i.js = and i32 %i.jr, 255
  %i.jt = tail call zeroext i1 @tcg_op_supported(i32 noundef %.0296, i32 noundef %i.js, i32 noundef 0)
  br i1 %i.jt, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ju = load i32, ptr %.0303505, align 8
  %i.jv = and i32 %i.ju, -256
  %i.jw = or disjoint i32 %i.jv, %.0296
  store i32 %i.jw, ptr %.0303505, align 8
  %i.jx = load i64, ptr %i.je, align 8
  store i64 %i.jx, ptr %i.jd, align 8
  br label %.loopexit.sink.split

bb.ah:                                            ; preds = %bb.d
  %i.jy = load i8, ptr %i.bu, align 8, !range !15, !noundef !16
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ka = and i32 %i.di, -256
  %i.kb = or disjoint i32 %i.ka, 7
  store i32 %i.kb, ptr %.0303505, align 8
  br label %bb.bl

bb.aj:                                            ; preds = %bb.d
  %i.kc = load i8, ptr %i.bu, align 8, !range !15, !noundef !16
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ke = and i32 %i.di, -256
  %i.kf = or disjoint i32 %i.ke, 61
  store i32 %i.kf, ptr %.0303505, align 8
  br label %bb.bl

bb.al:                                            ; preds = %bb.d
  %i.kg = load i8, ptr %i.bu, align 8, !range !15, !noundef !16
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ki = and i32 %i.di, -256
  %i.kj = or disjoint i32 %i.ki, 57
  store i32 %i.kj, ptr %.0303505, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %.0303505, i64 48 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = inttoptr i64 %i.kl to ptr               ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8            ; 2 uses
  %i.ko = and i64 %i.kn, 30064771072
  %i.kp = icmp eq i64 %i.ko, 17179869184
  br i1 %i.kp, label %bb.an, label %bb.bl

bb.an:                                            ; preds = %bb.am
  %i.kq = trunc i64 %i.kn to i32
  %i.kr = lshr i32 %i.kq, 24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = sub i64 0, %i.kt
  %i.kv = tail call ptr @tcg_constant_internal(i32 noundef %i.kr, i64 noundef %i.ku) ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.ao, label %._crit_edge581

bb.ao:                                            ; preds = %bb.an
  %i.kz = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.la = add i32 %.0304504, 1
  %i.lb = load i64, ptr %i.kz, align 8            ; 2 uses
  %i.lc = add i64 %i.lb, 8                        ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = icmp ugt i64 %i.lc, %i.le
  br i1 %i.lf, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.lg = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.kz, i32 noundef 8)
  br label %la_reset_pref.exit388

bb.aq:                                            ; preds = %bb.ao
  store i64 %i.lc, ptr %i.kz, align 8
  %i.lh = inttoptr i64 %i.lb to ptr
  br label %la_reset_pref.exit388

la_reset_pref.exit388:                            ; preds = %bb.aq, %bb.ap
  %.0.i385 = phi ptr [ %i.lg, %bb.ap ], [ %i.lh, %bb.aq ] ; 2 uses
  store ptr %.0.i385, ptr %i.kw, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  store i64 1, ptr %i.li, align 8
  store i32 0, ptr %.0.i385, align 4
  br label %._crit_edge581

._crit_edge581:                                   ; preds = %bb.an, %la_reset_pref.exit388
  %.1305 = phi i32 [ %i.la, %la_reset_pref.exit388 ], [ %.0304504, %bb.an ]
  %.pre-phi = ptrtoint ptr %i.kv to i64
  store i64 %.pre-phi, ptr %i.kk, align 8
  %i.lj = load i32, ptr %.0303505, align 8
  %i.lk = and i32 %i.lj, -256
  %i.ll = or disjoint i32 %i.lk, 7
  store i32 %i.ll, ptr %.0303505, align 8
  br label %bb.bl

bb.ar:                                            ; preds = %bb.d
  %i.lm = load i8, ptr %i.bu, align 8, !range !15, !noundef !16
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lo = and i32 %i.di, -256
  %i.lp = or disjoint i32 %i.lo, 65
  store i32 %i.lp, ptr %.0303505, align 8
  br label %bb.bl

bb.at:                                            ; preds = %bb.d
  %i.lq = load i8, ptr %i.bu, align 8, !range !15, !noundef !16
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %1 = lshr i32 %i.di, 16
  %i.ls = load ptr, ptr %i.f, align 8             ; 7 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 29360
  %i.lu = load ptr, ptr %i.lt, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader.i.i, !prof !14

.preheader.i.i:                                   ; preds = %bb.au, %bb.az
  %.03238.i.i = phi ptr [ %i.ly, %bb.az ], [ %i.lu, %bb.au ] ; 6 uses
  %i.lv = load i32, ptr %.03238.i.i, align 8
  %i.lw = and i32 %i.lv, 65280
  %.not35.i.i = icmp samesign ult i32 %i.lw, 768
  %i.lx = getelementptr inbounds nuw i8, ptr %.03238.i.i, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8            ; 3 uses
  %.not34.i.i = icmp eq ptr %i.ly, null           ; 2 uses
  br i1 %.not35.i.i, label %bb.az, label %bb.av

bb.av:                                            ; preds = %.preheader.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %.03238.i.i, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.03238.i.i, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8            ; 3 uses
  br i1 %.not34.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store ptr %i.mb, ptr %i.mc, align 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 29368
  store ptr %i.mb, ptr %i.md, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.me = load ptr, ptr %i.lz, align 8
  store ptr %i.me, ptr %i.mb, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false)
  %i.mf = load i32, ptr %.03238.i.i, align 8
  %i.mg = and i32 %i.mf, 65280
  %i.mh = or disjoint i32 %i.mg, 7
  br label %tcg_op_insert_before.exit

bb.az:                                            ; preds = %.preheader.i.i
  br i1 %.not34.i.i, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.az, %bb.au
  %i.mi = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.mj = add i64 %i.mi, 64                       ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.ml = load i64, ptr %i.mk, align 8
  %i.mm = icmp ugt i64 %i.mj, %i.ml
  br i1 %i.mm, label %bb.ba, label %bb.bb, !prof !11

bb.ba:                                            ; preds = %.loopexit.i.i
  %i.mn = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.ls, i32 noundef 64)
  br label %tcg_op_insert_before.exit

bb.bb:                                            ; preds = %.loopexit.i.i
  store i64 %i.mj, ptr %i.ls, align 8
  %i.mo = inttoptr i64 %i.mi to ptr
  br label %tcg_op_insert_before.exit

tcg_op_insert_before.exit:                        ; preds = %bb.ay, %bb.ba, %bb.bb
  %.1.i.i = phi ptr [ %.03238.i.i, %bb.ay ], [ %i.mn, %bb.ba ], [ %i.mo, %bb.bb ] ; 10 uses
  %.0.i.i = phi i32 [ %i.mh, %bb.ay ], [ 1031, %bb.ba ], [ 1031, %bb.bb ]
  store i64 0, ptr %.1.i.i, align 1
  store i32 %.0.i.i, ptr %.1.i.i, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ls, i64 56 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8
  %i.mr = add i32 %i.mq, 1
  store i32 %i.mr, ptr %i.mp, align 8
  %2 = trunc i32 %1 to i8
  %3 = getelementptr i8, ptr %.1.i.i, i64 2
  store i8 %2, ptr %3, align 2
  %i.ms = load ptr, ptr %i.dd, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store ptr %i.ms, ptr %i.mu, align 8
  store ptr %.0303505, ptr %i.mt, align 8
  %i.mv = load ptr, ptr %i.dd, align 8
  store ptr %.1.i.i, ptr %i.mv, align 8
  store ptr %i.mt, ptr %i.dd, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %.0303505, i64 32 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store i64 %i.mx, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.0303505, i64 40 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.na, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %.0303505, i64 48 ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  store i64 %i.nd, ptr %i.ne, align 8
  %i.nf = load i32, ptr %.0303505, align 8
  %i.ng = and i32 %i.nf, -256
  %i.nh = or disjoint i32 %i.ng, 7
  store i32 %i.nh, ptr %.0303505, align 8
  %i.ni = load i64, ptr %i.mw, align 8            ; 2 uses
  store i64 %i.ni, ptr %i.mz, align 8
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = load i64, ptr %i.nj, align 8
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = lshr i32 %i.nl, 24
  %i.nn = tail call ptr @tcg_constant_internal(i32 noundef %i.nm, i64 noundef 1)
  %i.no = ptrtoint ptr %i.nn to i64
  store i64 %i.no, ptr %i.nc, align 8
  br label %bb.bl

bb.bc:                                            ; preds = %bb.d
  %i.np = load i8, ptr %i.bu, align 8, !range !15, !noundef !16
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %4 = lshr i32 %i.di, 16
  %i.nr = load ptr, ptr %i.f, align 8             ; 7 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 29360
  %i.nt = load ptr, ptr %i.ns, align 8            ; 2 uses
  %.not.i.i389 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i389, label %.loopexit.i.i397, label %.preheader.i.i390, !prof !14

.preheader.i.i390:                                ; preds = %bb.bd, %bb.bi
  %.03238.i.i391 = phi ptr [ %i.nx, %bb.bi ], [ %i.nt, %bb.bd ] ; 6 uses
  %i.nu = load i32, ptr %.03238.i.i391, align 8
  %i.nv = and i32 %i.nu, 65280
  %.not35.i.i392 = icmp samesign ult i32 %i.nv, 768
  %i.nw = getelementptr inbounds nuw i8, ptr %.03238.i.i391, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8            ; 3 uses
  %.not34.i.i396 = icmp eq ptr %i.nx, null        ; 2 uses
  br i1 %.not35.i.i392, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %.preheader.i.i390
  %i.ny = getelementptr inbounds nuw i8, ptr %.03238.i.i391, i64 8 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.03238.i.i391, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8            ; 3 uses
  br i1 %.not34.i.i396, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store ptr %i.oa, ptr %i.ob, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nr, i64 29368
  store ptr %i.oa, ptr %i.oc, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.od = load ptr, ptr %i.ny, align 8
  store ptr %i.od, ptr %i.oa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ny, i8 0, i64 16, i1 false)
  %i.oe = load i32, ptr %.03238.i.i391, align 8
  %i.of = and i32 %i.oe, 65280
  %i.og = or disjoint i32 %i.of, 57
  br label %tcg_op_insert_before.exit398

bb.bi:                                            ; preds = %.preheader.i.i390
  br i1 %.not34.i.i396, label %.loopexit.i.i397, label %.preheader.i.i390, !llvm.loop !1

.loopexit.i.i397:                                 ; preds = %bb.bi, %bb.bd
  %i.oh = load i64, ptr %i.nr, align 8            ; 2 uses
  %i.oi = add i64 %i.oh, 64                       ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.ok = load i64, ptr %i.oj, align 8
  %i.ol = icmp ugt i64 %i.oi, %i.ok
  br i1 %i.ol, label %bb.bj, label %bb.bk, !prof !11

bb.bj:                                            ; preds = %.loopexit.i.i397
  %i.om = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.nr, i32 noundef 64)
  br label %tcg_op_insert_before.exit398

bb.bk:                                            ; preds = %.loopexit.i.i397
  store i64 %i.oi, ptr %i.nr, align 8
  %i.on = inttoptr i64 %i.oh to ptr
  br label %tcg_op_insert_before.exit398

tcg_op_insert_before.exit398:                     ; preds = %bb.bh, %bb.bj, %bb.bk
  %.1.i.i394 = phi ptr [ %.03238.i.i391, %bb.bh ], [ %i.om, %bb.bj ], [ %i.on, %bb.bk ] ; 10 uses
  %.0.i.i395 = phi i32 [ %i.og, %bb.bh ], [ 1081, %bb.bj ], [ 1081, %bb.bk ]
  store i64 0, ptr %.1.i.i394, align 1
  store i32 %.0.i.i395, ptr %.1.i.i394, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nr, i64 56 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 8
  %i.oq = add i32 %i.op, 1
  store i32 %i.oq, ptr %i.oo, align 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr i8, ptr %.1.i.i394, i64 2
  store i8 %5, ptr %6, align 2
  %i.or = load ptr, ptr %i.dd, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %.1.i.i394, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i.i394, i64 16
  store ptr %i.or, ptr %i.ot, align 8
  store ptr %.0303505, ptr %i.os, align 8
  %i.ou = load ptr, ptr %i.dd, align 8
  store ptr %.1.i.i394, ptr %i.ou, align 8
  store ptr %i.os, ptr %i.dd, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %.0303505, i64 32 ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %.1.i.i394, i64 32
  store i64 %i.ow, ptr %i.ox, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %.0303505, i64 40 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %.1.i.i394, i64 40
  store i64 %i.oz, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %.0303505, i64 48 ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %.1.i.i394, i64 48
  store i64 %i.pc, ptr %i.pd, align 8
  %i.pe = load i32, ptr %.0303505, align 8
  %i.pf = and i32 %i.pe, -256
  %i.pg = or disjoint i32 %i.pf, 7
  store i32 %i.pg, ptr %.0303505, align 8
  %i.ph = load i64, ptr %i.ov, align 8            ; 2 uses
  store i64 %i.ph, ptr %i.oy, align 8
  %i.pi = inttoptr i64 %i.ph to ptr
  %i.pj = load i64, ptr %i.pi, align 8
  %i.pk = trunc i64 %i.pj to i32
  %i.pl = lshr i32 %i.pk, 24
  %i.pm = tail call ptr @tcg_constant_internal(i32 noundef %i.pl, i64 noundef -1)
  %i.pn = ptrtoint ptr %i.pm to i64
  store i64 %i.pn, ptr %i.pb, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.d, %bb.am, %._crit_edge581, %tcg_op_insert_before.exit398, %tcg_op_insert_before.exit, %bb.as, %bb.ak, %bb.ai
  %.2306 = phi i32 [ %.0304504, %bb.d ], [ %.0304504, %bb.ai ], [ %.0304504, %bb.ak ], [ %.1305, %._crit_edge581 ], [ %.0304504, %bb.am ], [ %.0304504, %bb.as ], [ %.0304504, %tcg_op_insert_before.exit ], [ %.0304504, %tcg_op_insert_before.exit398 ] ; 4 uses
  %.0299 = phi ptr [ %i.dh, %bb.d ], [ %i.dh, %bb.ai ], [ %i.dh, %bb.ak ], [ %i.dh, %._crit_edge581 ], [ %i.dh, %bb.am ], [ %i.dh, %bb.as ], [ %.1.i.i, %tcg_op_insert_before.exit ], [ %.1.i.i394, %tcg_op_insert_before.exit398 ] ; 4 uses
  %.0291 = phi i32 [ %i.dj, %bb.d ], [ 7, %bb.ai ], [ 61, %bb.ak ], [ 7, %._crit_edge581 ], [ 57, %bb.am ], [ 65, %bb.as ], [ 7, %tcg_op_insert_before.exit ], [ 7, %tcg_op_insert_before.exit398 ] ; 4 uses
  %i.po = zext nneg i32 %.0291 to i64
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr @tcg_op_defs, i64 %i.po ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  %i.pr = load i16, ptr %i.pq, align 4
  %i.ps = and i16 %i.pr, 8
  %.not332 = icmp eq i16 %i.ps, 0
  br i1 %.not332, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pu = load i8, ptr %i.pt, align 8             ; 2 uses
  %.not333 = icmp eq i8 %i.pu, 0
  br i1 %.not333, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pv = getelementptr inbounds nuw i8, ptr %.0303505, i64 32
  %i.pw = zext i8 %i.pu to i64
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bp
  %i.px = icmp sgt i64 %indvars.iv546631, 1
  br i1 %i.px, label %bb.bp, label %.thread455, !llvm.loop !83

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %indvars.iv546631 = phi i64 [ %i.pw, %bb.bn ], [ %indvars.iv.next547, %bb.bo ] ; 2 uses
  %indvars.iv.next547 = add nsw i64 %indvars.iv546631, -1 ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next547
  %i.pz = load i64, ptr %i.py, align 8
  %i.qa = inttoptr i64 %i.pz to ptr
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  %i.qc = load i64, ptr %i.qb, align 8
  %.not334 = icmp eq i64 %i.qc, 1
  br i1 %.not334, label %bb.bo, label %.loopexit, !llvm.loop !83

.thread455:                                       ; preds = %bb.f, %bb.bo, %.preheader463, %bb.ac
  %.3307 = phi i32 [ %.0304504, %.preheader463 ], [ %.0304504, %bb.ac ], [ %.2306, %bb.bo ], [ %.0304504, %bb.f ]
  %.1300 = phi ptr [ %i.dh, %.preheader463 ], [ %i.dh, %bb.ac ], [ %.0299, %bb.bo ], [ %i.dh, %bb.f ]
  tail call void @tcg_op_remove(ptr noundef %0, ptr noundef nonnull %.0303505)
  br label %.thread452

.loopexit.sink.split:                             ; preds = %bb.ag, %bb.ad
  %.1292.ph = phi i32 [ %.0296, %bb.ag ], [ 32, %bb.ad ]
  %i.qd = getelementptr inbounds nuw i8, ptr %.0303505, i64 48
  %i.qe = load <2 x i64>, ptr %i.qd, align 8
  store <2 x i64> %i.qe, ptr %i.je, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bp, %.loopexit.sink.split, %bb.bl, %bb.bm, %bb.bc, %bb.at, %bb.ar, %bb.al, %bb.aj, %bb.ah, %bb.ae, %bb.af
  %.4308 = phi i32 [ %.2306, %bb.bl ], [ %.0304504, %bb.bc ], [ %.2306, %bb.bm ], [ %.0304504, %bb.at ], [ %.0304504, %.loopexit.sink.split ], [ %.0304504, %bb.af ], [ %.0304504, %bb.ae ], [ %.0304504, %bb.ah ], [ %.0304504, %bb.aj ], [ %.0304504, %bb.al ], [ %.0304504, %bb.ar ], [ %.2306, %bb.bp ] ; 12 uses
  %.2301 = phi ptr [ %.0299, %bb.bl ], [ %i.dh, %bb.bc ], [ %.0299, %bb.bm ], [ %i.dh, %bb.at ], [ %i.dh, %.loopexit.sink.split ], [ %i.dh, %bb.af ], [ %i.dh, %bb.ae ], [ %i.dh, %bb.ah ], [ %i.dh, %bb.aj ], [ %i.dh, %bb.al ], [ %i.dh, %bb.ar ], [ %.0299, %bb.bp ] ; 4 uses
  %.1292 = phi i32 [ %.0291, %bb.bl ], [ 64, %bb.bc ], [ %.0291, %bb.bm ], [ 60, %bb.at ], [ %.1292.ph, %.loopexit.sink.split ], [ %i.dj, %bb.af ], [ %i.dj, %bb.ae ], [ 59, %bb.ah ], [ 62, %bb.aj ], [ 63, %bb.al ], [ 66, %bb.ar ], [ %.0291, %bb.bp ] ; 2 uses
  %i.qf = zext nneg i32 %.1292 to i64
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr @tcg_op_defs, i64 %i.qf ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 9
  %i.qi = load i8, ptr %i.qh, align 1             ; 2 uses
  %i.qj = zext i8 %i.qi to i32
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.ql = load i8, ptr %i.qk, align 8             ; 8 uses
  %i.qm = zext i8 %i.ql to i32
  %.not513 = icmp eq i8 %i.ql, 0
  br i1 %.not513, label %._crit_edge488, label %la_reset_pref.exit400.peel

la_reset_pref.exit400.peel:                       ; preds = %.loopexit
  %i.qn = getelementptr inbounds nuw i8, ptr %.0303505, i64 32 ; 2 uses
  %wide.trip.count552 = zext i8 %i.ql to i64
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = inttoptr i64 %i.qo to ptr               ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0303505, i64 24
  %i.qr = getelementptr i8, ptr %i.qp, i64 48
  %.val351.peel = load ptr, ptr %i.qr, align 8
  %i.qs = load i32, ptr %.val351.peel, align 4
  store i32 %i.qs, ptr %i.qq, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 40 ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 8            ; 2 uses
  %i.qv = trunc i64 %i.qu to i32
  %i.qw = shl i32 %i.qv, 4
  %i.qx = and i32 %i.qw, 16
  %i.qy = trunc i64 %i.qu to i32
  %i.qz = lshr i32 %i.qy, 1
  %i.ra = and i32 %i.qz, 1
  %.9.peel = or disjoint i32 %i.ra, %i.qx         ; 2 uses
  store i64 1, ptr %i.qt, align 8
  %i.rb = getelementptr i8, ptr %i.qp, i64 48
  %.val.i399.peel = load ptr, ptr %i.rb, align 8
  store i32 0, ptr %.val.i399.peel, align 4
  %exitcond553.peel.not = icmp eq i8 %i.ql, 1
  br i1 %exitcond553.peel.not, label %._crit_edge488, label %la_reset_pref.exit400.peel556

la_reset_pref.exit400.peel556:                    ; preds = %la_reset_pref.exit400.peel
  %i.rc = getelementptr inbounds nuw i8, ptr %.0303505, i64 40
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = inttoptr i64 %i.rd to ptr               ; 3 uses
  %i.rf = getelementptr i8, ptr %i.re, i64 48
  %.val351.peel555 = load ptr, ptr %i.rf, align 8
  %i.rg = load i32, ptr %.val351.peel555, align 4
  %i.rh = getelementptr inbounds nuw i8, ptr %.0303505, i64 28
  store i32 %i.rg, ptr %i.rh, align 4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 40 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8            ; 2 uses
  %i.rk = trunc i64 %i.rj to i32
  %i.rl = shl i32 %i.rk, 5
  %i.rm = and i32 %i.rl, 32
  %i.rn = trunc i64 %i.rj to i32
  %i.ro = and i32 %i.rn, 2
  %i.rp = or disjoint i32 %i.ro, %i.rm
  %.9.peel559 = or disjoint i32 %i.rp, %.9.peel   ; 2 uses
  store i64 1, ptr %i.ri, align 8
  %i.rq = getelementptr i8, ptr %i.re, i64 48
  %.val.i399.peel560 = load ptr, ptr %i.rq, align 8
  store i32 0, ptr %.val.i399.peel560, align 4
  %exitcond553.peel562.not = icmp eq i8 %i.ql, 2
  br i1 %exitcond553.peel562.not, label %._crit_edge488, label %la_reset_pref.exit400

._crit_edge488:                                   ; preds = %la_reset_pref.exit400, %la_reset_pref.exit400.peel, %la_reset_pref.exit400.peel556, %.loopexit
  %.7.lcssa = phi i32 [ 0, %.loopexit ], [ %.9.peel559, %la_reset_pref.exit400.peel556 ], [ %.9.peel, %la_reset_pref.exit400.peel ], [ %.9, %la_reset_pref.exit400 ] ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qg, i64 12
  %i.rs = load i16, ptr %i.rr, align 4            ; 4 uses
  %i.rt = zext i16 %i.rs to i32                   ; 4 uses
  %i.ru = and i32 %i.rt, 1
  %.not335 = icmp eq i32 %i.ru, 0
  br i1 %.not335, label %bb.br, label %bb.bq

la_reset_pref.exit400:                            ; preds = %la_reset_pref.exit400.peel556, %la_reset_pref.exit400
  %indvars.iv549 = phi i64 [ %indvars.iv.next550, %la_reset_pref.exit400 ], [ 2, %la_reset_pref.exit400.peel556 ] ; 3 uses
  %.7484 = phi i32 [ %.9, %la_reset_pref.exit400 ], [ %.9.peel559, %la_reset_pref.exit400.peel556 ]
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv549
  %i.rw = load i64, ptr %i.rv, align 8
  %i.rx = inttoptr i64 %i.rw to ptr               ; 3 uses
  %.phi.trans.insert573 = getelementptr i8, ptr %i.rx, i64 48
  %.val.i399.pre = load ptr, ptr %.phi.trans.insert573, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  %i.rz = and i64 %.pre, 1
  %.not346 = icmp eq i64 %i.rz, 0
  %i.sa = trunc nuw nsw i64 %indvars.iv549 to i32 ; 2 uses
  %i.sb = shl i32 16, %i.sa
  %i.sc = select i1 %.not346, i32 0, i32 %i.sb
  %i.sd = and i64 %.pre, 2
  %.not347 = icmp eq i64 %i.sd, 0
  %i.se = shl nuw i32 1, %i.sa
  %i.sf = select i1 %.not347, i32 0, i32 %i.se
  %i.sg = or i32 %i.sf, %.7484
  %.9 = or i32 %i.sg, %i.sc                       ; 2 uses
  store i64 1, ptr %i.ry, align 8
  store i32 0, ptr %.val.i399.pre, align 4
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 2 uses
  %exitcond553.not = icmp eq i64 %indvars.iv.next550, %wide.trip.count552
  br i1 %exitcond553.not, label %._crit_edge488, label %la_reset_pref.exit400, !llvm.loop !84

bb.bq:                                            ; preds = %._crit_edge488
  br i1 %i.x, label %.preheader.i401, label %la_reset_pref.exit.i411.preheader

la_reset_pref.exit.i411.preheader:                ; preds = %bb.bq
  br i1 %i.ce, label %la_reset_pref.exit.i411.epil.preheader, label %la_reset_pref.exit.i411

.preheader.i401.loopexit.unr-lcssa:               ; preds = %la_reset_pref.exit.i411
  br i1 %lcmp.mod666.not, label %.preheader.i401, label %la_reset_pref.exit.i411.epil.preheader

la_reset_pref.exit.i411.epil.preheader:           ; preds = %.preheader.i401.loopexit.unr-lcssa, %la_reset_pref.exit.i411.preheader
  %indvars.iv.i412.epil.init = phi i64 [ 0, %la_reset_pref.exit.i411.preheader ], [ %indvars.iv.next.i414.1, %.preheader.i401.loopexit.unr-lcssa ]
end_hunk_1
begin_hunk_2_@liveness_pass_1:bb.a
  %i.yr = and i32 %i.yq, 255
  %i.ys = lshr i32 %.0303.val, 24
  %i.yt = tail call fastcc nonnull ptr @op_args_ct(i32 noundef %i.yp, i32 noundef %i.yr, i32 noundef %i.ys)
  br i1 %.not514, label %.thread452, label %.lr.ph502

.lr.ph502:                                        ; preds = %bb.cv
  %i.yu = getelementptr inbounds nuw i8, ptr %.0303505, i64 32
  %i.yv = getelementptr inbounds nuw i8, ptr %.0303505, i64 24
  %i.yw = zext i8 %i.ql to i64
  %i.yx = zext nneg i32 %i.wx to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph502, %bb.cz
  %indvars.iv570 = phi i64 [ %i.yw, %.lr.ph502 ], [ %indvars.iv.next571, %bb.cz ] ; 3 uses
  %i.yy = getelementptr inbounds nuw [12 x i8], ptr %i.yt, i64 %indvars.iv570 ; 2 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %indvars.iv570
  %i.za = load i64, ptr %i.yz, align 8
  %i.zb = inttoptr i64 %i.za to ptr
  %i.zc = getelementptr i8, ptr %i.zb, i64 48
  %.val = load ptr, ptr %i.zc, align 8            ; 2 uses
  %i.zd = load i32, ptr %.val, align 4
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.zf = load i32, ptr %i.ze, align 4            ; 2 uses
  %i.zg = and i32 %i.zf, %i.zd                    ; 2 uses
  %i.zh = load i64, ptr %i.yy, align 4            ; 2 uses
  %i.zi = and i64 %i.zh, 2147483648
  %.not342 = icmp eq i64 %i.zi, 0
  br i1 %.not342, label %output_pref.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.zj = trunc i64 %i.zh to i32
  %i.zk = lshr i32 %i.zj, 16
  %i.zl = and i32 %i.zk, 15                       ; 2 uses
  %i.zm = icmp samesign ult i32 %i.zl, 2
  br i1 %i.zm, label %bb.cy, label %output_pref.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.zn = zext nneg i32 %i.zl to i64
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %i.zn
  %i.zp = load i32, ptr %i.zo, align 4
  %i.zq = and i32 %i.zp, %i.zg
  br label %output_pref.exit

output_pref.exit:                                 ; preds = %bb.cy, %bb.cw
  %.0 = phi i32 [ %i.zg, %bb.cw ], [ %i.zq, %bb.cy ]
  %.0.fr = freeze i32 %.0                         ; 2 uses
  %i.zr = icmp eq i32 %.0.fr, 0
  br i1 %i.zr, label %output_pref.exit.thread, label %bb.cz

output_pref.exit.thread:                          ; preds = %bb.cx, %output_pref.exit
  br label %bb.cz

bb.cz:                                            ; preds = %output_pref.exit, %output_pref.exit.thread
  %i.zs = phi i32 [ %i.zf, %output_pref.exit.thread ], [ %.0.fr, %output_pref.exit ]
  store i32 %i.zs, ptr %.val, align 4
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.zt = icmp samesign ult i64 %indvars.iv.next571, %i.yx
  br i1 %i.zt, label %bb.cw, label %.thread452, !llvm.loop !90

.thread452:                                       ; preds = %bb.z, %bb.cz, %bb.d, %la_cross_call.exit, %bb.cv, %bb.cu, %bb.ct, %.thread455, %la_reset_pref.exit384
  %.5309 = phi i32 [ %.4308, %bb.cu ], [ %.4308, %bb.ct ], [ %.0304504, %la_reset_pref.exit384 ], [ %.3307, %.thread455 ], [ %.4308, %bb.cv ], [ %.4308, %bb.cz ], [ %.0304504, %bb.d ], [ %.0304504, %la_cross_call.exit ], [ %.0304504, %bb.z ]
  %.3302 = phi ptr [ %.2301, %bb.cu ], [ %.2301, %bb.ct ], [ %i.dh, %la_reset_pref.exit384 ], [ %.1300, %.thread455 ], [ %.2301, %bb.cv ], [ %.2301, %bb.cz ], [ %i.dh, %bb.d ], [ %i.dh, %la_cross_call.exit ], [ %i.dh, %bb.z ] ; 2 uses
  %.12 = phi i32 [ %.10.lcssa, %bb.cu ], [ %.10.lcssa, %bb.ct ], [ 0, %la_reset_pref.exit384 ], [ 0, %.thread455 ], [ %.10.lcssa, %bb.cv ], [ %.10.lcssa, %bb.cz ], [ 0, %bb.d ], [ %.3.lcssa, %la_cross_call.exit ], [ %.3.lcssa, %bb.z ]
  %i.zu = getelementptr inbounds nuw i8, ptr %.0303505, i64 4
  store i32 %.12, ptr %i.zu, align 4
  %.not = icmp eq ptr %.3302, null
  br i1 %.not, label %.critedge, label %bb.d, !llvm.loop !91

.critedge:                                        ; preds = %.thread452, %la_func_end.exit
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc zeroext i1 @liveness_pass_2(ptr noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv ; 6 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 34359738368
  %.not177 = icmp eq i64 %i.h, 0
  br i1 %.not177, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8              ; 3 uses
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.e, align 8
  %i.k = icmp sgt i32 %i.i, 511
  br i1 %i.k, label %bb.d, label %tcg_temp_alloc.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @tcg_raise_tb_overflow(ptr noundef nonnull %0) #28
  unreachable

tcg_temp_alloc.exit:                              ; preds = %bb.c
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [56 x i8], ptr %i.d, i64 %i.l ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.m, i8 noundef 0, i64 noundef 56, i1 noundef false) #26
  %i.n = load i64, ptr %i.f, align 8
  %i.o = and i64 %i.n, 4278190080                 ; 2 uses
  store i64 %i.o, ptr %i.m, align 8
  %i.p = load i64, ptr %i.f, align 8
  %i.q = and i64 %i.p, 16711680
  %i.r = or disjoint i64 %i.o, %i.q               ; 2 uses
  store i64 %i.r, ptr %i.m, align 8
  %i.s = load i64, ptr %i.f, align 8
  %i.t = and i64 %i.s, 3298534883328
  %i.u = or disjoint i64 %i.r, %i.t
  store i64 %i.u, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %tcg_temp_alloc.exit
  %.sink = phi ptr [ %i.m, %tcg_temp_alloc.exit ], [ null, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.sink, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 1, ptr %i.w, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0148.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp slt i32 %.0148.lcssa, %i.y
  br i1 %i.z, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.ab = zext nneg i32 %.0148.lcssa to i64       ; 4 uses
  %wide.trip.count240 = zext nneg i32 %i.y to i64 ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count240, %i.ab
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph205, %.prol.preheader
  %indvars.iv237.prol = phi i64 [ %indvars.iv.next238.prol, %.prol.preheader ], [ %i.ab, %.lr.ph205 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph205 ]
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237.prol ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 1, ptr %i.af, align 8
  %indvars.iv.next238.prol = add nuw nsw i64 %indvars.iv237.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !93

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph205
  %indvars.iv237.unr = phi i64 [ %i.ab, %.lr.ph205 ], [ %indvars.iv.next238.prol, %.prol.preheader ]
  %i.ag = sub nsw i64 %i.ab, %wide.trip.count240
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge206, label %.lr.ph205.new

.lr.ph205.new:                                    ; preds = %.prol.loopexit, %.lr.ph205.new
  %indvars.iv237 = phi i64 [ %indvars.iv.next238.3, %.lr.ph205.new ], [ %indvars.iv237.unr, %.prol.loopexit ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store i64 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  store i64 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 216
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  store i64 1, ptr %i.at, align 8
  %indvars.iv.next238.3 = add nuw nsw i64 %indvars.iv237, 4 ; 2 uses
  %exitcond241.not.3 = icmp eq i64 %indvars.iv.next238.3, %wide.trip.count240
  br i1 %exitcond241.not.3, label %._crit_edge206, label %.lr.ph205.new, !llvm.loop !94

._crit_edge206:                                   ; preds = %.prol.loopexit, %.lr.ph205.new, %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 29344
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not224 = icmp eq ptr %i.av, null
  br i1 %.not224, label %.critedge, label %.lr.ph228

.lr.ph228:                                        ; preds = %._crit_edge206
  %i.aw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 29352 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph228, %.loopexit
  %.0149226 = phi i1 [ false, %.lr.ph228 ], [ %.5154, %.loopexit ] ; 2 uses
  %.0155225 = phi ptr [ %i.av, %.lr.ph228 ], [ %i.az, %.loopexit ] ; 11 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0155225, i64 8 ; 7 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load i32, ptr %.0155225, align 8        ; 3 uses
  %i.bb = and i32 %i.ba, 255                      ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0155225, i64 4
  %i.bd = load i32, ptr %i.bc, align 4            ; 6 uses
  %i.be = icmp eq i32 %i.bb, 2
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = lshr i32 %i.ba, 24
  %i.bg = lshr i32 %i.ba, 16
  %i.bh = and i32 %i.bg, 255
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bi = zext nneg i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr @tcg_op_defs, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = zext i8 %i.bo to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0147 = phi i32 [ %i.bh, %bb.g ], [ %i.bm, %bb.h ] ; 2 uses
  %.0146 = phi i32 [ %i.bf, %bb.g ], [ %i.bp, %bb.h ] ; 5 uses
  %i.bq = add nuw nsw i32 %.0146, %.0147          ; 2 uses
  %.not230 = icmp eq i32 %.0147, 0
  br i1 %.not230, label %.loopexit195, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0155225, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %.0155225, i64 16 ; 3 uses
  %i.bt = zext nneg i32 %.0146 to i64
  %i.bu = zext nneg i32 %i.bq to i64
  br label %bb.j

.lr.ph213:                                        ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %.0155225, i64 32
  %i.bw = zext nneg i32 %.0146 to i64
  %i.bx = zext nneg i32 %i.bq to i64
  br label %bb.z

bb.j:                                             ; preds = %.lr.ph209, %bb.y
  %indvars.iv242 = phi i64 [ %i.bt, %.lr.ph209 ], [ %indvars.iv.next243, %bb.y ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv242
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not176 = icmp eq ptr %i.cc, null
  br i1 %.not176, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.cg = load i64, ptr %i.ca, align 8
  %i.ch = load ptr, ptr %i.aw, align 8            ; 10 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 29360
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader.i.i, !prof !14

.preheader.i.i:                                   ; preds = %bb.l, %bb.q
  %.03238.i.i = phi ptr [ %i.cn, %bb.q ], [ %i.cj, %bb.l ] ; 6 uses
  %i.ck = load i32, ptr %.03238.i.i, align 8
  %i.cl = and i32 %i.ck, 65280
  %.not35.i.i = icmp samesign ult i32 %i.cl, 768
  %i.cm = getelementptr inbounds nuw i8, ptr %.03238.i.i, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %.not34.i.i = icmp eq ptr %i.cn, null           ; 2 uses
  br i1 %.not35.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.preheader.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.03238.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.03238.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  br i1 %.not34.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.cq, ptr %i.cr, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 29368
  store ptr %i.cq, ptr %i.cs, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ct = load ptr, ptr %i.co, align 8
  store ptr %i.ct, ptr %i.cq, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %i.cu = load i32, ptr %.03238.i.i, align 8
  %i.cv = and i32 %i.cu, 65280
  %i.cw = or disjoint i32 %i.cv, 30
  br label %tcg_op_insert_before.exit

bb.q:                                             ; preds = %.preheader.i.i
  br i1 %.not34.i.i, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.q, %bb.l
  %i.cx = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cy = add i64 %i.cx, 64                       ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp ugt i64 %i.cy, %i.da
  br i1 %i.db, label %bb.r, label %bb.x, !prof !11

bb.r:                                             ; preds = %.loopexit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not.i187 = icmp eq ptr %i.dd, null
  br i1 %.not.i187, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not39.i = icmp eq ptr %i.df, null
  br i1 %.not39.i, label %bb.u, label %tcg_malloc_internal.exit

bb.t:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.dd, align 16           ; 2 uses
  %.not40.i = icmp eq ptr %i.dg, null
  br i1 %.not40.i, label %bb.u, label %tcg_malloc_internal.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dh = tail call noalias dereferenceable_or_null(32784) ptr @g_malloc(i64 noundef 32784) #29 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 32768, ptr %i.di, align 8
  store ptr null, ptr %i.dh, align 16
  %i.dj = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not41.i = icmp eq ptr %i.dj, null
  br i1 %.not41.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.dh, ptr %i.dj, align 16
  br label %tcg_malloc_internal.exit

bb.w:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.dh, ptr %i.dk, align 8
  br label %tcg_malloc_internal.exit

tcg_malloc_internal.exit:                         ; preds = %bb.s, %bb.t, %bb.v, %bb.w
  %.0.i = phi ptr [ %i.df, %bb.s ], [ %i.dh, %bb.v ], [ %i.dh, %bb.w ], [ %i.dg, %bb.t ] ; 3 uses
  store ptr %.0.i, ptr %i.dc, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dn = add i64 %i.dm, 64
  store i64 %i.dn, ptr %i.ch, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = sext i32 %i.dp to i64
  %i.dr = add i64 %i.dq, %i.dm
  store i64 %i.dr, ptr %i.cz, align 8
  br label %tcg_op_insert_before.exit

bb.x:                                             ; preds = %.loopexit.i.i
  store i64 %i.cy, ptr %i.ch, align 8
  %i.ds = inttoptr i64 %i.cx to ptr
  br label %tcg_op_insert_before.exit

tcg_op_insert_before.exit:                        ; preds = %bb.p, %tcg_malloc_internal.exit, %bb.x
  %.1.i.i = phi ptr [ %.03238.i.i, %bb.p ], [ %i.dl, %tcg_malloc_internal.exit ], [ %i.ds, %bb.x ] ; 9 uses
  %.0.i.i = phi i32 [ %i.cw, %bb.p ], [ 1054, %tcg_malloc_internal.exit ], [ 1054, %bb.x ]
  store i64 0, ptr %.1.i.i, align 1
  store i32 %.0.i.i, ptr %.1.i.i, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ch, i64 56 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 8
  %1 = lshr i64 %i.cg, 24
  %2 = trunc i64 %1 to i8
  %3 = getelementptr i8, ptr %.1.i.i, i64 2
  store i8 %2, ptr %3, align 2
  %i.dw = load ptr, ptr %i.bs, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store ptr %i.dw, ptr %i.dy, align 8
  store ptr %.0155225, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.bs, align 8
  store ptr %.1.i.i, ptr %i.dz, align 8
  store ptr %i.dx, ptr %i.bs, align 8
  %i.ea = ptrtoint ptr %i.cc to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store i64 %i.ea, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  store i64 %i.eh, ptr %i.ei, align 8
  store i64 2, ptr %i.cd, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.k, %tcg_op_insert_before.exit
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %i.ej = icmp samesign ult i64 %indvars.iv.next243, %i.bu
  br i1 %i.ej, label %bb.j, label %.lr.ph213, !llvm.loop !95

bb.z:                                             ; preds = %.lr.ph213, %bb.ac
  %indvars.iv245 = phi i64 [ %i.bw, %.lr.ph213 ], [ %indvars.iv.next246, %bb.ac ] ; 3 uses
  %.1150211 = phi i1 [ %.0149226, %.lr.ph213 ], [ %.2151, %bb.ac ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv245 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = inttoptr i64 %i.el to ptr               ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not174 = icmp eq ptr %i.eo, null
  br i1 %.not174, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = ptrtoint ptr %i.eo to i64
  store i64 %i.ep, ptr %i.ek, align 8
  %i.eq = trunc nuw nsw i64 %indvars.iv245 to i32
  %i.er = shl i32 16, %i.eq
  %i.es = and i32 %i.er, %i.bd
  %.not175 = icmp eq i32 %i.es, 0
  br i1 %.not175, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store i64 1, ptr %i.et, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa
  %.2151 = phi i1 [ true, %bb.ab ], [ true, %bb.aa ], [ %.1150211, %bb.z ] ; 2 uses
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.eu = icmp samesign ult i64 %indvars.iv.next246, %i.bx
  br i1 %i.eu, label %bb.z, label %.loopexit195, !llvm.loop !96

.loopexit195:                                     ; preds = %bb.ac, %bb.i
  %.1150.lcssa = phi i1 [ %.0149226, %bb.i ], [ %.2151, %bb.ac ] ; 3 uses
  %i.ev = icmp eq i32 %i.bb, 6
  br i1 %i.ev, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %.loopexit195
  %.not232 = icmp eq i32 %.0146, 0
  br i1 %.not232, label %.loopexit, label %.lr.ph222

.lr.ph222:                                        ; preds = %.preheader
  %i.ew = getelementptr inbounds nuw i8, ptr %.0155225, i64 32
  %wide.trip.count259 = zext nneg i32 %.0146 to i64
  br label %bb.ak

bb.ad:                                            ; preds = %.loopexit195
  %i.ex = getelementptr inbounds nuw i8, ptr %.0155225, i64 32 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = inttoptr i64 %i.ey to ptr               ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not170 = icmp eq ptr %i.fb, null
  br i1 %.not170, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fc = ptrtoint ptr %i.fb to i64               ; 2 uses
  store i64 %i.fc, ptr %i.ex, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 40 ; 3 uses
  store i64 0, ptr %i.fd, align 8
  %i.fe = and i32 %i.bd, 1
  %.not171 = icmp eq i32 %i.fe, 0
  br i1 %.not171, label %bb.aj, label %4

4:                                                ; preds = %bb.ae
  %5 = load i64, ptr %i.ez, align 8
  %6 = load ptr, ptr %i.aw, align 8               ; 7 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 29360
  %8 = load ptr, ptr %7, align 8                  ; 2 uses
  %.not.i.i178 = icmp eq ptr %8, null
  br i1 %.not.i.i178, label %.loopexit.i.i186, label %.preheader.i.i179, !prof !14

.preheader.i.i179:                                ; preds = %4, %26
  %.03238.i.i180 = phi ptr [ %12, %26 ], [ %8, %4 ] ; 6 uses
  %9 = load i32, ptr %.03238.i.i180, align 8
  %10 = and i32 %9, 65280
  %.not35.i.i181 = icmp samesign ult i32 %10, 768
  %11 = getelementptr inbounds nuw i8, ptr %.03238.i.i180, i64 8
  %12 = load ptr, ptr %11, align 8                ; 3 uses
  %.not34.i.i185 = icmp eq ptr %12, null          ; 2 uses
  br i1 %.not35.i.i181, label %26, label %13

13:                                               ; preds = %.preheader.i.i179
  %14 = getelementptr inbounds nuw i8, ptr %.03238.i.i180, i64 8 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.03238.i.i180, i64 16
  %16 = load ptr, ptr %15, align 8                ; 3 uses
  br i1 %.not34.i.i185, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %16, ptr %18, align 8
  br label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 29368
  store ptr %16, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load ptr, ptr %14, align 8
  store ptr %22, ptr %16, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %23 = load i32, ptr %.03238.i.i180, align 8
  %24 = and i32 %23, 65280
  %25 = or disjoint i32 %24, 56
  br label %bb.af

26:                                               ; preds = %.preheader.i.i179
  br i1 %.not34.i.i185, label %.loopexit.i.i186, label %.preheader.i.i179, !llvm.loop !1

.loopexit.i.i186:                                 ; preds = %26, %4
  %27 = load i64, ptr %6, align 8                 ; 2 uses
  %28 = add i64 %27, 64                           ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %30 = load i64, ptr %29, align 8
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %34, !prof !11

32:                                               ; preds = %.loopexit.i.i186
  %33 = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %6, i32 noundef 64)
  br label %bb.af

34:                                               ; preds = %.loopexit.i.i186
  store i64 %28, ptr %6, align 8
  %35 = inttoptr i64 %27 to ptr
  br label %bb.af

bb.af:                                            ; preds = %34, %32, %21
  %.1.i.i183 = phi ptr [ %.03238.i.i180, %21 ], [ %33, %32 ], [ %35, %34 ] ; 9 uses
  %.0.i.i184 = phi i32 [ %25, %21 ], [ 1080, %32 ], [ 1080, %34 ]
  store i64 0, ptr %.1.i.i183, align 1
  store i32 %.0.i.i184, ptr %.1.i.i183, align 8
  %36 = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  %39 = lshr i64 %5, 24
  %40 = trunc i64 %39 to i8
  %41 = getelementptr i8, ptr %.1.i.i183, i64 2
  store i8 %40, ptr %41, align 2
  %42 = load ptr, ptr %i.ay, align 8              ; 3 uses
  %43 = getelementptr inbounds nuw i8, ptr %.1.i.i183, i64 8 ; 3 uses
  store ptr %42, ptr %43, align 8
  %.not173.a = icmp eq ptr %42, null
  br i1 %.not173.a, label %46, label %44

44:                                               ; preds = %bb.af
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %43, ptr %45, align 8
  br label %tcg_op_insert_after.exit

46:                                               ; preds = %bb.af
  store ptr %43, ptr %i.ax, align 8
  br label %tcg_op_insert_after.exit

tcg_op_insert_after.exit:                         ; preds = %44, %46
  store ptr %.1.i.i183, ptr %i.ay, align 8
  %47 = getelementptr inbounds nuw i8, ptr %.1.i.i183, i64 16
  store ptr %i.ay, ptr %47, align 8
  %48 = and i32 %i.bd, 16
  %.not173 = icmp eq i32 %48, 0
  br i1 %.not173, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %tcg_op_insert_after.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %.0155225, i64 40
  %i.fg = load i64, ptr %i.ff, align 8
  store i64 1, ptr %i.fd, align 8
  tail call void @tcg_op_remove(ptr noundef %0, ptr noundef nonnull %.0155225)
  br label %bb.ai

bb.ah:                                            ; preds = %tcg_op_insert_after.exit
  store i64 2, ptr %i.fd, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0 = phi i64 [ %i.fg, %bb.ag ], [ %i.fc, %bb.ah ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.1.i.i183, i64 32
  store i64 %.0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.1.i.i183, i64 40
  store i64 %i.fk, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.i.i183, i64 48
  store i64 %i.fn, ptr %i.fo, align 8
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ae
  %i.fp = and i32 %i.bd, 16
  %.not172 = icmp eq i32 %i.fp, 0
  tail call void @llvm.assume(i1 %.not172)
  br label %.loopexit

bb.ak:                                            ; preds = %.lr.ph222, %bb.bd
  %indvars.iv257 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next258, %bb.bd ] ; 3 uses
  %.3152220 = phi i1 [ %.1150.lcssa, %.lr.ph222 ], [ %.4153, %bb.bd ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv257 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = inttoptr i64 %i.fr to ptr               ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not167 = icmp eq ptr %i.fu, null
  br i1 %.not167, label %bb.bd, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  store i64 %i.fv, ptr %i.fq, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 3 uses
  store i64 0, ptr %i.fw, align 8
  %i.fx = trunc nuw nsw i64 %indvars.iv257 to i32 ; 2 uses
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = and i32 %i.fy, %i.bd
  %.not168 = icmp eq i32 %i.fz, 0
  br i1 %.not168, label %bb.bb, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ga = load i64, ptr %i.fs, align 8
  %i.gb = load ptr, ptr %i.aw, align 8            ; 10 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 29360
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %.not.i.i178.a = icmp eq ptr %i.gd, null
  br i1 %.not.i.i178.a, label %.loopexit.i.i186.a, label %.preheader.i.i179.a, !prof !14

.preheader.i.i179.a:                              ; preds = %bb.am, %bb.ar
  %.03238.i.i180.a = phi ptr [ %i.gh, %bb.ar ], [ %i.gd, %bb.am ] ; 6 uses
  %i.ge = load i32, ptr %.03238.i.i180.a, align 8
  %i.gf = and i32 %i.ge, 65280
  %.not35.i.i181.a = icmp samesign ult i32 %i.gf, 768
  %i.gg = getelementptr inbounds nuw i8, ptr %.03238.i.i180.a, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8            ; 3 uses
  %.not34.i.i185.a = icmp eq ptr %i.gh, null      ; 2 uses
  br i1 %.not35.i.i181.a, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.preheader.i.i179.a
  %i.gi = getelementptr inbounds nuw i8, ptr %.03238.i.i180.a, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.03238.i.i180.a, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8            ; 3 uses
  br i1 %.not34.i.i185.a, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr %i.gk, ptr %i.gl, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 29368
  store ptr %i.gk, ptr %i.gm, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gn = load ptr, ptr %i.gi, align 8
  store ptr %i.gn, ptr %i.gk, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false)
  %i.go = load i32, ptr %.03238.i.i180.a, align 8
  %i.gp = and i32 %i.go, 65280
  %i.gq = or disjoint i32 %i.gp, 56
  br label %tcg_op_alloc.exit.i

bb.ar:                                            ; preds = %.preheader.i.i179.a
  br i1 %.not34.i.i185.a, label %.loopexit.i.i186.a, label %.preheader.i.i179.a, !llvm.loop !1

.loopexit.i.i186.a:                               ; preds = %bb.ar, %bb.am
  %i.gr = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.gs = add i64 %i.gr, 64                       ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = icmp ugt i64 %i.gs, %i.gu
  br i1 %i.gv, label %bb.as, label %bb.ay, !prof !11

bb.as:                                            ; preds = %.loopexit.i.i186.a
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %.not.i188 = icmp eq ptr %i.gx, null
  br i1 %.not.i188, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not39.i192 = icmp eq ptr %i.gz, null
  br i1 %.not39.i192, label %bb.av, label %tcg_malloc_internal.exit193

bb.au:                                            ; preds = %bb.as
  %i.ha = load ptr, ptr %i.gx, align 16           ; 2 uses
  %.not40.i189 = icmp eq ptr %i.ha, null
  br i1 %.not40.i189, label %bb.av, label %tcg_malloc_internal.exit193

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hb = tail call noalias dereferenceable_or_null(32784) ptr @g_malloc(i64 noundef 32784) #29 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 32768, ptr %i.hc, align 8
  store ptr null, ptr %i.hb, align 16
  %i.hd = load ptr, ptr %i.gw, align 8            ; 2 uses
  %.not41.i191 = icmp eq ptr %i.hd, null
  br i1 %.not41.i191, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.hb, ptr %i.hd, align 16
  br label %tcg_malloc_internal.exit193

bb.ax:                                            ; preds = %bb.av
  %i.he = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store ptr %i.hb, ptr %i.he, align 8
  br label %tcg_malloc_internal.exit193

tcg_malloc_internal.exit193:                      ; preds = %bb.at, %bb.au, %bb.aw, %bb.ax
  %.0.i190 = phi ptr [ %i.gz, %bb.at ], [ %i.hb, %bb.aw ], [ %i.hb, %bb.ax ], [ %i.ha, %bb.au ] ; 3 uses
  store ptr %.0.i190, ptr %i.gw, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i190, i64 16 ; 2 uses
  %i.hg = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hh = add i64 %i.hg, 64
  store i64 %i.hh, ptr %i.gb, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.i190, i64 8
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = sext i32 %i.hj to i64
  %i.hl = add i64 %i.hk, %i.hg
  store i64 %i.hl, ptr %i.gt, align 8
  br label %tcg_op_alloc.exit.i

bb.ay:                                            ; preds = %.loopexit.i.i186.a
  store i64 %i.gs, ptr %i.gb, align 8
  %i.hm = inttoptr i64 %i.gr to ptr
  br label %tcg_op_alloc.exit.i

tcg_op_alloc.exit.i:                              ; preds = %bb.ay, %tcg_malloc_internal.exit193, %bb.aq
  %.1.i.i183.a = phi ptr [ %.03238.i.i180.a, %bb.aq ], [ %i.hf, %tcg_malloc_internal.exit193 ], [ %i.hm, %bb.ay ] ; 9 uses
  %.0.i.i184.a = phi i32 [ %i.gq, %bb.aq ], [ 1080, %tcg_malloc_internal.exit193 ], [ 1080, %bb.ay ]
  store i64 0, ptr %.1.i.i183.a, align 1
  store i32 %.0.i.i184.a, ptr %.1.i.i183.a, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gb, i64 56 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 8
  %49 = lshr i64 %i.ga, 24
  %50 = trunc i64 %49 to i8
  %51 = getelementptr i8, ptr %.1.i.i183.a, i64 2
  store i8 %50, ptr %51, align 2
  %i.hq = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1.i.i183.a, i64 8 ; 3 uses
  store ptr %i.hq, ptr %i.hr, align 8
  %.not.i = icmp eq ptr %i.hq, null
  br i1 %.not.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %tcg_op_alloc.exit.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store ptr %i.hr, ptr %i.hs, align 8
  br label %tcg_op_insert_after.exit.a

bb.ba:                                            ; preds = %tcg_op_alloc.exit.i
  store ptr %i.hr, ptr %i.ax, align 8
  br label %tcg_op_insert_after.exit.a

tcg_op_insert_after.exit.a:                       ; preds = %bb.az, %bb.ba
  store ptr %.1.i.i183.a, ptr %i.ay, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.1.i.i183.a, i64 16
  store ptr %i.ay, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i.i183.a, i64 32
  store i64 %i.fv, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %.1.i.i183.a, i64 40
  store i64 %i.hx, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %.1.i.i183.a, i64 48
  store i64 %i.ia, ptr %i.ib, align 8
  store i64 2, ptr %i.fw, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %tcg_op_insert_after.exit.a, %bb.al
  %i.ic = shl i32 16, %i.fx
  %i.id = and i32 %i.ic, %i.bd
  %.not169 = icmp eq i32 %i.id, 0
  br i1 %.not169, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i64 1, ptr %i.fw, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ak
  %.4153 = phi i1 [ true, %bb.bc ], [ true, %bb.bb ], [ %.3152220, %bb.ak ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count259
  br i1 %exitcond260.not, label %.loopexit, label %bb.ak, !llvm.loop !97

.loopexit:                                        ; preds = %bb.bd, %.preheader, %bb.ad, %bb.aj, %bb.ai
  %.5154 = phi i1 [ true, %bb.ai ], [ true, %bb.aj ], [ %.1150.lcssa, %bb.ad ], [ %.1150.lcssa, %.preheader ], [ %.4153, %bb.bd ] ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %.critedge, label %bb.f, !llvm.loop !98

.critedge:                                        ; preds = %.loopexit, %._crit_edge206
  %.0149.lcssa = phi i1 [ false, %._crit_edge206 ], [ %.5154, %.loopexit ]
  ret i1 %.0149.lcssa
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @__jit_debug_register_code() local_unnamed_addr #13 {
bb.a:
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !99
  ret void
}

declare void @tcg_gen_shri_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @tcg_gen_shli_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @tcg_gen_and_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @vec_gen_4(i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @tcg_gen_cmp_vec(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @vec_gen_3(i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @tcg_gen_sari_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @tcg_gen_or_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_dup_i32_vec(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_rotlv_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_neg_i32(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_andi_i32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @tcg_gen_shls_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_shrs_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_dupi_vec(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @tcg_gen_sub_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_shlv_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_shrv_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @tcg_gen_mul_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @expand_vec_cond(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @cpuinfo, align 4
  %i.c = and i32 %i.b, 22528
  %or.cond25 = icmp ne i32 %i.c, 22528
  %i.d = and i32 %4, 10
  %i.e = icmp eq i32 %i.d, 10
  %or.cond27 = and i1 %i.e, %or.cond25
  br i1 %or.cond27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %2, align 8
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = sub i64 %i.f, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %3, align 8
  %i.m = sub i64 %i.l, %i.i
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @tcg_temp_new_internal(i32 noundef %0, i32 noundef 0)
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call ptr @tcg_temp_new_internal(i32 noundef %0, i32 noundef 0)
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call ptr @tcg_constant_internal(i32 noundef %0, i64 noundef -9223372036854775808)
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  tail call void @tcg_gen_sub_vec(i32 noundef 3, ptr noundef %i.t, ptr noundef %i.k, ptr noundef %i.af) #26
  tail call void @tcg_gen_sub_vec(i32 noundef 3, ptr noundef %i.z, ptr noundef %i.n, ptr noundef %i.af) #26
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  %i.ai = ptrtoint ptr %i.ah to i64
  store i64 %i.ai, ptr %2, align 8
  %i.aj = load ptr, ptr %i.g, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.y
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %3, align 8
  %i.am = add nsw i32 %4, -8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %4, %bb.b ], [ %i.am, %bb.c ], [ %4, %bb.a ]
  ret i32 %.0
}

declare void @vec_gen_6(i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @init_call_layout(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.d
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, -71776119061217281
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = and i64 %i.b, 281474976710655
  %i.g = or disjoint i64 %i.f, 281474976710656
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 281474976710655
  %i.i = or disjoint i64 %i.h, 562949953421312
end_hunk_2
