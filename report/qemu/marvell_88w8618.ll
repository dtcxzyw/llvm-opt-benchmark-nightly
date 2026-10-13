Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/marvell_88w8618?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mv88w8618_audio_write:bb.a
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
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = lshr i64 %i.ag, 1
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.k, 78
  br i1 %min.iters.check, label %.lr.ph.preheader135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aj = shl nuw nsw i64 %i.ag, 1
  %i.ak = and i64 %i.aj, 8589934588
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = and i64 %i.ag, 4294967294
  %i.ao = getelementptr i8, ptr %i.a, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 2
  %bound0 = icmp ult ptr %i.ae, %i.ap
  %bound1 = icmp ult ptr %i.a, %i.am
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4294967288              ; 5 uses
  %i.aq = trunc nuw i64 %n.vec to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = shl nuw nsw i64 %n.vec, 1
  %i.at = getelementptr i8, ptr %i.a, i64 %i.as
  %i.au = shl nuw nsw i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.ae, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.aw ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ae, i64 %i.ax
  %i.ay = getelementptr i8, ptr %i.ae, i64 %i.ax
  %next.gep104 = getelementptr i8, ptr %i.ay, i64 16
  %i.az = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 16, !alias.scope !19
  %wide.load105 = load <4 x i16>, ptr %i.az, align 8, !alias.scope !19
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep103, align 2, !alias.scope !20, !noalias !19
  %interleaved.vec106 = shufflevector <4 x i16> %wide.load105, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec106, ptr %next.gep104, align 2, !alias.scope !20, !noalias !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader135

.lr.ph.preheader135:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.080.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.06179.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  %.06478.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader135, %.lr.ph
  %.080 = phi i32 [ %i.bf, %.lr.ph ], [ %.080.ph, %.lr.ph.preheader135 ]
  %.06179 = phi ptr [ %i.be, %.lr.ph ], [ %.06179.ph, %.lr.ph.preheader135 ] ; 2 uses
  %.06478 = phi ptr [ %i.bd, %.lr.ph ], [ %.06478.ph, %.lr.ph.preheader135 ] ; 3 uses
  %i.bb = load i16, ptr %.06179, align 2          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.06478, i64 2
  store i16 %i.bb, ptr %.06478, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.06478, i64 4
  store i16 %i.bb, ptr %i.bc, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %.06179, i64 2
  %i.bf = add nuw nsw i32 %.080, 2                ; 2 uses
  %i.bg = icmp samesign ult i32 %i.bf, %i.l
  br i1 %i.bg, label %.lr.ph, label %.loopexit, !llvm.loop !11

bb.f:                                             ; preds = %bb.d
  %i.bh = lshr i32 %i.k, 3
  %i.bi = call ptr @wm8750_dac_buffer(ptr noundef %i.ac, i32 noundef %i.bh) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bi, ptr noundef nonnull align 16 %i.a, i64 noundef range(i64 0, 4097) %i.x, i1 noundef false) #6
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  br i1 %.not73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = call ptr @wm8750_dac_buffer(ptr noundef %i.ac, i32 noundef %i.l) #6 ; 7 uses
  %.not90 = icmp eq i32 %i.l, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %bb.h
  %i.bk = zext nneg i32 %i.l to i64               ; 6 uses
  %i.bl = getelementptr i8, ptr %i.a, i64 %i.bk   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bl, i64 -1
  %min.iters.check115 = icmp ult i32 %i.k, 16
  br i1 %min.iters.check115, label %.lr.ph84.preheader133, label %vector.memcheck116

vector.memcheck116:                               ; preds = %.lr.ph84.preheader
  %i.bm = shl nuw nsw i64 %i.bk, 2
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.bm
  %bound0117 = icmp ult ptr %i.bj, %i.bl
  %bound1118 = icmp ult ptr %i.a, %i.bn
  %found.conflict119 = and i1 %bound0117, %bound1118
  br i1 %found.conflict119, label %.lr.ph84.preheader133, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck116
  %n.vec121 = and i64 %i.bk, 8184                 ; 4 uses
  %i.bo = getelementptr i8, ptr %i.a, i64 %n.vec121
  %i.bp = shl nuw nsw i64 %n.vec121, 2
  %i.bq = getelementptr i8, ptr %i.bj, i64 %i.bp
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next128, %vector.body122 ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %i.a, i64 %index123 ; 2 uses
  %i.br = shl i64 %index123, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.bj, i64 %i.br
  %3 = getelementptr i8, ptr %i.bj, i64 %i.br
  %next.gep126 = getelementptr i8, ptr %3, i64 16
  %next.gep125.a = getelementptr i8, ptr %next.gep124, i64 4
  %wide.load127 = load <4 x i8>, ptr %next.gep124, align 8, !alias.scope !24
  %wide.load126 = load <4 x i8>, ptr %next.gep125.a, align 4, !alias.scope !24
  %4 = zext <4 x i8> %wide.load127 to <4 x i16>
  %i.bs = zext <4 x i8> %wide.load126 to <4 x i16>
  %5 = shl nuw <4 x i16> %4, splat (i16 8)
  %i.bt = shl nuw <4 x i16> %i.bs, splat (i16 8)
  %interleaved.vec129 = shufflevector <4 x i16> %5, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec129, ptr %next.gep125, align 2, !alias.scope !25, !noalias !24
  %interleaved.vec127 = shufflevector <4 x i16> %i.bt, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec127, ptr %next.gep126, align 2, !alias.scope !25, !noalias !24
  %index.next128 = add nuw i64 %index123, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.bu, label %middle.block129, label %vector.body122, !llvm.loop !15

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %n.vec121, %i.bk
  br i1 %cmp.n130, label %.loopexit, label %.lr.ph84.preheader133

.lr.ph84.preheader133:                            ; preds = %vector.memcheck116, %.lr.ph84.preheader, %middle.block129
  %.16282.ph = phi ptr [ %i.a, %vector.memcheck116 ], [ %i.a, %.lr.ph84.preheader ], [ %i.bo, %middle.block129 ] ; 3 uses
  %.16581.ph = phi ptr [ %i.bj, %vector.memcheck116 ], [ %i.bj, %.lr.ph84.preheader ], [ %i.bq, %middle.block129 ] ; 2 uses
  %i.bv = add i64 %i.b, %i.bk
  %.16282.ph137 = ptrtoaddr ptr %.16282.ph to i64 ; 2 uses
  %i.bw = sub i64 %i.bk, %.16282.ph137
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol

.lr.ph84.prol:                                    ; preds = %.lr.ph84.preheader133, %.lr.ph84.prol
  %.16282.prol = phi ptr [ %i.cb, %.lr.ph84.prol ], [ %.16282.ph, %.lr.ph84.preheader133 ] ; 3 uses
  %.16581.prol = phi ptr [ %i.cf, %.lr.ph84.prol ], [ %.16581.ph, %.lr.ph84.preheader133 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph84.prol ], [ 0, %.lr.ph84.preheader133 ]
  %i.bx = load i8, ptr %.16282.prol, align 1
  %i.by = zext i8 %i.bx to i16
  %i.bz = shl nuw i16 %i.by, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.16581.prol, i64 2
  store i16 %i.bz, ptr %.16581.prol, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.16282.prol, i64 1 ; 2 uses
  %i.cc = load i8, ptr %.16282.prol, align 1
  %i.cd = zext i8 %i.cc to i16
  %i.ce = shl nuw i16 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.16581.prol, i64 4 ; 2 uses
  store i16 %i.ce, ptr %i.ca, align 2
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol, !llvm.loop !16

.lr.ph84.prol.loopexit:                           ; preds = %.lr.ph84.prol, %.lr.ph84.preheader133
  %.16282.unr = phi ptr [ %.16282.ph, %.lr.ph84.preheader133 ], [ %i.cb, %.lr.ph84.prol ]
  %.16581.unr = phi ptr [ %.16581.ph, %.lr.ph84.preheader133 ], [ %i.cf, %.lr.ph84.prol ]
  %i.cg = sub i64 %.16282.ph137, %i.bv
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84
  %.16282 = phi ptr [ %i.dn, %.lr.ph84 ], [ %.16282.unr, %.lr.ph84.prol.loopexit ] ; 6 uses
  %.16581 = phi ptr [ %i.dr, %.lr.ph84 ], [ %.16581.unr, %.lr.ph84.prol.loopexit ] ; 9 uses
  %i.ci = load i8, ptr %.16282, align 1
  %i.cj = zext i8 %i.ci to i16
  %i.ck = shl nuw i16 %i.cj, 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.16581, i64 2
  store i16 %i.ck, ptr %.16581, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.16282, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.16282, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = shl nuw i16 %i.co, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.16581, i64 4
  store i16 %i.cp, ptr %i.cl, align 2
  %i.cr = load i8, ptr %i.cm, align 1
  %i.cs = zext i8 %i.cr to i16
  %i.ct = shl nuw i16 %i.cs, 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.16581, i64 6
  store i16 %i.ct, ptr %i.cq, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %.16282, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cm, align 1
  %i.cx = zext i8 %i.cw to i16
  %i.cy = shl nuw i16 %i.cx, 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.16581, i64 8
  store i16 %i.cy, ptr %i.cu, align 2
  %i.da = load i8, ptr %i.cv, align 1
  %i.db = zext i8 %i.da to i16
  %i.dc = shl nuw i16 %i.db, 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.16581, i64 10
  store i16 %i.dc, ptr %i.cz, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %.16282, i64 3 ; 3 uses
  %i.df = load i8, ptr %i.cv, align 1
  %i.dg = zext i8 %i.df to i16
  %i.dh = shl nuw i16 %i.dg, 8
  %i.di = getelementptr inbounds nuw i8, ptr %.16581, i64 12
  store i16 %i.dh, ptr %i.dd, align 2
  %i.dj = load i8, ptr %i.de, align 1
  %i.dk = zext i8 %i.dj to i16
  %i.dl = shl nuw i16 %i.dk, 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.16581, i64 14
  store i16 %i.dl, ptr %i.di, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.16282, i64 4
  %i.do = load i8, ptr %i.de, align 1
  %i.dp = zext i8 %i.do to i16
  %i.dq = shl nuw i16 %i.dp, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.16581, i64 16
  store i16 %i.dq, ptr %i.dm, align 2
  %exitcond.not.3 = icmp eq ptr %i.de, %scevgep
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph84, !llvm.loop !17

bb.i:                                             ; preds = %bb.g
  %i.ds = lshr i32 %i.k, 2
  %i.dt = call ptr @wm8750_dac_buffer(ptr noundef %i.ac, i32 noundef %i.ds) #6 ; 2 uses
  %.not91 = icmp eq i32 %i.l, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %bb.i
  %i.du = add nsw i32 %i.l, -1                    ; 2 uses
  %i.dv = lshr i32 %i.du, 1                       ; 2 uses
  %i.dw = add nuw i32 %i.dv, 1                    ; 2 uses
  %i.dx = icmp eq i32 %i.dv, 0
  br i1 %i.dx, label %.lr.ph88.epil.preheader, label %.lr.ph88.preheader.new

.lr.ph88.preheader.new:                           ; preds = %.lr.ph88.preheader
  %unroll_iter = and i32 %i.dw, -2
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88, %.lr.ph88.preheader.new
  %.26386 = phi ptr [ %i.a, %.lr.ph88.preheader.new ], [ %i.en, %.lr.ph88 ] ; 5 uses
  %.26685 = phi ptr [ %i.dt, %.lr.ph88.preheader.new ], [ %i.er, %.lr.ph88 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph88.preheader.new ], [ %niter.next.1, %.lr.ph88 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.26386, i64 1
  %i.dz = load i8, ptr %.26386, align 1
  %i.ea = zext i8 %i.dz to i16
  %i.eb = shl nuw i16 %i.ea, 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.26685, i64 2
  store i16 %i.eb, ptr %.26685, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.26386, i64 2
  %i.ee = load i8, ptr %i.dy, align 1
  %i.ef = zext i8 %i.ee to i16
  %i.eg = shl nuw i16 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.26685, i64 4
  store i16 %i.eg, ptr %i.ec, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.26386, i64 3
  %i.ej = load i8, ptr %i.ed, align 1
  %i.ek = zext i8 %i.ej to i16
  %i.el = shl nuw i16 %i.ek, 8
  %i.em = getelementptr inbounds nuw i8, ptr %.26685, i64 6
  store i16 %i.el, ptr %i.eh, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %.26386, i64 4 ; 2 uses
  %i.eo = load i8, ptr %i.ei, align 1
  %i.ep = zext i8 %i.eo to i16
  %i.eq = shl nuw i16 %i.ep, 8
  %i.er = getelementptr inbounds nuw i8, ptr %.26685, i64 8 ; 2 uses
  store i16 %i.eq, ptr %i.em, align 2
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph88, !llvm.loop !18

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph88
  %i.es = and i32 %i.du, 2
  %lcmp.mod139.not.not = icmp eq i32 %i.es, 0
  br i1 %lcmp.mod139.not.not, label %.lr.ph88.epil.preheader, label %.loopexit

.lr.ph88.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph88.preheader
  %.26386.epil.init = phi ptr [ %i.a, %.lr.ph88.preheader ], [ %i.en, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.26685.epil.init = phi ptr [ %i.dt, %.lr.ph88.preheader ], [ %i.er, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod140 = trunc i32 %i.dw to i1
  call void @llvm.assume(i1 %lcmp.mod140)
  %i.et = getelementptr inbounds nuw i8, ptr %.26386.epil.init, i64 1
  %i.eu = load i8, ptr %.26386.epil.init, align 1
  %i.ev = zext i8 %i.eu to i16
  %i.ew = shl nuw i16 %i.ev, 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.26685.epil.init, i64 2
  store i16 %i.ew, ptr %.26685.epil.init, align 2
  %i.ey = load i8, ptr %i.et, align 1
  %i.ez = zext i8 %i.ey to i16
  %i.fa = shl nuw i16 %i.ez, 8
  store i16 %i.fa, ptr %i.ex, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph84.prol.loopexit, %.lr.ph84, %.lr.ph88.epil.preheader, %.loopexit.loopexit.unr-lcssa, %middle.block, %middle.block129, %bb.e, %bb.h, %bb.i, %bb.f
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.fc = load ptr, ptr %i.fb, align 16
  call void @wm8750_dac_commit(ptr noundef %i.fc) #6
  %i.fd = sub i32 %.168, %i.l
  store i32 %i.fd, ptr %i.m, align 4
  %i.fe = load i32, ptr %i.t, align 16
  %i.ff = icmp eq i32 %i.fe, 0                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4
  %. = select i1 %i.ff, i32 64, i32 128
  %.98 = select i1 %i.ff, i32 %i.l, i32 0
  %i.fi = or i32 %i.fh, %.                        ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 4
  store i32 %.98, ptr %i.t, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.fk = load i32, ptr %i.fj, align 16
  %i.fl = and i32 %i.fk, %i.fi
  %.not75 = icmp eq i32 %i.fl, 0
  br i1 %.not75, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.fn = load ptr, ptr %i.fm, align 16
  call void @qemu_set_irq(ptr noundef %i.fn, i32 noundef 1) #6
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @physical_memory_read(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @wm8750_dac_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

end_hunk_0
