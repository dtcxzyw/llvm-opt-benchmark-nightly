Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/marvell_88w8618?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mv88w8618_audio_read:bb.a
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @mv88w8618_audio_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  switch i64 %1, label %bb.m [
    i64 0, label %bb.b
    i64 24, label %bb.f
    i64 32, label %bb.g
    i64 36, label %bb.h
    i64 40, label %bb.j
    i64 44, label %bb.k
    i64 64, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %2, 128
  %.not38 = icmp eq i64 %i.a, 0
  br i1 %.not38, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 128
  %.not39 = icmp eq i32 %i.d, 0
  br i1 %.not39, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1100
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 0, ptr %i.g, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = trunc i64 %2 to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i32 %i.h, ptr %i.i, align 8
  %i.j = and i32 %i.h, 512
  %.not.i = icmp eq i32 %i.j, 0
  %..i = select i1 %.not.i, i32 176400, i32 384000
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.l = load i32, ptr %i.k, align 8
  %i.m = lshr i32 %i.l, 8
  %i.n = and i32 %i.m, 255
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = udiv i32 %..i, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.r = load ptr, ptr %i.q, align 16
  tail call void @wm8750_set_bclk_in(ptr noundef %i.r, i32 noundef %i.p) #6
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.s = trunc i64 %2 to i32                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 0, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 512
  %.not.i40 = icmp eq i32 %i.y, 0
  %..i41 = select i1 %.not.i40, i32 176400, i32 384000
  %i.z = lshr i32 %i.s, 8
  %i.aa = and i32 %i.z, 255
  %i.ab = add nuw nsw i32 %i.aa, 1
  %i.ac = udiv i32 %..i41, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ae = load ptr, ptr %i.ad, align 16
  tail call void @wm8750_set_bclk_in(ptr noundef %i.ae, i32 noundef %i.ac) #6
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = trunc i64 %2 to i32
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %i.ag, %i.ai
  store i32 %i.aj, ptr %i.af, align 4
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.ak = trunc i64 %2 to i32                     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i32 %i.ak, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, %i.ak
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.aq = load ptr, ptr %i.ap, align 16
  tail call void @qemu_set_irq(ptr noundef %i.aq, i32 noundef 1) #6
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, -65536
  %i.au = trunc i64 %2 to i32
  %i.av = and i32 %i.au, 65535
  %i.aw = or disjoint i32 %i.at, %i.av            ; 2 uses
  store i32 %i.aw, ptr %i.ar, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 0, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store i32 0, ptr %i.az, align 4
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %.tr37 = trunc i64 %2 to i32
  %i.ba = shl i32 %.tr37, 2
  %i.bb = add i32 %i.ba, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i32 %i.bb, ptr %i.bc, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 65535
  %.tr = trunc i64 %2 to i32
  %i.bg = shl i32 %.tr, 16
  %i.bh = or disjoint i32 %i.bf, %i.bg            ; 2 uses
  store i32 %i.bh, ptr %i.bd, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 0, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store i32 0, ptr %i.bk, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.a
  ret void
}

declare void @wm8750_set_bclk_in(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @mv88w8618_audio_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 48, ptr noundef nonnull @__func__.MV88W8618_AUDIO) #6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %i.c = load ptr, ptr %i.b, align 16
  tail call void @wm8750_data_req_set(ptr noundef %i.c, ptr noundef nonnull @mv88w8618_audio_callback, ptr noundef %i.a) #6
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @mv88w8618_audio_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 48, ptr noundef nonnull @__func__.MV88W8618_AUDIO) #6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1116
  store i32 0, ptr %i.d, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @wm8750_data_req_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @mv88w8618_audio_callback(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 19 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = and i32 %i.d, 128
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 1
  %spec.select = shl i32 %1, %i.f
  %i.g = lshr i32 %i.d, 14
  %i.h = and i32 %i.g, 1
  %i.i = xor i32 %i.h, 1
  %.168 = shl i32 %spec.select, %i.i              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.k = load i32, ptr %i.j, align 4              ; 7 uses
  %i.l = lshr i32 %i.k, 1                         ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sub i32 %.168, %i.n
  %i.p = icmp ult i32 %i.o, %i.l
  %i.q = icmp ugt i32 %i.k, 8193
  %or.cond = or i1 %i.q, %i.p
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.u = load i32, ptr %i.t, align 16
  %i.v = add i32 %i.u, %i.s
  %i.w = zext i32 %i.v to i64
  %i.x = zext nneg i32 %i.l to i64                ; 2 uses
  call void @physical_memory_read(i64 noundef %i.w, ptr noundef nonnull %i.a, i64 noundef %i.x) #6
  %i.y = load i32, ptr %i.c, align 8              ; 2 uses
  %i.z = and i32 %i.y, 1
  %.not72 = icmp eq i32 %i.z, 0
  %i.aa = and i32 %i.y, 16384
  %.not73 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ac = load ptr, ptr %i.ab, align 16           ; 4 uses
  br i1 %.not72, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = lshr i32 %i.k, 2
  %i.ae = call ptr @wm8750_dac_buffer(ptr noundef %i.ac, i32 noundef %i.ad) #6 ; 7 uses
  %.not89 = icmp eq i32 %i.l, 0
  br i1 %.not89, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.af = add nsw i32 %i.l, -1
  %3 = zext i32 %i.af to i64                      ; 3 uses
  %4 = lshr i64 %3, 1
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.k, 78
  br i1 %min.iters.check, label %.lr.ph.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ag = shl nuw nsw i64 %3, 1
  %i.ah = and i64 %i.ag, 8589934588
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ah
  %scevgep101 = getelementptr i8, ptr %i.ai, i64 4
  %i.aj = and i64 %3, 4294967294
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.aj
  %scevgep102 = getelementptr i8, ptr %i.ak, i64 2
  %bound0 = icmp ult ptr %i.ae, %scevgep102
  %bound1 = icmp ult ptr %i.a, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, 4294967288                 ; 5 uses
  %i.al = trunc nuw i64 %n.vec to i32
  %i.am = shl i32 %i.al, 1
  %i.an = shl nuw nsw i64 %n.vec, 1
  %i.ao = getelementptr i8, ptr %i.a, i64 %i.an
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.ar ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ae, i64 %i.as
  %i.at = getelementptr i8, ptr %i.ae, i64 %i.as
  %next.gep104 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 16, !alias.scope !19
  %wide.load105 = load <4 x i16>, ptr %i.au, align 8, !alias.scope !19
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep103, align 2, !alias.scope !20, !noalias !19
  %interleaved.vec106 = shufflevector <4 x i16> %wide.load105, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec106, ptr %next.gep104, align 2, !alias.scope !20, !noalias !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader131

.lr.ph.preheader131:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.080.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  %.06179.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.ao, %middle.block ]
  %.06478.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader131, %.lr.ph
  %.080 = phi i32 [ %i.ba, %.lr.ph ], [ %.080.ph, %.lr.ph.preheader131 ]
  %.06179 = phi ptr [ %i.az, %.lr.ph ], [ %.06179.ph, %.lr.ph.preheader131 ] ; 2 uses
  %.06478 = phi ptr [ %i.ay, %.lr.ph ], [ %.06478.ph, %.lr.ph.preheader131 ] ; 3 uses
  %i.aw = load i16, ptr %.06179, align 2          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06478, i64 2
  store i16 %i.aw, ptr %.06478, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.06478, i64 4
  store i16 %i.aw, ptr %i.ax, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %.06179, i64 2
  %i.ba = add nuw nsw i32 %.080, 2                ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, %i.l
  br i1 %i.bb, label %.lr.ph, label %.loopexit, !llvm.loop !11

bb.f:                                             ; preds = %bb.d
  %i.bc = lshr i32 %i.k, 3
  %i.bd = call ptr @wm8750_dac_buffer(ptr noundef %i.ac, i32 noundef %i.bc) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bd, ptr noundef nonnull align 16 %i.a, i64 noundef range(i64 0, 4097) %i.x, i1 noundef false) #6
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  br i1 %.not73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = call ptr @wm8750_dac_buffer(ptr noundef %i.ac, i32 noundef %i.l) #6 ; 6 uses
  %.not90 = icmp eq i32 %i.l, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %bb.h
  %i.bf = zext nneg i32 %i.l to i64               ; 6 uses
  %i.bg = getelementptr i8, ptr %i.a, i64 %i.bf   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 -1
  %min.iters.check115 = icmp ult i32 %i.k, 16
  br i1 %min.iters.check115, label %.lr.ph84.preheader129, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.lr.ph84.preheader
  %i.bh = shl nuw nsw i64 %i.bf, 2
  %scevgep110 = getelementptr i8, ptr %i.be, i64 %i.bh
  %bound0111 = icmp ult ptr %i.be, %i.bg
  %bound1112 = icmp ult ptr %i.a, %scevgep110
  %found.conflict113 = and i1 %bound0111, %bound1112
  br i1 %found.conflict113, label %.lr.ph84.preheader129, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck109
  %n.vec117 = and i64 %i.bf, 8188                 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.a, i64 %n.vec117
  %i.bj = shl nuw nsw i64 %n.vec117, 2
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bj
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %i.a, i64 %index119
  %i.bl = shl i64 %index119, 2
  %next.gep121 = getelementptr i8, ptr %i.be, i64 %i.bl
  %wide.load122 = load <4 x i8>, ptr %next.gep120, align 4, !alias.scope !24
  %i.bm = zext <4 x i8> %wide.load122 to <4 x i16>
  %i.bn = shl nuw <4 x i16> %i.bm, splat (i16 8)
  %interleaved.vec123 = shufflevector <4 x i16> %i.bn, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec123, ptr %next.gep121, align 2, !alias.scope !25, !noalias !24
  %index.next124 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.bo, label %middle.block125, label %vector.body118, !llvm.loop !15

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %n.vec117, %i.bf
  br i1 %cmp.n126, label %.loopexit, label %.lr.ph84.preheader129

.lr.ph84.preheader129:                            ; preds = %vector.memcheck109, %.lr.ph84.preheader, %middle.block125
  %.16282.ph = phi ptr [ %i.a, %vector.memcheck109 ], [ %i.a, %.lr.ph84.preheader ], [ %i.bi, %middle.block125 ] ; 3 uses
  %.16581.ph = phi ptr [ %i.be, %vector.memcheck109 ], [ %i.be, %.lr.ph84.preheader ], [ %i.bk, %middle.block125 ] ; 2 uses
  %i.bp = add i64 %i.b, %i.bf
  %.16282.ph133 = ptrtoaddr ptr %.16282.ph to i64 ; 2 uses
  %i.bq = sub i64 %i.bf, %.16282.ph133
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol

.lr.ph84.prol:                                    ; preds = %.lr.ph84.preheader129, %.lr.ph84.prol
  %.16282.prol = phi ptr [ %i.bv, %.lr.ph84.prol ], [ %.16282.ph, %.lr.ph84.preheader129 ] ; 3 uses
  %.16581.prol = phi ptr [ %i.bz, %.lr.ph84.prol ], [ %.16581.ph, %.lr.ph84.preheader129 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph84.prol ], [ 0, %.lr.ph84.preheader129 ]
  %i.br = load i8, ptr %.16282.prol, align 1
  %i.bs = zext i8 %i.br to i16
  %i.bt = shl nuw i16 %i.bs, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.16581.prol, i64 2
  store i16 %i.bt, ptr %.16581.prol, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.16282.prol, i64 1 ; 2 uses
  %i.bw = load i8, ptr %.16282.prol, align 1
  %i.bx = zext i8 %i.bw to i16
  %i.by = shl nuw i16 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.16581.prol, i64 4 ; 2 uses
  store i16 %i.by, ptr %i.bu, align 2
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol, !llvm.loop !16

.lr.ph84.prol.loopexit:                           ; preds = %.lr.ph84.prol, %.lr.ph84.preheader129
  %.16282.unr = phi ptr [ %.16282.ph, %.lr.ph84.preheader129 ], [ %i.bv, %.lr.ph84.prol ]
  %.16581.unr = phi ptr [ %.16581.ph, %.lr.ph84.preheader129 ], [ %i.bz, %.lr.ph84.prol ]
  %i.ca = sub i64 %.16282.ph133, %i.bp
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.loopexit, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84
  %.16282 = phi ptr [ %i.dh, %.lr.ph84 ], [ %.16282.unr, %.lr.ph84.prol.loopexit ] ; 6 uses
  %.16581 = phi ptr [ %i.dl, %.lr.ph84 ], [ %.16581.unr, %.lr.ph84.prol.loopexit ] ; 9 uses
  %i.cc = load i8, ptr %.16282, align 1
  %i.cd = zext i8 %i.cc to i16
  %i.ce = shl nuw i16 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.16581, i64 2
  store i16 %i.ce, ptr %.16581, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.16282, i64 1 ; 2 uses
  %i.ch = load i8, ptr %.16282, align 1
  %i.ci = zext i8 %i.ch to i16
  %i.cj = shl nuw i16 %i.ci, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.16581, i64 4
  store i16 %i.cj, ptr %i.cf, align 2
  %i.cl = load i8, ptr %i.cg, align 1
  %i.cm = zext i8 %i.cl to i16
  %i.cn = shl nuw i16 %i.cm, 8
  %i.co = getelementptr inbounds nuw i8, ptr %.16581, i64 6
  store i16 %i.cn, ptr %i.ck, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.16282, i64 2 ; 2 uses
  %i.cq = load i8, ptr %i.cg, align 1
  %i.cr = zext i8 %i.cq to i16
  %i.cs = shl nuw i16 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.16581, i64 8
  store i16 %i.cs, ptr %i.co, align 2
  %i.cu = load i8, ptr %i.cp, align 1
  %i.cv = zext i8 %i.cu to i16
  %i.cw = shl nuw i16 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.16581, i64 10
  store i16 %i.cw, ptr %i.ct, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %.16282, i64 3 ; 3 uses
  %i.cz = load i8, ptr %i.cp, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = shl nuw i16 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.16581, i64 12
  store i16 %i.db, ptr %i.cx, align 2
  %i.dd = load i8, ptr %i.cy, align 1
  %i.de = zext i8 %i.dd to i16
  %i.df = shl nuw i16 %i.de, 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.16581, i64 14
  store i16 %i.df, ptr %i.dc, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.16282, i64 4
  %i.di = load i8, ptr %i.cy, align 1
  %i.dj = zext i8 %i.di to i16
  %i.dk = shl nuw i16 %i.dj, 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.16581, i64 16
  store i16 %i.dk, ptr %i.dg, align 2
  %exitcond.not.3 = icmp eq ptr %i.cy, %scevgep
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph84, !llvm.loop !17

bb.i:                                             ; preds = %bb.g
  %i.dm = lshr i32 %i.k, 2
  %i.dn = call ptr @wm8750_dac_buffer(ptr noundef %i.ac, i32 noundef %i.dm) #6 ; 2 uses
  %.not91 = icmp eq i32 %i.l, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %bb.i
  %i.do = add nsw i32 %i.l, -1                    ; 2 uses
  %i.dp = lshr i32 %i.do, 1                       ; 2 uses
  %i.dq = add nuw i32 %i.dp, 1                    ; 2 uses
  %i.dr = icmp eq i32 %i.dp, 0
  br i1 %i.dr, label %.lr.ph88.epil.preheader, label %.lr.ph88.preheader.new

.lr.ph88.preheader.new:                           ; preds = %.lr.ph88.preheader
  %unroll_iter = and i32 %i.dq, -2
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88, %.lr.ph88.preheader.new
  %.26386 = phi ptr [ %i.a, %.lr.ph88.preheader.new ], [ %i.eh, %.lr.ph88 ] ; 5 uses
  %.26685 = phi ptr [ %i.dn, %.lr.ph88.preheader.new ], [ %i.el, %.lr.ph88 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph88.preheader.new ], [ %niter.next.1, %.lr.ph88 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.26386, i64 1
  %i.dt = load i8, ptr %.26386, align 1
  %i.du = zext i8 %i.dt to i16
  %i.dv = shl nuw i16 %i.du, 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.26685, i64 2
  store i16 %i.dv, ptr %.26685, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %.26386, i64 2
  %i.dy = load i8, ptr %i.ds, align 1
  %i.dz = zext i8 %i.dy to i16
  %i.ea = shl nuw i16 %i.dz, 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.26685, i64 4
  store i16 %i.ea, ptr %i.dw, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.26386, i64 3
  %i.ed = load i8, ptr %i.dx, align 1
  %i.ee = zext i8 %i.ed to i16
  %i.ef = shl nuw i16 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.26685, i64 6
end_hunk_0
