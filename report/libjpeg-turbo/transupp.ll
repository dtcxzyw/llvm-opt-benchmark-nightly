Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/transupp?download=true
inline.NumInlined: 33
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 54
begin_hunk_0_@do_crop_ext_flat:bb.a
  br i1 %exitcond160.not.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !222

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.r, %.loopexit134
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.eu = load i32, ptr %i.ax, align 4, !tbaa !75 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next162, %i.ev
  br i1 %i.ew, label %.lr.ph140, label %.loopexit135, !llvm.loop !223

.loopexit135:                                     ; preds = %.lr.ph142, %.loopexit, %bb.o, %bb.l
  %i.ex = phi i32 [ %i.eu, %.loopexit ], [ %i.cc, %bb.l ], [ %i.da, %bb.o ], [ %i.cj, %.lr.ph142 ] ; 2 uses
  %i.ey = add i32 %i.ex, %.0119143                ; 2 uses
  %i.ez = load i32, ptr %i.bb, align 8, !tbaa !100
  %i.fa = icmp ult i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.j, label %._crit_edge, !llvm.loop !224

._crit_edge:                                      ; preds = %.loopexit135, %bb.i
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.fb = load i32, ptr %i.af, align 4, !tbaa !96
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next165, %i.fc
  br i1 %i.fd, label %bb.g, label %._crit_edge149, !llvm.loop !225

._crit_edge149:                                   ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_crop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph44, %._crit_edge41
  %i.f = phi i32 [ %i.b, %.lr.ph44 ], [ %i.aw, %._crit_edge41 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next49, %._crit_edge41 ] ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %indvars.iv48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 2 uses
  %i.k = mul i32 %i.j, %3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !100
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !74
  %i.p = mul i32 %i.o, %2
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv48
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv48
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph40, %._crit_edge
  %i.u = phi i32 [ %i.j, %.lr.ph40 ], [ %i.as, %._crit_edge ]
  %.03538 = phi i32 [ 0, %.lr.ph40 ], [ %i.at, %._crit_edge ] ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.z = tail call ptr %i.x(ptr noundef %0, ptr noundef %i.y, i32 noundef %.03538, i32 noundef %i.u, i32 noundef 1) #10
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !101
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.ae = add i32 %.03538, %i.k
  %i.af = load i32, ptr %i.i, align 4, !tbaa !75
  %i.ag = tail call ptr %i.ac(ptr noundef %0, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef 0) #10
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !75  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ak, i64 %i.s
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !102
  tail call void @jcopy_block_row(ptr noundef %i.al, ptr noundef %i.an, i32 noundef %i.ao) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !75  ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.as = phi i32 [ %i.ah, %bb.c ], [ %i.ap, %.lr.ph ] ; 2 uses
  %i.at = add i32 %i.as, %.03538                  ; 2 uses
  %i.au = load i32, ptr %i.l, align 8, !tbaa !100
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %bb.c, label %._crit_edge41.loopexit, !llvm.loop !227

._crit_edge41.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 4, !tbaa !96
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %bb.b
  %i.aw = phi i32 [ %.pre, %._crit_edge41.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next49, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge45, !llvm.loop !228

._crit_edge45:                                    ; preds = %._crit_edge41, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_flip_h_no_crop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load i32, ptr %i.f, align 8, !tbaa !110
  %i.h = shl nsw i32 %i.g, 3
  %i.i = udiv i32 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.fr = freeze i32 %i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge
  %indvars.iv130 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next131, %._crit_edge ] ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %indvars.iv130 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !74
  %.fr97 = freeze i32 %i.o                        ; 2 uses
  %i.p = mul i32 %.fr97, %.fr                     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !100
  %.not94 = icmp eq i32 %i.r, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = mul i32 %.fr97, %2                       ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv130 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 7 uses
  %.not96 = icmp eq i32 %i.p, 0
  %.not = icmp eq i32 %i.s, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 4 uses
  %i.w = zext i32 %i.s to i64                     ; 2 uses
  br i1 %.not96, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.x = add i32 %i.p, -1                         ; 3 uses
  %i.y = lshr i32 %i.x, 1
  %i.z = add nuw i32 %i.y, 1                      ; 2 uses
  %.pre = load i32, ptr %i.u, align 4, !tbaa !75
  %wide.trip.count = zext i32 %i.z to i64
  %wide.trip.count117 = zext i32 %i.z to i64
  %i.aa = lshr i32 %i.x, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 7                ; 2 uses
  %i.ad = lshr i32 %i.x, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 7                ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge76.split.us.us
  %i.ag = phi i32 [ %i.dx, %._crit_edge76.split.us.us ], [ %.pre, %.lr.ph.split.us.preheader ]
  %.06286.us = phi i32 [ %i.dy, %._crit_edge76.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !101
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.al = tail call ptr %i.aj(ptr noundef %0, ptr noundef %i.ak, i32 noundef %.06286.us, i32 noundef %i.ag, i32 noundef 1) #10 ; 2 uses
  %i.am = load i32, ptr %i.u, align 4, !tbaa !75  ; 5 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.preheader67.lr.ph.us, label %._crit_edge76.split.us.us

.preheader67.lr.ph.us:                            ; preds = %.lr.ph.split.us
  br i1 %.not, label %.preheader67.lr.ph.split.us.us.split.us, label %.preheader67.us.us

.preheader67.lr.ph.split.us.us.split.us:          ; preds = %.preheader67.lr.ph.us
  %wide.trip.count122 = zext nneg i32 %i.am to i64
  br label %.preheader67.us.us.us

.preheader67.us.us.us:                            ; preds = %._crit_edge.us.us.us, %.preheader67.lr.ph.split.us.us.split.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge.us.us.us ], [ 0, %.preheader67.lr.ph.split.us.us.split.us ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv119
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 8 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 128 ; 2 uses
  %scevgep183 = getelementptr i8, ptr %scevgep, i64 %i.ac ; 3 uses
  %scevgep184 = getelementptr nuw i8, ptr %i.ap, i64 2 ; 4 uses
  %scevgep185 = getelementptr i8, ptr %i.ap, i64 126 ; 2 uses
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.ac ; 3 uses
  %bound0187 = icmp ult ptr %i.ap, %scevgep183
  %bound1188 = icmp ult ptr %scevgep184, %scevgep186
  %found.conflict189 = and i1 %bound0187, %bound1188
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %middle.block, %.preheader67.us.us.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %middle.block ], [ 0, %.preheader67.us.us.us ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %indvars.iv114 ; 2 uses
  %i.ar = trunc i64 %indvars.iv114 to i32
  %i.as = xor i32 %i.ar, -1
  %i.at = add i32 %i.p, %i.as
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr [128 x i8], ptr %i.ap, i64 %i.au ; 5 uses
  %i.aw = shl nuw nsw i64 %i.au, 7                ; 3 uses
  %i.ax = getelementptr i8, ptr %scevgep185, i64 %i.aw ; 3 uses
  %bound0 = icmp ult ptr %i.ap, %i.ax
  %bound1 = icmp ult ptr %i.av, %scevgep186
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict189
  %i.ay = getelementptr i8, ptr %scevgep184, i64 %i.aw ; 3 uses
  %i.az = getelementptr i8, ptr %scevgep, i64 %i.aw ; 3 uses
  %bound0190 = icmp ult ptr %i.ap, %i.az
  %bound1191 = icmp ult ptr %i.ay, %scevgep186
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx, %found.conflict192
  %bound0194 = icmp ult ptr %i.av, %scevgep183
  %bound1195 = icmp ult ptr %scevgep184, %i.ax
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %i.av, %i.az
  %bound1199 = icmp ult ptr %i.ay, %i.ax
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %scevgep184, %i.az
  %bound1203 = icmp ult ptr %i.ay, %scevgep183
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  br i1 %conflict.rdx205, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ba = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.ba ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.aq, i64 %i.ba ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep206, align 2, !tbaa !23 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec207 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec208 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !23 ; 2 uses
  %strided.vec209 = shufflevector <8 x i16> %wide.vec208, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec210 = shufflevector <8 x i16> %wide.vec208, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bb = sub <4 x i16> zeroinitializer, %strided.vec210
  %interleaved.vec = shufflevector <4 x i16> %strided.vec209, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep206, align 2, !tbaa !23
  %i.bc = sub <4 x i16> zeroinitializer, %strided.vec207
  %interleaved.vec211 = shufflevector <4 x i16> %strided.vec, <4 x i16> %i.bc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec211, ptr %next.gep, align 2, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, 32
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !229

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.070.us.us.us = phi ptr [ %i.bx, %scalar.ph ], [ %i.av, %vector.memcheck ] ; 6 uses
  %.05869.us.us.us = phi ptr [ %i.bv, %scalar.ph ], [ %i.aq, %vector.memcheck ] ; 6 uses
  %.06068.us.us.us = phi i32 [ %i.by, %scalar.ph ], [ 0, %vector.memcheck ] ; 2 uses
  %i.be = load i16, ptr %.05869.us.us.us, align 2, !tbaa !23
  %i.bf = load i16, ptr %.070.us.us.us, align 2, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 2 ; 2 uses
  store i16 %i.bf, ptr %.05869.us.us.us, align 2, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 2 ; 2 uses
  store i16 %i.be, ptr %.070.us.us.us, align 2, !tbaa !23
  %i.bi = load i16, ptr %i.bg, align 2, !tbaa !23
  %i.bj = load i16, ptr %i.bh, align 2, !tbaa !23
  %i.bk = sub i16 0, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 4 ; 2 uses
  store i16 %i.bk, ptr %i.bg, align 2, !tbaa !23
  %i.bm = sub i16 0, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 4 ; 2 uses
  store i16 %i.bm, ptr %i.bh, align 2, !tbaa !23
  %i.bo = load i16, ptr %i.bl, align 2, !tbaa !23
  %i.bp = load i16, ptr %i.bn, align 2, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 6 ; 2 uses
  store i16 %i.bp, ptr %i.bl, align 2, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 6 ; 2 uses
  store i16 %i.bo, ptr %i.bn, align 2, !tbaa !23
  %i.bs = load i16, ptr %i.bq, align 2, !tbaa !23
  %i.bt = load i16, ptr %i.br, align 2, !tbaa !23
  %i.bu = sub i16 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 8
  store i16 %i.bu, ptr %i.bq, align 2, !tbaa !23
  %i.bw = sub i16 0, %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 8
  store i16 %i.bw, ptr %i.br, align 2, !tbaa !23
  %i.by = add nuw nsw i32 %.06068.us.us.us, 4
  %i.bz = icmp ult i32 %.06068.us.us.us, 60
  br i1 %i.bz, label %scalar.ph, label %middle.block, !llvm.loop !230

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge.us.us.us, label %vector.memcheck, !llvm.loop !231

._crit_edge.us.us.us:                             ; preds = %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge76.split.us.us, label %.preheader67.us.us.us, !llvm.loop !232

.preheader67.us.us:                               ; preds = %.preheader67.lr.ph.us, %.loopexit.us.us
  %i.ca = phi i32 [ %i.du, %.loopexit.us.us ], [ %i.am, %.preheader67.lr.ph.us ]
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.loopexit.us.us ], [ 0, %.preheader67.lr.ph.us ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv111 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20 ; 8 uses
  %scevgep247 = getelementptr i8, ptr %i.cc, i64 128 ; 2 uses
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.af ; 3 uses
  %scevgep249 = getelementptr nuw i8, ptr %i.cc, i64 2 ; 4 uses
  %scevgep250 = getelementptr i8, ptr %i.cc, i64 126 ; 2 uses
  %scevgep251 = getelementptr i8, ptr %scevgep250, i64 %i.af ; 3 uses
  %bound0257 = icmp ult ptr %i.cc, %scevgep248
  %bound1258 = icmp ult ptr %scevgep249, %scevgep251
  %found.conflict259 = and i1 %bound0257, %bound1258
  br label %vector.memcheck253

vector.memcheck253:                               ; preds = %middle.block291, %.preheader67.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %middle.block291 ], [ 0, %.preheader67.us.us ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.cc, i64 %indvars.iv ; 2 uses
  %i.ce = trunc i64 %indvars.iv to i32
  %i.cf = xor i32 %i.ce, -1
  %i.cg = add i32 %i.p, %i.cf
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr [128 x i8], ptr %i.cc, i64 %i.ch ; 5 uses
  %i.cj = shl nuw nsw i64 %i.ch, 7                ; 3 uses
  %i.ck = getelementptr i8, ptr %scevgep250, i64 %i.cj ; 3 uses
  %bound0254 = icmp ult ptr %i.cc, %i.ck
  %bound1255 = icmp ult ptr %i.ci, %scevgep251
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx260 = or i1 %found.conflict256, %found.conflict259
  %i.cl = getelementptr i8, ptr %scevgep249, i64 %i.cj ; 3 uses
  %i.cm = getelementptr i8, ptr %scevgep247, i64 %i.cj ; 3 uses
  %bound0261 = icmp ult ptr %i.cc, %i.cm
  %bound1262 = icmp ult ptr %i.cl, %scevgep251
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.ci, %scevgep248
  %bound1266 = icmp ult ptr %scevgep249, %i.ck
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  %bound0269 = icmp ult ptr %i.ci, %i.cm
  %bound1270 = icmp ult ptr %i.cl, %i.ck
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %conflict.rdx268, %found.conflict271
  %bound0273 = icmp ult ptr %scevgep249, %i.cm
  %bound1274 = icmp ult ptr %i.cl, %scevgep248
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx272, %found.conflict275
  br i1 %conflict.rdx276, label %scalar.ph252, label %vector.body278

vector.body278:                                   ; preds = %vector.memcheck253, %vector.body278
  %index279 = phi i64 [ %index.next290, %vector.body278 ], [ 0, %vector.memcheck253 ] ; 2 uses
  %i.cn = shl i64 %index279, 2                    ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.ci, i64 %i.cn ; 2 uses
  %next.gep281 = getelementptr i8, ptr %i.cd, i64 %i.cn ; 2 uses
  %wide.vec282 = load <8 x i16>, ptr %next.gep281, align 2, !tbaa !23 ; 2 uses
  %strided.vec283 = shufflevector <8 x i16> %wide.vec282, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec284 = shufflevector <8 x i16> %wide.vec282, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec285 = load <8 x i16>, ptr %next.gep280, align 2, !tbaa !23 ; 2 uses
  %strided.vec286 = shufflevector <8 x i16> %wide.vec285, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec287 = shufflevector <8 x i16> %wide.vec285, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.co = sub <4 x i16> zeroinitializer, %strided.vec287
  %interleaved.vec288 = shufflevector <4 x i16> %strided.vec286, <4 x i16> %i.co, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec288, ptr %next.gep281, align 2, !tbaa !23
  %i.cp = sub <4 x i16> zeroinitializer, %strided.vec284
  %interleaved.vec289 = shufflevector <4 x i16> %strided.vec283, <4 x i16> %i.cp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec289, ptr %next.gep280, align 2, !tbaa !23
  %index.next290 = add nuw i64 %index279, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next290, 32
  br i1 %i.cq, label %middle.block291, label %vector.body278, !llvm.loop !233

scalar.ph252:                                     ; preds = %vector.memcheck253, %scalar.ph252
  %.070.us.us = phi ptr [ %i.dk, %scalar.ph252 ], [ %i.ci, %vector.memcheck253 ] ; 6 uses
  %.05869.us.us = phi ptr [ %i.di, %scalar.ph252 ], [ %i.cd, %vector.memcheck253 ] ; 6 uses
  %.06068.us.us = phi i32 [ %i.dl, %scalar.ph252 ], [ 0, %vector.memcheck253 ] ; 2 uses
  %i.cr = load i16, ptr %.05869.us.us, align 2, !tbaa !23
  %i.cs = load i16, ptr %.070.us.us, align 2, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 2 ; 2 uses
  store i16 %i.cs, ptr %.05869.us.us, align 2, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 2 ; 2 uses
  store i16 %i.cr, ptr %.070.us.us, align 2, !tbaa !23
  %i.cv = load i16, ptr %i.ct, align 2, !tbaa !23
  %i.cw = load i16, ptr %i.cu, align 2, !tbaa !23
  %i.cx = sub i16 0, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 4 ; 2 uses
  store i16 %i.cx, ptr %i.ct, align 2, !tbaa !23
  %i.cz = sub i16 0, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 4 ; 2 uses
  store i16 %i.cz, ptr %i.cu, align 2, !tbaa !23
  %i.db = load i16, ptr %i.cy, align 2, !tbaa !23
  %i.dc = load i16, ptr %i.da, align 2, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 6 ; 2 uses
  store i16 %i.dc, ptr %i.cy, align 2, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 6 ; 2 uses
  store i16 %i.db, ptr %i.da, align 2, !tbaa !23
  %i.df = load i16, ptr %i.dd, align 2, !tbaa !23
  %i.dg = load i16, ptr %i.de, align 2, !tbaa !23
  %i.dh = sub i16 0, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 8
  store i16 %i.dh, ptr %i.dd, align 2, !tbaa !23
  %i.dj = sub i16 0, %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 8
  store i16 %i.dj, ptr %i.de, align 2, !tbaa !23
  %i.dl = add nuw nsw i32 %.06068.us.us, 4
  %i.dm = icmp ult i32 %.06068.us.us, 60
  br i1 %i.dm, label %scalar.ph252, label %middle.block291, !llvm.loop !234

middle.block291:                                  ; preds = %vector.body278, %scalar.ph252
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %vector.memcheck253, !llvm.loop !231

._crit_edge.us.us:                                ; preds = %middle.block291
  %i.dn = load i32, ptr %i.v, align 4, !tbaa !102
  %.not100 = icmp eq i32 %i.dn, 0
  br i1 %.not100, label %.loopexit.us.us, label %.lr.ph73.us.us

.lr.ph73.us.us:                                   ; preds = %._crit_edge.us.us, %.lr.ph73.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.lr.ph73.us.us ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %i.do = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.dp = getelementptr inbounds nuw [128 x i8], ptr %i.do, i64 %indvars.iv108 ; 2 uses
  %i.dq = getelementptr inbounds nuw [128 x i8], ptr %i.dp, i64 %i.w
  tail call void @jcopy_block_row(ptr noundef nonnull %i.dq, ptr noundef %i.dp, i32 noundef 1) #10
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.dr = load i32, ptr %i.v, align 4, !tbaa !102
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next109, %i.ds
  br i1 %i.dt, label %.lr.ph73.us.us, label %.loopexit.us.us.loopexit, !llvm.loop !235

.loopexit.us.us.loopexit:                         ; preds = %.lr.ph73.us.us
  %.pre133 = load i32, ptr %i.u, align 4, !tbaa !75
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %._crit_edge.us.us
  %i.du = phi i32 [ %.pre133, %.loopexit.us.us.loopexit ], [ %i.ca, %._crit_edge.us.us ] ; 3 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next112, %i.dv
  br i1 %i.dw, label %.preheader67.us.us, label %._crit_edge76.split.us.us, !llvm.loop !232

._crit_edge76.split.us.us:                        ; preds = %.loopexit.us.us, %._crit_edge.us.us.us, %.lr.ph.split.us
  %i.dx = phi i32 [ %i.am, %.lr.ph.split.us ], [ %i.am, %._crit_edge.us.us.us ], [ %i.du, %.loopexit.us.us ] ; 2 uses
  %i.dy = add i32 %i.dx, %.06286.us               ; 2 uses
  %i.dz = load i32, ptr %i.q, align 8, !tbaa !100
  %i.ea = icmp ult i32 %i.dy, %i.dz
  br i1 %i.ea, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !236

.lr.ph.split:                                     ; preds = %.lr.ph
  %.pre136 = load i32, ptr %i.u, align 4, !tbaa !75 ; 2 uses
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split.split.us
  %i.eb = phi i32 [ %i.eh, %.lr.ph.split.split.us ], [ %.pre136, %.lr.ph.split ]
  %.06286.us87 = phi i32 [ %i.ei, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ec = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !101
  %i.ef = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.eg = tail call ptr %i.ee(ptr noundef %0, ptr noundef %i.ef, i32 noundef %.06286.us87, i32 noundef %i.eb, i32 noundef 1) #10 ; 0 uses
  %i.eh = load i32, ptr %i.u, align 4, !tbaa !75  ; 2 uses
  %i.ei = add i32 %i.eh, %.06286.us87             ; 2 uses
  %i.ej = load i32, ptr %i.q, align 8, !tbaa !100
  %i.ek = icmp ult i32 %i.ei, %i.ej
  br i1 %i.ek, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !236

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %._crit_edge76.split.split
  %i.el = phi i32 [ %i.fh, %._crit_edge76.split.split ], [ %.pre136, %.lr.ph.split ]
  %.06286 = phi i32 [ %i.fi, %._crit_edge76.split.split ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !101
  %i.ep = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.eq = tail call ptr %i.eo(ptr noundef %0, ptr noundef %i.ep, i32 noundef %.06286, i32 noundef %i.el, i32 noundef 1) #10
  %i.er = load i32, ptr %i.u, align 4, !tbaa !75  ; 4 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.preheader67.lr.ph, label %._crit_edge76.split.split

.preheader67.lr.ph:                               ; preds = %.lr.ph.split.split
  %i.et = load i32, ptr %i.v, align 4, !tbaa !102
  %.not98 = icmp eq i32 %i.et, 0
  br i1 %.not98, label %._crit_edge76.split.split, label %.preheader67

.preheader67:                                     ; preds = %.preheader67.lr.ph, %.loopexit
  %i.eu = phi i32 [ %i.fd, %.loopexit ], [ %i.er, %.preheader67.lr.ph ]
  %i.ev = phi i32 [ %i.fe, %.loopexit ], [ 1, %.preheader67.lr.ph ]
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.loopexit ], [ 0, %.preheader67.lr.ph ] ; 2 uses
  %.not99 = icmp eq i32 %i.ev, 0
  br i1 %.not99, label %.loopexit, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader67
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv127
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph73, %bb.c
  %indvars.iv124 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next125, %bb.c ] ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw [128 x i8], ptr %i.ex, i64 %indvars.iv124 ; 2 uses
  %i.ez = getelementptr inbounds nuw [128 x i8], ptr %i.ey, i64 %i.w
  tail call void @jcopy_block_row(ptr noundef nonnull %i.ez, ptr noundef %i.ey, i32 noundef 1) #10
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.fa = load i32, ptr %i.v, align 4, !tbaa !102 ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next125, %i.fb
  br i1 %i.fc, label %bb.c, label %.loopexit.loopexit, !llvm.loop !235

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre135 = load i32, ptr %i.u, align 4, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader67
  %i.fd = phi i32 [ %.pre135, %.loopexit.loopexit ], [ %i.eu, %.preheader67 ] ; 3 uses
  %i.fe = phi i32 [ %i.fa, %.loopexit.loopexit ], [ 0, %.preheader67 ]
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
end_hunk_0
