Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cs4231a?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cs_reset_voices:bb.a
  %i.bb = load ptr, ptr %i.af, align 8
  call void @audio_be_set_active_out(ptr noundef %i.ba, ptr noundef %i.bb, i1 noundef zeroext false) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.al, align 4
  br label %bb.t

bb.r:                                             ; preds = %bb.j, %bb.i, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.bd = load i32, ptr %i.bc, align 4
  %.not44 = icmp eq i32 %i.bd, 0
  br i1 %.not44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.bi = load i32, ptr %i.bh, align 4
  tail call void %i.bf(ptr noundef %i.bg, i32 noundef %i.bi) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bk = load ptr, ptr %i.bj, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.bk, ptr noundef %i.bm, i1 noundef zeroext false) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @ISADMA_GET_CLASS(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 23, ptr noundef nonnull @__func__.ISADMA_GET_CLASS) #9
  ret ptr %i.b
}

declare void @audio_be_set_active_out(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @audio_be_open_out(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @cs_audio_callback(ptr nofree noundef writeonly captures(none) initializes((584, 588)) %0, i32 noundef %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 %1, ptr %i.a, align 8
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cs4231a_realizefn(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17, i32 noundef 14, ptr noundef nonnull @__func__.ISA_DEVICE) #9 ; 2 uses
  %i.b = tail call ptr @isa_bus_from_device(ptr noundef %i.a) #9 ; 2 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 68, ptr noundef nonnull @.str.1) #9 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 556 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call ptr @isa_bus_get_dma(ptr noundef %i.b, i32 noundef %i.e) #9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 568 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 677, ptr noundef nonnull @__func__.cs4231a_realizefn, ptr noundef nonnull @.str.21) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.i = tail call zeroext i1 @audio_be_check(ptr noundef nonnull %i.h, ptr noundef %1) #9
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp ugt i32 %i.k, 15
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 686, ptr noundef nonnull @__func__.cs4231a_realizefn, ptr noundef nonnull @.str.22, i32 noundef %i.k, i32 noundef 15) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @isa_bus_get_irq(ptr noundef %i.b, i32 noundef %i.k) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  store ptr %i.m, ptr %i.n, align 16
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = tail call ptr @object_get_class(ptr noundef %i.o) #9
  %i.q = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.p, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 23, ptr noundef nonnull @__func__.ISADMA_GET_CLASS) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = load i32, ptr %i.d, align 4
  tail call void %i.s(ptr noundef %i.t, i32 noundef %i.u, ptr noundef nonnull @cs_dma_read, ptr noundef nonnull %i.c) #9
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %i.x = load i32, ptr %i.w, align 16
  %i.y = trunc i32 %i.x to i16
  tail call void @isa_register_ioport(ptr noundef %i.a, ptr noundef nonnull %i.v, i16 noundef zeroext %i.y) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cs4231a_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 68, ptr noundef nonnull @.str.1) #9 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store <4 x i32> <i32 64, i32 0, i32 0, i32 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 521
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 522
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 526
  store i32 -2004318072, ptr %i.e, align 2
  store <4 x i8> <i8 -128, i8 -128, i8 0, i8 8>, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 530
  store i8 0, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 531
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 532
  store i8 -118, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 533
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 538
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  store i8 -120, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 539
  store i8 -120, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 540
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 545
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.m, i8 0, i64 5, i1 false)
  store i8 -96, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 546
  store i8 -96, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.p, i8 0, i64 5, i1 false)
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @isa_bus_from_device(ptr noundef) local_unnamed_addr #1

declare ptr @isa_bus_get_dma(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @audio_be_check(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @isa_bus_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @cs_dma_read(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i16], align 16            ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = icmp ne ptr %i.h, null
  %i.j = zext i1 %i.i to i32
  %i.k = ashr i32 %i.f, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ %3, %bb.a ]   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 530
  %i.n = load i8, ptr %i.m, align 2
  %i.o = and i8 %i.n, 2
  %.not46 = icmp eq i8 %i.o, 0
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 534
  %4 = load i16, ptr %i.p, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = zext i16 %5 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.r = load i32, ptr %i.q, align 16
  %i.s = shl i32 %6, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sub i32 %i.s, %i.u                       ; 2 uses
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.043 = phi i32 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.042 = phi i32 [ %i.v, %bb.d ], [ -1, %bb.c ]
  %i.x = icmp slt i32 %.043, 1
  %i.y = icmp slt i32 %3, 1
  %or.cond = or i1 %i.y, %i.x
  br i1 %or.cond, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @object_get_class(ptr noundef %i.aa) #9
  %i.ac = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ab, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 23, ptr noundef nonnull @__func__.ISADMA_GET_CLASS) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.044.i = phi i32 [ 0, %bb.f ], [ %i.ci, %bb.k ] ; 2 uses
  %.043.i = phi i32 [ %.043, %bb.f ], [ %i.cf, %bb.k ] ; 3 uses
  %.042.i = phi i32 [ %2, %bb.f ], [ %i.ch, %bb.k ] ; 3 uses
  %.not.i = icmp eq i32 %.043.i, 0
  br i1 %.not.i, label %cs_write_audio.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = sub i32 %3, %.042.i
  %i.ah = call i32 @llvm.smin.i32(i32 %.043.i, i32 %i.ag)
  %i.ai = call i32 @llvm.umin.i32(i32 %i.ah, i32 4096)
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = load ptr, ptr %i.z, align 8
  %i.al = call i32 %i.aj(ptr noundef %i.ak, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef %.042.i, i32 noundef %i.ai) #9, !inline_history !8 ; 5 uses
  %i.am = load ptr, ptr %i.ae, align 16           ; 6 uses
  %.not47.i = icmp eq ptr %i.am, null
  br i1 %.not47.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.an = icmp sgt i32 %i.al, 0
  br i1 %i.an, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext nneg i32 %i.al to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ao = icmp ult i32 %i.al, 4
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  store i16 %i.at, ptr %i.au, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store i16 %i.az, ptr %i.ba, align 2
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.1
  %i.bc = load i8, ptr %i.bb, align 2
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  store i16 %i.bf, ptr %i.bg, align 4
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.2
  store i16 %i.bl, ptr %i.bm, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.epil
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.epil
  store i16 %i.br, ptr %i.bs, align 2
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !10

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.i
  %i.bt = load ptr, ptr %i.af, align 16
  %i.bu = load ptr, ptr %i.c, align 8
  %i.bv = shl i32 %i.al, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = call i64 @audio_be_write(ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef nonnull %i.b, i64 noundef %i.bw) #9
  %i.by = trunc i64 %i.bx to i32
  %i.bz = ashr i32 %i.by, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ca = load ptr, ptr %i.af, align 16
  %i.cb = load ptr, ptr %i.c, align 8
  %i.cc = sext i32 %i.al to i64
  %i.cd = call i64 @audio_be_write(ptr noundef %i.ca, ptr noundef %i.cb, ptr noundef nonnull %i.a, i64 noundef %i.cc) #9
  %i.ce = trunc i64 %i.cd to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.045.i = phi i32 [ %i.bz, %._crit_edge.i ], [ %i.ce, %bb.j ] ; 4 uses
  %i.cf = sub i32 %.043.i, %.045.i
  %i.cg = add i32 %.045.i, %.042.i
  %i.ch = srem i32 %i.cg, %3
  %i.ci = add i32 %.045.i, %.044.i                ; 2 uses
  %.not48.i = icmp eq i32 %.045.i, 0
  br i1 %.not48.i, label %cs_write_audio.exit, label %bb.g

cs_write_audio.exit:                              ; preds = %bb.g, %bb.k
  %.1.i = phi i32 [ %i.ci, %bb.k ], [ %.044.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.cj = add i32 %.1.i, %2
  %i.ck = srem i32 %i.cj, %3                      ; 2 uses
  %i.cl = load ptr, ptr %i.ae, align 16
  %i.cm = icmp ne ptr %i.cl, null
  %i.cn = zext i1 %i.cm to i32
  %i.co = shl i32 %.1.i, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = sub i32 %i.cq, %i.co
  store i32 %i.cr, ptr %i.cp, align 8
  %i.cs = icmp eq i32 %.1.i, %.042
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %cs_write_audio.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 16
  %i.cv = or i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 16
  %i.cy = or i8 %i.cx, 16
  store i8 %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 0, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.db = load ptr, ptr %i.da, align 16
  call void @qemu_set_irq(ptr noundef %i.db, i32 noundef 1) #9
  br label %bb.n

bb.m:                                             ; preds = %cs_write_audio.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = add i32 %i.dd, %.1.i
  store i32 %i.de, ptr %i.dc, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.e
  %.0 = phi i32 [ %2, %bb.e ], [ %i.ck, %bb.m ], [ %i.ck, %bb.l ]
  ret i32 %.0
}

declare void @isa_register_ioport(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i64 @audio_be_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cs4231a_pre_load(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @object_get_class(ptr noundef %i.d) #9
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 23, ptr noundef nonnull @__func__.ISADMA_GET_CLASS) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.k = load i32, ptr %i.j, align 4
  tail call void %i.h(ptr noundef %i.i, i32 noundef %i.k) #9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.m, ptr noundef %i.o, i1 noundef zeroext false) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 4
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cs4231a_post_load(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 529
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not6 = icmp eq i8 %i.e, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.g = load i8, ptr %i.f, align 8
  %i.h = zext i8 %i.g to i32
  tail call fastcc void @cs_reset_voices(ptr noundef nonnull %0, i32 noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = distinct !{null}
!9 = distinct !{!9, !11}
!10 = distinct !{!10, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
