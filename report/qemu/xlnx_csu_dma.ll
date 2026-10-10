Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx_csu_dma?download=true
inline.NumInlined: 59
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@size_post_write:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.ah(ptr noundef %i.aj) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %xlnx_csu_dma_done.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @size_post_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1291
  %i.e = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.f = zext nneg i8 %i.e to i64
  %i.g = or i64 %1, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef range(i64 0, 57346) i64 @status_pre_write(ptr nofree readnone captures(none) %0, i64 noundef %1) #3 {
bb.a:
  %i.a = and i64 %1, 57345
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ctrl_post_write(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1290
  %i.e = load i8, ptr %i.d, align 2, !range !8, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 1324
  %.val = load i32, ptr %i.g, align 4
  %i.h = and i32 %.val, 3
  %.not10 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @xlnx_csu_dma_src_notify(ptr noundef nonnull %i.c)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1296
  %i.j = load ptr, ptr %i.i, align 16             ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1304
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.j(ptr noundef %i.l) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @int_status_pre_write(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1332
  %i.e = load i32, ptr %i.d, align 4
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = and i64 %1, 2
  %i.h = and i64 %i.g, %i.f
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1320 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = and i32 %i.j, -57345
  %i.l = add i32 %i.j, 57344
  %i.m = and i32 %i.l, 57344
  %i.n = or disjoint i32 %i.m, %i.k
  store i32 %i.n, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = xor i64 %1, -1
  %i.p = and i64 %i.f, %i.o
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @int_status_post_write(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1332
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1344
  %i.i = load i32, ptr %i.h, align 16
  %i.j = xor i32 %i.i, -1
  %i.k = and i32 %i.g, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  tail call void @qemu_set_irq(ptr noundef %i.e, i32 noundef %i.m) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @int_enable_pre_write(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6
  %i.d = trunc i64 %1 to i32
  %i.e = xor i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1344 ; 2 uses
  %i.g = load i32, ptr %i.f, align 16
  %i.h = and i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 16
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @int_enable_post_write(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1332
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1344
  %i.i = load i32, ptr %i.h, align 16
  %i.j = xor i32 %i.i, -1
  %i.k = and i32 %i.g, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  tail call void @qemu_set_irq(ptr noundef %i.e, i32 noundef %i.m) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @int_disable_pre_write(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6
  %i.d = trunc i64 %1 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1344 ; 2 uses
  %i.f = load i32, ptr %i.e, align 16
  %i.g = or i32 %i.f, %i.d
  store i32 %i.g, ptr %i.e, align 16
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @int_disable_post_write(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1332
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1344
  %i.i = load i32, ptr %i.h, align 16
  %i.j = xor i32 %i.i, -1
  %i.k = and i32 %i.g, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  tail call void @qemu_set_irq(ptr noundef %i.e, i32 noundef %i.m) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef range(i64 0, 131072) i64 @addr_msb_pre_write(ptr nofree readnone captures(none) %0, i64 noundef %1) #3 {
bb.a:
  %i.a = and i64 %1, 131071
  ret i64 %i.a
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_csu_dma_src_notify(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 10 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 54, ptr noundef nonnull @__func__.XLNX_CSU_DMA) #6 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1280 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.d) #6
  %i.e = load ptr, ptr %i.c, align 16
  tail call void @ptimer_stop(ptr noundef %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1316 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not47 = icmp eq i32 %i.g, 0
  br i1 %.not47, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 1324     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1272 ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 1291
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1312 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1352 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1288 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1088 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1332 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1290 ; 2 uses
  %i.t = getelementptr i8, ptr %i.b, i64 1328     ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1320 ; 2 uses
  %.val.pre = load i32, ptr %i.h, align 4
  %scevgep = getelementptr i8, ptr %i.b, i64 1332
  %scevgep60 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %bound1 = icmp ult ptr %i.a, %scevgep
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %xlnx_csu_dma_advance.exit
  %.val = phi i32 [ %.val.pre, %.lr.ph ], [ %.val.i41, %xlnx_csu_dma_advance.exit ]
  %i.v = and i32 %.val, 3
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = call zeroext i1 @stream_can_push(ptr noundef %i.w, ptr noundef nonnull @xlnx_csu_dma_src_notify, ptr noundef nonnull %i.b) #6
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.f, align 4              ; 5 uses
  %i.z = call i32 @llvm.umin.i32(i32 %i.y, i32 4096) ; 6 uses
  %i.aa = icmp ult i32 %i.y, 4097
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val39 = load i8, ptr %i.j, align 1, !range !8, !noundef !9
  %i.ab = trunc nuw i8 %.val39 to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = load i32, ptr %i.l, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = load i32, ptr %i.k, align 16
  %i.ag = zext i32 %i.af to i64
  %i.ah = or disjoint i64 %i.ae, %i.ag            ; 3 uses
  %.val.i = load i32, ptr %i.h, align 4
  %i.ai = and i32 %.val.i, 4194304
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not39.i = icmp eq i32 %i.y, 0
  br i1 %.not39.i, label %xlnx_csu_dma_read.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre.i = load i16, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %i.aj = phi i16 [ %.pre.i, %.lr.ph.i ], [ %i.as, %bb.g ]
  %.03438.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.ak = sub nuw nsw i32 %i.z, %.03438.i
  %i.al = zext i16 %i.aj to i32
  %i.am = call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.al)
  %i.an = zext nneg i32 %.03438.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = load i64, ptr %i.o, align 16
  %i.ar = call i32 @address_space_rw(ptr noundef nonnull %i.n, i64 noundef %i.ah, i64 %i.aq, ptr noundef nonnull %i.ao, i64 noundef %i.ap, i1 noundef zeroext false) #6 ; 2 uses
  %i.as = load i16, ptr %i.m, align 8             ; 2 uses
  %i.at = zext i16 %i.as to i32
  %i.au = add nuw nsw i32 %.03438.i, %i.at        ; 2 uses
  %i.av = icmp samesign ult i32 %i.au, %i.z
  %i.aw = icmp eq i32 %i.ar, 0
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %bb.g, label %.loopexit.i, !llvm.loop !13

bb.h:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %i.z to i64
  %i.az = load i64, ptr %i.o, align 16
  %i.ba = call i32 @address_space_rw(ptr noundef nonnull %i.n, i64 noundef %i.ah, i64 %i.az, ptr noundef nonnull %i.a, i64 noundef %i.ay, i1 noundef zeroext false) #6
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %bb.h
  %.1.i = phi i32 [ %i.ba, %bb.h ], [ %i.ar, %bb.g ]
  %i.bb = icmp eq i32 %.1.i, 0
  br i1 %i.bb, label %.loopexit.thread.i, label %bb.k

.loopexit.thread.i:                               ; preds = %.loopexit.i
  %.pre = load i32, ptr %i.h, align 4
  %i.bc = and i32 %.pre, 8388608
  %i.bd = load i8, ptr %i.s, align 2, !range !8, !noundef !9
  %i.be = trunc nuw i8 %i.bd to i1                ; 3 uses
  %i.bf = icmp eq i32 %i.bc, 0                    ; 2 uses
  %or.cond.not.i.i = select i1 %i.be, i1 %i.bf, i1 false
  %i.bg = icmp eq i32 %i.y, 0
  %or.cond.not26.i.i = or i1 %i.bg, %or.cond.not.i.i
  br i1 %or.cond.not26.i.i, label %xlnx_csu_dma_read.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.thread.i
  br i1 %i.bf, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.bh = zext nneg i32 %i.z to i64
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  br i1 %i.be, label %xlnx_csu_dma_read.exit, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %.promoted.i.i = load i32, ptr %i.t, align 16   ; 3 uses
  %i.bi = zext nneg i32 %i.z to i64               ; 3 uses
  %i.bj = call i64 @llvm.umax.i64(i64 %i.bi, i64 4)
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 29
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.split.i.i
  %umax = call i64 @llvm.umax.i64(i64 %i.bi, i64 4)
  %1 = add nsw i64 %umax, -1
  %2 = and i64 %1, -4
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %2
  %bound0 = icmp ult ptr %i.t, %scevgep61
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, 9223372036854775800     ; 3 uses
  %i.bn = shl i64 %n.vec, 2
  %i.bo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bo, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bp = shl nuw i64 %index, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x i32>, ptr %i.bq, align 16, !alias.scope !20
  %wide.load63 = load <4 x i32>, ptr %i.br, align 16, !alias.scope !20
  %i.bs = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bt = add <4 x i32> %wide.load63, %vec.phi62  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bt, %i.bs
  %i.bv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bv, ptr %i.t, align 16, !alias.scope !23, !noalias !20
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %xlnx_csu_dma_read.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.split.i.i, %middle.block
  %indvars.iv29.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.split.i.i ], [ %i.bn, %middle.block ]
  %.ph = phi i32 [ %.promoted.i.i, %vector.memcheck ], [ %.promoted.i.i, %.lr.ph.split.us.split.i.i ], [ %i.bv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %scalar.ph ], [ %indvars.iv29.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bw = phi i32 [ %i.bz, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv29.i.i
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %i.by, %i.bw                    ; 2 uses
  store i32 %i.bz, ptr %i.t, align 16
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 4 ; 2 uses
  %i.ca = icmp samesign ult i64 %indvars.iv.next30.i.i, %i.bi
  br i1 %i.ca, label %scalar.ph, label %xlnx_csu_dma_read.exit, !llvm.loop !18

.lr.ph.split.i.i:                                 ; preds = %bb.j, %.lr.ph.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i ; 3 uses
  %i.cc = load <4 x i8>, ptr %i.cb, align 4
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.i
  %i.cd = load i32, ptr %i.cb, align 4
  %i.ce = load i32, ptr %i.t, align 16
  %i.cf = add i32 %i.ce, %i.cd
  store i32 %i.cf, ptr %i.t, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.i.i
  %i.cg = shufflevector <4 x i8> %i.cc, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cg, ptr %i.cb, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bh
  br i1 %i.ch, label %.lr.ph.split.i.i, label %xlnx_csu_dma_read.exit, !llvm.loop !0

bb.k:                                             ; preds = %.loopexit.i
  %i.ci = load i32, ptr @qemu_loglevel, align 4
  %i.cj = and i32 %i.ci, 2048
  %.not36.i = icmp eq i32 %i.cj, 0
  br i1 %.not36.i, label %bb.m, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.xlnx_csu_dma_read, i64 noundef %i.ah) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ck = load i32, ptr %i.p, align 4
  %i.cl = or i32 %i.ck, 4                         ; 2 uses
  store i32 %i.cl, ptr %i.p, align 4
  %i.cm = load ptr, ptr %i.q, align 16
  %i.cn = load i32, ptr %i.r, align 16
  %i.co = xor i32 %i.cn, -1
  %i.cp = and i32 %i.cl, %i.co
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  call void @qemu_set_irq(ptr noundef %i.cm, i32 noundef %i.cr) #6
  br label %xlnx_csu_dma_read.exit

xlnx_csu_dma_read.exit:                           ; preds = %bb.j, %scalar.ph, %middle.block, %.preheader.i, %.loopexit.thread.i, %.lr.ph.split.us.i.i, %bb.m
  %i.cs = load ptr, ptr %i.i, align 8
  %i.ct = zext nneg i32 %i.z to i64
  %i.cu = call i64 @stream_push(ptr noundef %i.cs, ptr noundef nonnull %i.a, i64 noundef %i.ct, i1 noundef zeroext %.0) #6 ; 2 uses
  %i.cv = trunc i64 %i.cu to i32                  ; 4 uses
  %i.cw = load i32, ptr %i.f, align 4             ; 4 uses
  %i.cx = load i32, ptr %i.l, align 8
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw i64 %i.cy, 32
  %i.da = load i32, ptr %i.k, align 16
  %i.db = zext i32 %i.da to i64
  %i.dc = or disjoint i64 %i.cz, %i.db
  %.not.i40 = icmp ult i32 %i.cw, %i.cv
  br i1 %.not.i40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %xlnx_csu_dma_read.exit
  call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__.xlnx_csu_dma_advance) #7
  unreachable

bb.o:                                             ; preds = %xlnx_csu_dma_read.exit
  %i.dd = sub nuw i32 %i.cw, %i.cv
  store i32 %i.dd, ptr %i.f, align 4
  %.val.i41 = load i32, ptr %i.h, align 4         ; 2 uses
  %i.de = and i32 %.val.i41, 4194304
  %.not19.i = icmp eq i32 %i.de, 0
  br i1 %.not19.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.df = and i64 %i.cu, 4294967295
  %i.dg = add i64 %i.dc, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.k, align 16
  %i.di = lshr i64 %i.dg, 32
  %i.dj = trunc nuw i64 %i.di to i32
  store i32 %i.dj, ptr %i.l, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dk = icmp eq i32 %i.cw, %i.cv
  br i1 %i.dk, label %bb.r, label %xlnx_csu_dma_advance.exit

bb.r:                                             ; preds = %bb.q
  %i.dl = load i32, ptr %i.u, align 8             ; 2 uses
  %i.dm = load i32, ptr %i.p, align 4             ; 2 uses
  %i.dn = or i32 %i.dm, 2
  store i32 %i.dn, ptr %i.p, align 4
  %i.do = load i8, ptr %i.s, align 2, !range !8, !noundef !9
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %xlnx_csu_dma_done.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = or i32 %i.dm, 3
  store i32 %i.dq, ptr %i.p, align 4
  br label %xlnx_csu_dma_done.exit.i

xlnx_csu_dma_done.exit.i:                         ; preds = %bb.s, %bb.r
  %i.dr = and i32 %i.dl, -57346
  %i.ds = add i32 %i.dl, 8192
  %i.dt = and i32 %i.ds, 57344
  %i.du = or disjoint i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.u, align 8
  br label %xlnx_csu_dma_advance.exit

xlnx_csu_dma_advance.exit:                        ; preds = %bb.q, %xlnx_csu_dma_done.exit.i
  %.not = icmp eq i32 %i.cw, %i.cv
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !19

.critedge:                                        ; preds = %bb.c, %xlnx_csu_dma_advance.exit, %bb.b, %bb.a
  %i.dv = getelementptr i8, ptr %i.b, i64 1348    ; 2 uses
  %.val38 = load i32, ptr %i.dv, align 4
  %i.dw = and i32 %.val38, 4194304
  %.not43 = icmp eq i32 %i.dw, 0
  br i1 %.not43, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.dx = load i32, ptr %i.f, align 4
  %.not37 = icmp eq i32 %i.dx, 0
  br i1 %.not37, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call zeroext i1 @stream_can_push(ptr noundef %i.dz, ptr noundef nonnull @xlnx_csu_dma_src_notify, ptr noundef nonnull %i.b) #6
  br i1 %i.ea, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 1324
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = lshr i32 %i.ec, 10
  %i.ee = and i32 %i.ed, 4095
  %i.ef = load i32, ptr %i.dv, align 4
  %i.eg = lshr i32 %i.ef, 4
  %i.eh = and i32 %i.eg, 4095
  %i.ei = add nuw nsw i32 %i.eh, 1
  %i.ej = udiv i32 400000000, %i.ei
  %i.ek = load ptr, ptr %i.c, align 16
  call void @ptimer_set_freq(ptr noundef %i.ek, i32 noundef %i.ej) #6
  %i.el = load ptr, ptr %i.c, align 16
  %i.em = zext nneg i32 %i.ee to i64
  call void @ptimer_set_count(ptr noundef %i.el, i64 noundef %i.em) #6
  %i.en = load ptr, ptr %i.c, align 16
  call void @ptimer_run(ptr noundef %i.en, i32 noundef 1) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %.critedge
  %i.eo = load ptr, ptr %i.c, align 16
  call void @ptimer_transaction_commit(ptr noundef %i.eo) #6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  %i.eq = load ptr, ptr %i.ep, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 1332
  %i.es = load i32, ptr %i.er, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.eu = load i32, ptr %i.et, align 16
  %i.ev = xor i32 %i.eu, -1
  %i.ew = and i32 %i.es, %i.ev
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  call void @qemu_set_irq(ptr noundef %i.eq, i32 noundef %i.ey) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_transaction_begin(ptr noundef) local_unnamed_addr #1

declare void @ptimer_stop(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @stream_can_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @stream_push(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @ptimer_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_set_count(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ptimer_run(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_transaction_commit(ptr noundef) local_unnamed_addr #1

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i64 @register_read_memory(ptr noundef, i64 noundef, i32 noundef) #1

declare void @register_write_memory(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare void @register_write(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !11}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !11, !21, !22}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !11, !21}
!19 = distinct !{!19, !11}
!20 = !{!15}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!17}
end_hunk_0
