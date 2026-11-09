Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/transupp?download=true
inline.NumInlined: 33
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 54
begin_hunk_0_@do_crop_ext_flat:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ek = getelementptr inbounds nuw [128 x i8], ptr %i.ei, i64 %indvars.iv156.prol
  store i16 %i.ef, ptr %i.ek, align 2, !tbaa !23
  %indvars.iv.next157.prol = add nuw nsw i64 %indvars.iv156.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter184
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !223

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv156.unr = phi i64 [ %i.bq, %.lr.ph ], [ %indvars.iv.next157.prol, %.prol.preheader ]
  %i.el = sub nsw i64 %i.bq, %wide.trip.count159
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv156 = phi i64 [ %indvars.iv.next157.3, %.lr.ph.new ], [ %indvars.iv156.unr, %.prol.loopexit ] ; 5 uses
  %i.en = getelementptr inbounds nuw [128 x i8], ptr %i.ei, i64 %indvars.iv156
  store i16 %i.ef, ptr %i.en, align 2, !tbaa !23
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr %i.ei, i64 %indvars.iv156
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  store i16 %i.ef, ptr %i.ep, align 2, !tbaa !23
  %i.eq = getelementptr inbounds nuw [128 x i8], ptr %i.ei, i64 %indvars.iv156
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 256
  store i16 %i.ef, ptr %i.er, align 2, !tbaa !23
  %i.es = getelementptr inbounds nuw [128 x i8], ptr %i.ei, i64 %indvars.iv156
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 384
  store i16 %i.ef, ptr %i.et, align 2, !tbaa !23
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %exitcond160.not.3 = icmp eq i64 %indvars.iv.next157.3, %wide.trip.count159
  br i1 %exitcond160.not.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !224

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.r, %.loopexit134
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.eu = load i32, ptr %i.ax, align 4, !tbaa !75 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next162, %i.ev
  br i1 %i.ew, label %.lr.ph140, label %.loopexit135, !llvm.loop !225

.loopexit135:                                     ; preds = %.lr.ph142, %.loopexit, %bb.o, %bb.l
  %i.ex = phi i32 [ %i.eu, %.loopexit ], [ %i.cc, %bb.l ], [ %i.da, %bb.o ], [ %i.cj, %.lr.ph142 ] ; 2 uses
  %i.ey = add i32 %i.ex, %.0119143                ; 2 uses
  %i.ez = load i32, ptr %i.bb, align 8, !tbaa !100
  %i.fa = icmp ult i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.j, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %.loopexit135, %bb.i
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.fb = load i32, ptr %i.af, align 4, !tbaa !96
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next165, %i.fc
  br i1 %i.fd, label %bb.g, label %._crit_edge149, !llvm.loop !227

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
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !228

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.as = phi i32 [ %i.ah, %bb.c ], [ %i.ap, %.lr.ph ] ; 2 uses
  %i.at = add i32 %i.as, %.03538                  ; 2 uses
  %i.au = load i32, ptr %i.l, align 8, !tbaa !100
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %bb.c, label %._crit_edge41.loopexit, !llvm.loop !229

._crit_edge41.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 4, !tbaa !96
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %bb.b
  %i.aw = phi i32 [ %.pre, %._crit_edge41.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next49, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge45, !llvm.loop !230

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
  %i.ac = shl nuw nsw i64 %i.ab, 7
  %i.ad = lshr i32 %i.x, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 7
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge76.split.us.us
  %i.ag = phi i32 [ %i.dv, %._crit_edge76.split.us.us ], [ %.pre, %.lr.ph.split.us.preheader ]
  %.06286.us = phi i32 [ %i.dw, %._crit_edge76.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
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
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 5 uses
  %scevgep185 = getelementptr i8, ptr %i.ap, i64 128
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.ac
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %middle.block, %.preheader67.us.us.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %middle.block ], [ 0, %.preheader67.us.us.us ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %indvars.iv114 ; 2 uses
  %i.ar = trunc i64 %indvars.iv114 to i32
  %i.as = xor i32 %i.ar, -1
  %i.at = add i32 %i.p, %i.as
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr [128 x i8], ptr %i.ap, i64 %i.au ; 3 uses
  %i.aw = shl nuw nsw i64 %i.au, 7
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 128
  %bound0202 = icmp ult ptr %i.ap, %i.ay
  %bound1203 = icmp ult ptr %i.av, %scevgep186
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.az ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep206, align 2, !tbaa !23, !alias.scope !247, !noalias !248 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec207 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec208 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !23, !alias.scope !248 ; 2 uses
  %strided.vec209 = shufflevector <8 x i16> %wide.vec208, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec210 = shufflevector <8 x i16> %wide.vec208, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = sub <4 x i16> zeroinitializer, %strided.vec210
  %interleaved.vec = shufflevector <4 x i16> %strided.vec209, <4 x i16> %i.ba, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep206, align 2, !tbaa !23, !alias.scope !247, !noalias !248
  %i.bb = sub <4 x i16> zeroinitializer, %strided.vec207
  %interleaved.vec211 = shufflevector <4 x i16> %strided.vec, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec211, ptr %next.gep, align 2, !tbaa !23, !alias.scope !248
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, 32
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !234

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.070.us.us.us = phi ptr [ %i.bw, %scalar.ph ], [ %i.av, %vector.memcheck ] ; 6 uses
  %.05869.us.us.us = phi ptr [ %i.bu, %scalar.ph ], [ %i.aq, %vector.memcheck ] ; 6 uses
  %.06068.us.us.us = phi i32 [ %i.bx, %scalar.ph ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bd = load i16, ptr %.05869.us.us.us, align 2, !tbaa !23
  %i.be = load i16, ptr %.070.us.us.us, align 2, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 2 ; 2 uses
  store i16 %i.be, ptr %.05869.us.us.us, align 2, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 2 ; 2 uses
  store i16 %i.bd, ptr %.070.us.us.us, align 2, !tbaa !23
  %i.bh = load i16, ptr %i.bf, align 2, !tbaa !23
  %i.bi = load i16, ptr %i.bg, align 2, !tbaa !23
  %i.bj = sub i16 0, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 4 ; 2 uses
  store i16 %i.bj, ptr %i.bf, align 2, !tbaa !23
  %i.bl = sub i16 0, %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 4 ; 2 uses
  store i16 %i.bl, ptr %i.bg, align 2, !tbaa !23
  %i.bn = load i16, ptr %i.bk, align 2, !tbaa !23
  %i.bo = load i16, ptr %i.bm, align 2, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 6 ; 2 uses
  store i16 %i.bo, ptr %i.bk, align 2, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 6 ; 2 uses
  store i16 %i.bn, ptr %i.bm, align 2, !tbaa !23
  %i.br = load i16, ptr %i.bp, align 2, !tbaa !23
  %i.bs = load i16, ptr %i.bq, align 2, !tbaa !23
  %i.bt = sub i16 0, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.05869.us.us.us, i64 8
  store i16 %i.bt, ptr %i.bp, align 2, !tbaa !23
  %i.bv = sub i16 0, %i.br
  %i.bw = getelementptr inbounds nuw i8, ptr %.070.us.us.us, i64 8
  store i16 %i.bv, ptr %i.bq, align 2, !tbaa !23
  %i.bx = add nuw nsw i32 %.06068.us.us.us, 4
  %i.by = icmp ult i32 %.06068.us.us.us, 60
  br i1 %i.by, label %scalar.ph, label %middle.block, !llvm.loop !235

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge.us.us.us, label %vector.memcheck, !llvm.loop !236

._crit_edge.us.us.us:                             ; preds = %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge76.split.us.us, label %.preheader67.us.us.us, !llvm.loop !237

.preheader67.us.us:                               ; preds = %.preheader67.lr.ph.us, %.loopexit.us.us
  %i.bz = phi i32 [ %i.ds, %.loopexit.us.us ], [ %i.am, %.preheader67.lr.ph.us ]
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.loopexit.us.us ], [ 0, %.preheader67.lr.ph.us ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv111 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !20 ; 5 uses
  %scevgep250 = getelementptr i8, ptr %i.cb, i64 128
  %scevgep251 = getelementptr i8, ptr %scevgep250, i64 %i.af
  br label %vector.memcheck253

vector.memcheck253:                               ; preds = %middle.block291, %.preheader67.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %middle.block291 ], [ 0, %.preheader67.us.us ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.cd = trunc i64 %indvars.iv to i32
  %i.ce = xor i32 %i.cd, -1
  %i.cf = add i32 %i.p, %i.ce
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr [128 x i8], ptr %i.cb, i64 %i.cg ; 3 uses
  %i.ci = shl nuw nsw i64 %i.cg, 7
  %i.cj = getelementptr i8, ptr %i.cb, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 128
  %bound0273 = icmp ult ptr %i.cb, %i.ck
  %bound1274 = icmp ult ptr %i.ch, %scevgep251
  %found.conflict275 = and i1 %bound0273, %bound1274
  br i1 %found.conflict275, label %scalar.ph252, label %vector.body278

vector.body278:                                   ; preds = %vector.memcheck253, %vector.body278
  %index279 = phi i64 [ %index.next290, %vector.body278 ], [ 0, %vector.memcheck253 ] ; 2 uses
  %i.cl = shl i64 %index279, 2                    ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.ch, i64 %i.cl ; 2 uses
  %next.gep281 = getelementptr i8, ptr %i.cc, i64 %i.cl ; 2 uses
  %wide.vec282 = load <8 x i16>, ptr %next.gep281, align 2, !tbaa !23, !alias.scope !251, !noalias !252 ; 2 uses
  %strided.vec283 = shufflevector <8 x i16> %wide.vec282, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec284 = shufflevector <8 x i16> %wide.vec282, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec285 = load <8 x i16>, ptr %next.gep280, align 2, !tbaa !23, !alias.scope !252 ; 2 uses
  %strided.vec286 = shufflevector <8 x i16> %wide.vec285, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec287 = shufflevector <8 x i16> %wide.vec285, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cm = sub <4 x i16> zeroinitializer, %strided.vec287
  %interleaved.vec288 = shufflevector <4 x i16> %strided.vec286, <4 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec288, ptr %next.gep281, align 2, !tbaa !23, !alias.scope !251, !noalias !252
  %i.cn = sub <4 x i16> zeroinitializer, %strided.vec284
  %interleaved.vec289 = shufflevector <4 x i16> %strided.vec283, <4 x i16> %i.cn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec289, ptr %next.gep280, align 2, !tbaa !23, !alias.scope !252
  %index.next290 = add nuw i64 %index279, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next290, 32
  br i1 %i.co, label %middle.block291, label %vector.body278, !llvm.loop !241

scalar.ph252:                                     ; preds = %vector.memcheck253, %scalar.ph252
  %.070.us.us = phi ptr [ %i.di, %scalar.ph252 ], [ %i.ch, %vector.memcheck253 ] ; 6 uses
  %.05869.us.us = phi ptr [ %i.dg, %scalar.ph252 ], [ %i.cc, %vector.memcheck253 ] ; 6 uses
  %.06068.us.us = phi i32 [ %i.dj, %scalar.ph252 ], [ 0, %vector.memcheck253 ] ; 2 uses
  %i.cp = load i16, ptr %.05869.us.us, align 2, !tbaa !23
  %i.cq = load i16, ptr %.070.us.us, align 2, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 2 ; 2 uses
  store i16 %i.cq, ptr %.05869.us.us, align 2, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 2 ; 2 uses
  store i16 %i.cp, ptr %.070.us.us, align 2, !tbaa !23
  %i.ct = load i16, ptr %i.cr, align 2, !tbaa !23
  %i.cu = load i16, ptr %i.cs, align 2, !tbaa !23
  %i.cv = sub i16 0, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 4 ; 2 uses
  store i16 %i.cv, ptr %i.cr, align 2, !tbaa !23
  %i.cx = sub i16 0, %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 4 ; 2 uses
  store i16 %i.cx, ptr %i.cs, align 2, !tbaa !23
  %i.cz = load i16, ptr %i.cw, align 2, !tbaa !23
  %i.da = load i16, ptr %i.cy, align 2, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 6 ; 2 uses
  store i16 %i.da, ptr %i.cw, align 2, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 6 ; 2 uses
  store i16 %i.cz, ptr %i.cy, align 2, !tbaa !23
  %i.dd = load i16, ptr %i.db, align 2, !tbaa !23
  %i.de = load i16, ptr %i.dc, align 2, !tbaa !23
  %i.df = sub i16 0, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.05869.us.us, i64 8
  store i16 %i.df, ptr %i.db, align 2, !tbaa !23
  %i.dh = sub i16 0, %i.dd
  %i.di = getelementptr inbounds nuw i8, ptr %.070.us.us, i64 8
  store i16 %i.dh, ptr %i.dc, align 2, !tbaa !23
  %i.dj = add nuw nsw i32 %.06068.us.us, 4
  %i.dk = icmp ult i32 %.06068.us.us, 60
  br i1 %i.dk, label %scalar.ph252, label %middle.block291, !llvm.loop !242

middle.block291:                                  ; preds = %vector.body278, %scalar.ph252
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %vector.memcheck253, !llvm.loop !236

._crit_edge.us.us:                                ; preds = %middle.block291
  %i.dl = load i32, ptr %i.v, align 4, !tbaa !102
  %.not100 = icmp eq i32 %i.dl, 0
  br i1 %.not100, label %.loopexit.us.us, label %.lr.ph73.us.us

.lr.ph73.us.us:                                   ; preds = %._crit_edge.us.us, %.lr.ph73.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.lr.ph73.us.us ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %i.dm = load ptr, ptr %i.ca, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw [128 x i8], ptr %i.dm, i64 %indvars.iv108 ; 2 uses
  %i.do = getelementptr inbounds nuw [128 x i8], ptr %i.dn, i64 %i.w
  tail call void @jcopy_block_row(ptr noundef nonnull %i.do, ptr noundef %i.dn, i32 noundef 1) #10
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.dp = load i32, ptr %i.v, align 4, !tbaa !102
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next109, %i.dq
  br i1 %i.dr, label %.lr.ph73.us.us, label %.loopexit.us.us.loopexit, !llvm.loop !243

.loopexit.us.us.loopexit:                         ; preds = %.lr.ph73.us.us
  %.pre133 = load i32, ptr %i.u, align 4, !tbaa !75
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %._crit_edge.us.us
  %i.ds = phi i32 [ %.pre133, %.loopexit.us.us.loopexit ], [ %i.bz, %._crit_edge.us.us ] ; 3 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next112, %i.dt
  br i1 %i.du, label %.preheader67.us.us, label %._crit_edge76.split.us.us, !llvm.loop !237

._crit_edge76.split.us.us:                        ; preds = %.loopexit.us.us, %._crit_edge.us.us.us, %.lr.ph.split.us
  %i.dv = phi i32 [ %i.am, %.lr.ph.split.us ], [ %i.am, %._crit_edge.us.us.us ], [ %i.ds, %.loopexit.us.us ] ; 2 uses
  %i.dw = add i32 %i.dv, %.06286.us               ; 2 uses
  %i.dx = load i32, ptr %i.q, align 8, !tbaa !100
  %i.dy = icmp ult i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !244

.lr.ph.split:                                     ; preds = %.lr.ph
  %.pre136 = load i32, ptr %i.u, align 4, !tbaa !75 ; 2 uses
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split.split.us
  %i.dz = phi i32 [ %i.ef, %.lr.ph.split.split.us ], [ %.pre136, %.lr.ph.split ]
  %.06286.us87 = phi i32 [ %i.eg, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !101
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.ee = tail call ptr %i.ec(ptr noundef %0, ptr noundef %i.ed, i32 noundef %.06286.us87, i32 noundef %i.dz, i32 noundef 1) #10 ; 0 uses
  %i.ef = load i32, ptr %i.u, align 4, !tbaa !75  ; 2 uses
  %i.eg = add i32 %i.ef, %.06286.us87             ; 2 uses
  %i.eh = load i32, ptr %i.q, align 8, !tbaa !100
  %i.ei = icmp ult i32 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !244

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %._crit_edge76.split.split
  %i.ej = phi i32 [ %i.ff, %._crit_edge76.split.split ], [ %.pre136, %.lr.ph.split ]
  %.06286 = phi i32 [ %i.fg, %._crit_edge76.split.split ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !101
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.eo = tail call ptr %i.em(ptr noundef %0, ptr noundef %i.en, i32 noundef %.06286, i32 noundef %i.ej, i32 noundef 1) #10
  %i.ep = load i32, ptr %i.u, align 4, !tbaa !75  ; 4 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader67.lr.ph, label %._crit_edge76.split.split

.preheader67.lr.ph:                               ; preds = %.lr.ph.split.split
  %i.er = load i32, ptr %i.v, align 4, !tbaa !102
  %.not98 = icmp eq i32 %i.er, 0
  br i1 %.not98, label %._crit_edge76.split.split, label %.preheader67

.preheader67:                                     ; preds = %.preheader67.lr.ph, %.loopexit
  %i.es = phi i32 [ %i.fb, %.loopexit ], [ %i.ep, %.preheader67.lr.ph ]
  %i.et = phi i32 [ %i.fc, %.loopexit ], [ 1, %.preheader67.lr.ph ]
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.loopexit ], [ 0, %.preheader67.lr.ph ] ; 2 uses
  %.not99 = icmp eq i32 %i.et, 0
  br i1 %.not99, label %.loopexit, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader67
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv127
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph73, %bb.c
  %indvars.iv124 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next125, %bb.c ] ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw [128 x i8], ptr %i.ev, i64 %indvars.iv124 ; 2 uses
  %i.ex = getelementptr inbounds nuw [128 x i8], ptr %i.ew, i64 %i.w
  tail call void @jcopy_block_row(ptr noundef nonnull %i.ex, ptr noundef %i.ew, i32 noundef 1) #10
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.ey = load i32, ptr %i.v, align 4, !tbaa !102 ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = icmp samesign ult i64 %indvars.iv.next125, %i.ez
  br i1 %i.fa, label %bb.c, label %.loopexit.loopexit, !llvm.loop !243

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre135 = load i32, ptr %i.u, align 4, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader67
  %i.fb = phi i32 [ %.pre135, %.loopexit.loopexit ], [ %i.es, %.preheader67 ] ; 3 uses
  %i.fc = phi i32 [ %i.ey, %.loopexit.loopexit ], [ 0, %.preheader67 ]
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.fd = sext i32 %i.fb to i64
  %i.fe = icmp slt i64 %indvars.iv.next128, %i.fd
  br i1 %i.fe, label %.preheader67, label %._crit_edge76.split.split, !llvm.loop !245

._crit_edge76.split.split:                        ; preds = %.loopexit, %.preheader67.lr.ph, %.lr.ph.split.split
  %i.ff = phi i32 [ %i.ep, %.lr.ph.split.split ], [ %i.ep, %.preheader67.lr.ph ], [ %i.fb, %.loopexit ] ; 2 uses
  %i.fg = add i32 %i.ff, %.06286                  ; 2 uses
  %i.fh = load i32, ptr %i.q, align 8, !tbaa !100
  %i.fi = icmp ult i32 %i.fg, %i.fh
  br i1 %i.fi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !244

._crit_edge:                                      ; preds = %._crit_edge76.split.us.us, %._crit_edge76.split.split, %.lr.ph.split.split.us, %bb.b
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !96
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next131, %i.fk
  br i1 %i.fl, label %bb.b, label %._crit_edge93, !llvm.loop !246

._crit_edge93:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_reflect(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph141, label %._crit_edge

.lr.ph141:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph141, %._crit_edge128
  %indvars.iv162 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next163, %._crit_edge128 ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %indvars.iv162 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !74
  %.fr143 = freeze i32 %i.i                       ; 2 uses
  %i.j = mul i32 %.fr143, %2                      ; 4 uses
  %i.k = mul i32 %.fr143, %4                      ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75   ; 3 uses
  %i.n = mul i32 %i.m, %5                         ; 4 uses
  %.not142 = icmp eq i32 %i.n, 0
  br i1 %.not142, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv162 ; 3 uses
  %.not = icmp eq i32 %i.j, 0
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 3 uses
  %i.r = zext i32 %i.k to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 7                  ; 2 uses
  %.not92115 = icmp eq i32 %i.k, 0                ; 2 uses
  br i1 %.not, label %.lr.ph127.split.us, label %.lr.ph127.split

.lr.ph127.split.us:                               ; preds = %.lr.ph127, %._crit_edge.split.us.us
  %i.t = phi i32 [ %i.jq, %._crit_edge.split.us.us ], [ %i.m, %.lr.ph127 ]
  %.088125.us = phi i32 [ %i.jr, %._crit_edge.split.us.us ], [ 0, %.lr.ph127 ] ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.y = tail call ptr %i.w(ptr noundef %0, ptr noundef %i.x, i32 noundef %.088125.us, i32 noundef %i.t, i32 noundef 1) #10 ; 3 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !75   ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.us, label %._crit_edge.split.us.us

.lr.ph.us:                                        ; preds = %.lr.ph127.split.us
  br i1 %.not92115, label %.lr.ph.split.us.split.us.us, label %.lr.ph.split.us.split.us129

.lr.ph.split.us.split.us129:                      ; preds = %.lr.ph.us, %..loopexit95_crit_edge.us.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %..loopexit95_crit_edge.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ab = load i32, ptr %i.q, align 4, !tbaa !102 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.k
  br i1 %i.ac, label %.lr.ph118.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us129
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv156
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ae, i8 0, i64 %i.s, i1 false)
  br label %..loopexit95_crit_edge.us.us

.lr.ph118.us.us:                                  ; preds = %.lr.ph.split.us.split.us129
  %i.af = sub nuw i32 %i.ab, %i.k                 ; 3 uses
  %.not144 = icmp eq i32 %i.af, 0
  br i1 %.not144, label %.loopexit, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph118.us.us
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv156
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ah, i64 %i.r ; 2 uses
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.preheader
  %.3113.us.us.us = phi ptr [ %i.ai, %.lr.ph.us.us.us.preheader ], [ %i.aj, %.lr.ph.us.us.us ] ; 64 uses
  %.177112.us.us.us = phi ptr [ %i.ai, %.lr.ph.us.us.us.preheader ], [ %.mux, %.lr.ph.us.us.us ] ; 65 uses
  %.385111.us.us.us = phi i32 [ %i.k, %.lr.ph.us.us.us.preheader ], [ %i.ja, %.lr.ph.us.us.us ]
  %.187110.us.us.us = phi i32 [ %i.af, %.lr.ph.us.us.us.preheader ], [ %.mux207, %.lr.ph.us.us.us ]
  %i.aj = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -128 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 2
  %i.al = load i16, ptr %.177112.us.us.us, align 2, !tbaa !23
  %i.am = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -126
  store i16 %i.al, ptr %i.aj, align 2, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 4
  %i.ao = load i16, ptr %i.ak, align 2, !tbaa !23
  %i.ap = sub i16 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -124
  store i16 %i.ap, ptr %i.am, align 2, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 6
  %i.as = load i16, ptr %i.an, align 2, !tbaa !23
  %i.at = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -122
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 8
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !23
  %i.aw = sub i16 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -120
  store i16 %i.aw, ptr %i.at, align 2, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 10
  %i.az = load i16, ptr %i.au, align 2, !tbaa !23
  %i.ba = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -118
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 12
  %i.bc = load i16, ptr %i.ay, align 2, !tbaa !23
  %i.bd = sub i16 0, %i.bc
  %i.be = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -116
  store i16 %i.bd, ptr %i.ba, align 2, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 14
  %i.bg = load i16, ptr %i.bb, align 2, !tbaa !23
  %i.bh = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -114
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 16
  %i.bj = load i16, ptr %i.bf, align 2, !tbaa !23
  %i.bk = sub i16 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -112
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 18
  %i.bn = load i16, ptr %i.bi, align 2, !tbaa !23
  %i.bo = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -110
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 20
  %i.bq = load i16, ptr %i.bm, align 2, !tbaa !23
  %i.br = sub i16 0, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -108
  store i16 %i.br, ptr %i.bo, align 2, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 22
  %i.bu = load i16, ptr %i.bp, align 2, !tbaa !23
  %i.bv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -106
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 24
  %i.bx = load i16, ptr %i.bt, align 2, !tbaa !23
  %i.by = sub i16 0, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -104
  store i16 %i.by, ptr %i.bv, align 2, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 26
  %i.cb = load i16, ptr %i.bw, align 2, !tbaa !23
  %i.cc = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -102
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 28
  %i.ce = load i16, ptr %i.ca, align 2, !tbaa !23
  %i.cf = sub i16 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -100
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 30
  %i.ci = load i16, ptr %i.cd, align 2, !tbaa !23
  %i.cj = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -98
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 32
  %i.cl = load i16, ptr %i.ch, align 2, !tbaa !23
  %i.cm = sub i16 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -96
  store i16 %i.cm, ptr %i.cj, align 2, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 34
  %i.cp = load i16, ptr %i.ck, align 2, !tbaa !23
  %i.cq = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -94
  store i16 %i.cp, ptr %i.cn, align 2, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 36
  %i.cs = load i16, ptr %i.co, align 2, !tbaa !23
  %i.ct = sub i16 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -92
  store i16 %i.ct, ptr %i.cq, align 2, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 38
  %i.cw = load i16, ptr %i.cr, align 2, !tbaa !23
  %i.cx = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -90
  store i16 %i.cw, ptr %i.cu, align 2, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 40
  %i.cz = load i16, ptr %i.cv, align 2, !tbaa !23
  %i.da = sub i16 0, %i.cz
  %i.db = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -88
  store i16 %i.da, ptr %i.cx, align 2, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 42
  %i.dd = load i16, ptr %i.cy, align 2, !tbaa !23
  %i.de = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -86
  store i16 %i.dd, ptr %i.db, align 2, !tbaa !23
  %i.df = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 44
  %i.dg = load i16, ptr %i.dc, align 2, !tbaa !23
  %i.dh = sub i16 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -84
  store i16 %i.dh, ptr %i.de, align 2, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 46
  %i.dk = load i16, ptr %i.df, align 2, !tbaa !23
  %i.dl = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -82
  store i16 %i.dk, ptr %i.di, align 2, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 48
  %i.dn = load i16, ptr %i.dj, align 2, !tbaa !23
  %i.do = sub i16 0, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -80
  store i16 %i.do, ptr %i.dl, align 2, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 50
  %i.dr = load i16, ptr %i.dm, align 2, !tbaa !23
  %i.ds = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -78
  store i16 %i.dr, ptr %i.dp, align 2, !tbaa !23
  %i.dt = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 52
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !23
  %i.dv = sub i16 0, %i.du
  %i.dw = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -76
  store i16 %i.dv, ptr %i.ds, align 2, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 54
  %i.dy = load i16, ptr %i.dt, align 2, !tbaa !23
  %i.dz = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -74
  store i16 %i.dy, ptr %i.dw, align 2, !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 56
  %i.eb = load i16, ptr %i.dx, align 2, !tbaa !23
  %i.ec = sub i16 0, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -72
  store i16 %i.ec, ptr %i.dz, align 2, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 58
  %i.ef = load i16, ptr %i.ea, align 2, !tbaa !23
  %i.eg = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -70
  store i16 %i.ef, ptr %i.ed, align 2, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 60
  %i.ei = load i16, ptr %i.ee, align 2, !tbaa !23
  %i.ej = sub i16 0, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -68
  store i16 %i.ej, ptr %i.eg, align 2, !tbaa !23
  %i.el = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 62
  %i.em = load i16, ptr %i.eh, align 2, !tbaa !23
  %i.en = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -66
  store i16 %i.em, ptr %i.ek, align 2, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 64
  %i.ep = load i16, ptr %i.el, align 2, !tbaa !23
  %i.eq = sub i16 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -64
  store i16 %i.eq, ptr %i.en, align 2, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 66
  %i.et = load i16, ptr %i.eo, align 2, !tbaa !23
  %i.eu = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -62
  store i16 %i.et, ptr %i.er, align 2, !tbaa !23
  %i.ev = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 68
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !23
  %i.ex = sub i16 0, %i.ew
  %i.ey = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -60
  store i16 %i.ex, ptr %i.eu, align 2, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 70
  %i.fa = load i16, ptr %i.ev, align 2, !tbaa !23
  %i.fb = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -58
  store i16 %i.fa, ptr %i.ey, align 2, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 72
  %i.fd = load i16, ptr %i.ez, align 2, !tbaa !23
  %i.fe = sub i16 0, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -56
  store i16 %i.fe, ptr %i.fb, align 2, !tbaa !23
  %i.fg = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 74
  %i.fh = load i16, ptr %i.fc, align 2, !tbaa !23
  %i.fi = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -54
  store i16 %i.fh, ptr %i.ff, align 2, !tbaa !23
  %i.fj = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 76
  %i.fk = load i16, ptr %i.fg, align 2, !tbaa !23
  %i.fl = sub i16 0, %i.fk
  %i.fm = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -52
  store i16 %i.fl, ptr %i.fi, align 2, !tbaa !23
  %i.fn = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 78
  %i.fo = load i16, ptr %i.fj, align 2, !tbaa !23
  %i.fp = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -50
  store i16 %i.fo, ptr %i.fm, align 2, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 80
  %i.fr = load i16, ptr %i.fn, align 2, !tbaa !23
  %i.fs = sub i16 0, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -48
  store i16 %i.fs, ptr %i.fp, align 2, !tbaa !23
  %i.fu = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 82
  %i.fv = load i16, ptr %i.fq, align 2, !tbaa !23
  %i.fw = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -46
  store i16 %i.fv, ptr %i.ft, align 2, !tbaa !23
  %i.fx = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 84
  %i.fy = load i16, ptr %i.fu, align 2, !tbaa !23
  %i.fz = sub i16 0, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -44
  store i16 %i.fz, ptr %i.fw, align 2, !tbaa !23
  %i.gb = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 86
  %i.gc = load i16, ptr %i.fx, align 2, !tbaa !23
  %i.gd = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -42
  store i16 %i.gc, ptr %i.ga, align 2, !tbaa !23
  %i.ge = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 88
  %i.gf = load i16, ptr %i.gb, align 2, !tbaa !23
  %i.gg = sub i16 0, %i.gf
  %i.gh = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -40
  store i16 %i.gg, ptr %i.gd, align 2, !tbaa !23
  %i.gi = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 90
  %i.gj = load i16, ptr %i.ge, align 2, !tbaa !23
  %i.gk = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -38
  store i16 %i.gj, ptr %i.gh, align 2, !tbaa !23
  %i.gl = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 92
  %i.gm = load i16, ptr %i.gi, align 2, !tbaa !23
  %i.gn = sub i16 0, %i.gm
  %i.go = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -36
  store i16 %i.gn, ptr %i.gk, align 2, !tbaa !23
  %i.gp = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 94
  %i.gq = load i16, ptr %i.gl, align 2, !tbaa !23
  %i.gr = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -34
  store i16 %i.gq, ptr %i.go, align 2, !tbaa !23
  %i.gs = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 96
  %i.gt = load i16, ptr %i.gp, align 2, !tbaa !23
  %i.gu = sub i16 0, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -32
  store i16 %i.gu, ptr %i.gr, align 2, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 98
  %i.gx = load i16, ptr %i.gs, align 2, !tbaa !23
  %i.gy = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -30
  store i16 %i.gx, ptr %i.gv, align 2, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 100
  %i.ha = load i16, ptr %i.gw, align 2, !tbaa !23
  %i.hb = sub i16 0, %i.ha
  %i.hc = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -28
  store i16 %i.hb, ptr %i.gy, align 2, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 102
  %i.he = load i16, ptr %i.gz, align 2, !tbaa !23
  %i.hf = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -26
  store i16 %i.he, ptr %i.hc, align 2, !tbaa !23
  %i.hg = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 104
  %i.hh = load i16, ptr %i.hd, align 2, !tbaa !23
  %i.hi = sub i16 0, %i.hh
  %i.hj = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -24
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !23
  %i.hk = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 106
  %i.hl = load i16, ptr %i.hg, align 2, !tbaa !23
  %i.hm = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -22
  store i16 %i.hl, ptr %i.hj, align 2, !tbaa !23
  %i.hn = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 108
  %i.ho = load i16, ptr %i.hk, align 2, !tbaa !23
  %i.hp = sub i16 0, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -20
  store i16 %i.hp, ptr %i.hm, align 2, !tbaa !23
  %i.hr = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 110
  %i.hs = load i16, ptr %i.hn, align 2, !tbaa !23
  %i.ht = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -18
  store i16 %i.hs, ptr %i.hq, align 2, !tbaa !23
  %i.hu = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 112
  %i.hv = load i16, ptr %i.hr, align 2, !tbaa !23
  %i.hw = sub i16 0, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -16
  store i16 %i.hw, ptr %i.ht, align 2, !tbaa !23
  %i.hy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 114
  %i.hz = load i16, ptr %i.hu, align 2, !tbaa !23
  %i.ia = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -14
  store i16 %i.hz, ptr %i.hx, align 2, !tbaa !23
  %i.ib = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 116
  %i.ic = load i16, ptr %i.hy, align 2, !tbaa !23
  %i.id = sub i16 0, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -12
  store i16 %i.id, ptr %i.ia, align 2, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 118
  %i.ig = load i16, ptr %i.ib, align 2, !tbaa !23
  %i.ih = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -10
  store i16 %i.ig, ptr %i.ie, align 2, !tbaa !23
  %i.ii = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 120
  %i.ij = load i16, ptr %i.if, align 2, !tbaa !23
  %i.ik = sub i16 0, %i.ij
  %i.il = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -8
  store i16 %i.ik, ptr %i.ih, align 2, !tbaa !23
  %i.im = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 122
  %i.in = load i16, ptr %i.ii, align 2, !tbaa !23
  %i.io = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -6
  store i16 %i.in, ptr %i.il, align 2, !tbaa !23
  %i.ip = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 124
  %i.iq = load i16, ptr %i.im, align 2, !tbaa !23
  %i.ir = sub i16 0, %i.iq
  %i.is = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -4
  store i16 %i.ir, ptr %i.io, align 2, !tbaa !23
  %i.it = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 126
  %i.iu = load i16, ptr %i.ip, align 2, !tbaa !23
  %i.iv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -2
  store i16 %i.iu, ptr %i.is, align 2, !tbaa !23
  %i.iw = load i16, ptr %i.it, align 2, !tbaa !23
  %i.ix = sub i16 0, %i.iw
  store i16 %i.ix, ptr %i.iv, align 2, !tbaa !23
  %i.iy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 128
  %i.iz = add i32 %.187110.us.us.us, -1           ; 2 uses
  %i.ja = add i32 %.385111.us.us.us, -1           ; 2 uses
  %i.jb = icmp ne i32 %i.iz, 0
  %i.jc = icmp ne i32 %i.ja, 0                    ; 2 uses
  %i.jd = select i1 %i.jb, i1 %i.jc, i1 false     ; 3 uses
  %brmerge = select i1 %i.jd, i1 true, i1 %i.jc
  %.mux = select i1 %i.jd, ptr %i.iy, ptr %i.aj
  %.mux207 = select i1 %i.jd, i32 %i.iz, i32 %i.af
  br i1 %brmerge, label %.lr.ph.us.us.us, label %..loopexit95_crit_edge.us.us, !llvm.loop !253

..loopexit95_crit_edge.us.us:                     ; preds = %.lr.ph.us.us.us, %bb.c
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.je = load i32, ptr %i.l, align 4, !tbaa !75  ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv.next157, %i.jf
  br i1 %i.jg, label %.lr.ph.split.us.split.us129, label %._crit_edge.split.us.us, !llvm.loop !254

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.us
  %i.jh = load i32, ptr %i.q, align 4, !tbaa !102
  %.not180 = icmp eq i32 %i.jh, 0
  br i1 %.not180, label %.lr.ph.split.us.split.us.split.us133, label %._crit_edge.split.us.us

.lr.ph.split.us.split.us.split.us133:             ; preds = %.lr.ph.split.us.split.us.us, %.loopexit95.us.us.us135
  %i.ji = phi i32 [ %i.jm, %.loopexit95.us.us.us135 ], [ %i.z, %.lr.ph.split.us.split.us.us ]
  %i.jj = phi i32 [ %i.jn, %.loopexit95.us.us.us135 ], [ 0, %.lr.ph.split.us.split.us.us ] ; 2 uses
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.loopexit95.us.us.us135 ], [ 0, %.lr.ph.split.us.split.us.us ] ; 2 uses
  %.not181 = icmp eq i32 %i.jj, 0
  br i1 %.not181, label %bb.d, label %.loopexit95.us.us.us135

bb.d:                                             ; preds = %.lr.ph.split.us.split.us.split.us133
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv159
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.jl, i8 0, i64 %i.s, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !102
  %.pre168 = load i32, ptr %i.l, align 4, !tbaa !75
  br label %.loopexit95.us.us.us135

.loopexit95.us.us.us135:                          ; preds = %.lr.ph.split.us.split.us.split.us133, %bb.d
  %i.jm = phi i32 [ %i.ji, %.lr.ph.split.us.split.us.split.us133 ], [ %.pre168, %bb.d ] ; 3 uses
  %i.jn = phi i32 [ %i.jj, %.lr.ph.split.us.split.us.split.us133 ], [ %.pre, %bb.d ]
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.jo = sext i32 %i.jm to i64
  %i.jp = icmp slt i64 %indvars.iv.next160, %i.jo
  br i1 %i.jp, label %.lr.ph.split.us.split.us.split.us133, label %._crit_edge.split.us.us, !llvm.loop !255

._crit_edge.split.us.us:                          ; preds = %..loopexit95_crit_edge.us.us, %.loopexit95.us.us.us135, %.lr.ph.split.us.split.us.us, %.lr.ph127.split.us
  %i.jq = phi i32 [ %i.z, %.lr.ph127.split.us ], [ %i.z, %.lr.ph.split.us.split.us.us ], [ %i.jm, %.loopexit95.us.us.us135 ], [ %i.je, %..loopexit95_crit_edge.us.us ] ; 2 uses
  %i.jr = add i32 %i.jq, %.088125.us              ; 2 uses
  %i.js = icmp ult i32 %i.jr, %i.n
  br i1 %i.js, label %.lr.ph127.split.us, label %._crit_edge128, !llvm.loop !256

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %.not92115, label %.lr.ph127.split.split.us, label %.lr.ph127.split.split

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split, %.lr.ph127.split.split.us
  %i.jt = phi i32 [ %i.jz, %.lr.ph127.split.split.us ], [ %i.m, %.lr.ph127.split ]
  %.088125.us137 = phi i32 [ %i.ka, %.lr.ph127.split.split.us ], [ 0, %.lr.ph127.split ] ; 2 uses
  %i.ju = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !101
  %i.jx = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.jy = tail call ptr %i.jw(ptr noundef %0, ptr noundef %i.jx, i32 noundef %.088125.us137, i32 noundef %i.jt, i32 noundef 1) #10 ; 0 uses
  %i.jz = load i32, ptr %i.l, align 4, !tbaa !75  ; 2 uses
  %i.ka = add i32 %i.jz, %.088125.us137           ; 2 uses
  %i.kb = icmp ult i32 %i.ka, %i.n
  br i1 %i.kb, label %.lr.ph127.split.split.us, label %._crit_edge128, !llvm.loop !256

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split, %._crit_edge.split
  %.088125 = phi i32 [ %i.ti, %._crit_edge.split ], [ 0, %.lr.ph127.split ] ; 2 uses
  %i.kc = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !101
  %i.kf = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.kg = load i32, ptr %i.l, align 4, !tbaa !75
  %i.kh = tail call ptr %i.ke(ptr noundef %0, ptr noundef %i.kf, i32 noundef %.088125, i32 noundef %i.kg, i32 noundef 1) #10
  %i.ki = load i32, ptr %i.l, align 4, !tbaa !75  ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  br i1 %i.kj, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.lr.ph127.split.split
  %wide.trip.count = zext nneg i32 %i.ki to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.lr.ph, %..loopexit96_crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %..loopexit96_crit_edge ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !20
  %i.km = getelementptr inbounds nuw [128 x i8], ptr %i.kl, i64 %i.p ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph
  %.175103 = phi ptr [ %i.km, %.preheader.lr.ph ], [ %i.tc, %.preheader ] ; 65 uses
  %.076102 = phi ptr [ %i.km, %.preheader.lr.ph ], [ %.mux209, %.preheader ] ; 64 uses
  %.183101 = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.te, %.preheader ]
  %.086100 = phi i32 [ %i.j, %.preheader.lr.ph ], [ %.mux210, %.preheader ]
  %i.kn = getelementptr inbounds i8, ptr %.076102, i64 -128 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.076102, i64 -126
  %i.kp = load i16, ptr %i.kn, align 2, !tbaa !23
  %i.kq = getelementptr inbounds nuw i8, ptr %.175103, i64 2
  store i16 %i.kp, ptr %.175103, align 2, !tbaa !23
  %i.kr = getelementptr inbounds i8, ptr %.076102, i64 -124
  %i.ks = load i16, ptr %i.ko, align 2, !tbaa !23
  %i.kt = sub i16 0, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %.175103, i64 4
  store i16 %i.kt, ptr %i.kq, align 2, !tbaa !23
  %i.kv = getelementptr inbounds i8, ptr %.076102, i64 -122
  %i.kw = load i16, ptr %i.kr, align 2, !tbaa !23
  %i.kx = getelementptr inbounds nuw i8, ptr %.175103, i64 6
  store i16 %i.kw, ptr %i.ku, align 2, !tbaa !23
  %i.ky = getelementptr inbounds i8, ptr %.076102, i64 -120
  %i.kz = load i16, ptr %i.kv, align 2, !tbaa !23
  %i.la = sub i16 0, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %.175103, i64 8
  store i16 %i.la, ptr %i.kx, align 2, !tbaa !23
  %i.lc = getelementptr inbounds i8, ptr %.076102, i64 -118
  %i.ld = load i16, ptr %i.ky, align 2, !tbaa !23
  %i.le = getelementptr inbounds nuw i8, ptr %.175103, i64 10
  store i16 %i.ld, ptr %i.lb, align 2, !tbaa !23
  %i.lf = getelementptr inbounds i8, ptr %.076102, i64 -116
  %i.lg = load i16, ptr %i.lc, align 2, !tbaa !23
  %i.lh = sub i16 0, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %.175103, i64 12
  store i16 %i.lh, ptr %i.le, align 2, !tbaa !23
  %i.lj = getelementptr inbounds i8, ptr %.076102, i64 -114
  %i.lk = load i16, ptr %i.lf, align 2, !tbaa !23
  %i.ll = getelementptr inbounds nuw i8, ptr %.175103, i64 14
  store i16 %i.lk, ptr %i.li, align 2, !tbaa !23
  %i.lm = getelementptr inbounds i8, ptr %.076102, i64 -112
  %i.ln = load i16, ptr %i.lj, align 2, !tbaa !23
  %i.lo = sub i16 0, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %.175103, i64 16
  store i16 %i.lo, ptr %i.ll, align 2, !tbaa !23
  %i.lq = getelementptr inbounds i8, ptr %.076102, i64 -110
  %i.lr = load i16, ptr %i.lm, align 2, !tbaa !23
  %i.ls = getelementptr inbounds nuw i8, ptr %.175103, i64 18
  store i16 %i.lr, ptr %i.lp, align 2, !tbaa !23
  %i.lt = getelementptr inbounds i8, ptr %.076102, i64 -108
  %i.lu = load i16, ptr %i.lq, align 2, !tbaa !23
  %i.lv = sub i16 0, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.175103, i64 20
  store i16 %i.lv, ptr %i.ls, align 2, !tbaa !23
  %i.lx = getelementptr inbounds i8, ptr %.076102, i64 -106
  %i.ly = load i16, ptr %i.lt, align 2, !tbaa !23
  %i.lz = getelementptr inbounds nuw i8, ptr %.175103, i64 22
  store i16 %i.ly, ptr %i.lw, align 2, !tbaa !23
  %i.ma = getelementptr inbounds i8, ptr %.076102, i64 -104
  %i.mb = load i16, ptr %i.lx, align 2, !tbaa !23
  %i.mc = sub i16 0, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.175103, i64 24
  store i16 %i.mc, ptr %i.lz, align 2, !tbaa !23
  %i.me = getelementptr inbounds i8, ptr %.076102, i64 -102
  %i.mf = load i16, ptr %i.ma, align 2, !tbaa !23
  %i.mg = getelementptr inbounds nuw i8, ptr %.175103, i64 26
  store i16 %i.mf, ptr %i.md, align 2, !tbaa !23
  %i.mh = getelementptr inbounds i8, ptr %.076102, i64 -100
  %i.mi = load i16, ptr %i.me, align 2, !tbaa !23
  %i.mj = sub i16 0, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %.175103, i64 28
  store i16 %i.mj, ptr %i.mg, align 2, !tbaa !23
  %i.ml = getelementptr inbounds i8, ptr %.076102, i64 -98
  %i.mm = load i16, ptr %i.mh, align 2, !tbaa !23
  %i.mn = getelementptr inbounds nuw i8, ptr %.175103, i64 30
  store i16 %i.mm, ptr %i.mk, align 2, !tbaa !23
  %i.mo = getelementptr inbounds i8, ptr %.076102, i64 -96
  %i.mp = load i16, ptr %i.ml, align 2, !tbaa !23
  %i.mq = sub i16 0, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.175103, i64 32
  store i16 %i.mq, ptr %i.mn, align 2, !tbaa !23
  %i.ms = getelementptr inbounds i8, ptr %.076102, i64 -94
  %i.mt = load i16, ptr %i.mo, align 2, !tbaa !23
  %i.mu = getelementptr inbounds nuw i8, ptr %.175103, i64 34
  store i16 %i.mt, ptr %i.mr, align 2, !tbaa !23
  %i.mv = getelementptr inbounds i8, ptr %.076102, i64 -92
  %i.mw = load i16, ptr %i.ms, align 2, !tbaa !23
  %i.mx = sub i16 0, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %.175103, i64 36
  store i16 %i.mx, ptr %i.mu, align 2, !tbaa !23
  %i.mz = getelementptr inbounds i8, ptr %.076102, i64 -90
  %i.na = load i16, ptr %i.mv, align 2, !tbaa !23
  %i.nb = getelementptr inbounds nuw i8, ptr %.175103, i64 38
  store i16 %i.na, ptr %i.my, align 2, !tbaa !23
  %i.nc = getelementptr inbounds i8, ptr %.076102, i64 -88
  %i.nd = load i16, ptr %i.mz, align 2, !tbaa !23
  %i.ne = sub i16 0, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %.175103, i64 40
  store i16 %i.ne, ptr %i.nb, align 2, !tbaa !23
  %i.ng = getelementptr inbounds i8, ptr %.076102, i64 -86
  %i.nh = load i16, ptr %i.nc, align 2, !tbaa !23
  %i.ni = getelementptr inbounds nuw i8, ptr %.175103, i64 42
  store i16 %i.nh, ptr %i.nf, align 2, !tbaa !23
  %i.nj = getelementptr inbounds i8, ptr %.076102, i64 -84
  %i.nk = load i16, ptr %i.ng, align 2, !tbaa !23
  %i.nl = sub i16 0, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %.175103, i64 44
  store i16 %i.nl, ptr %i.ni, align 2, !tbaa !23
  %i.nn = getelementptr inbounds i8, ptr %.076102, i64 -82
  %i.no = load i16, ptr %i.nj, align 2, !tbaa !23
  %i.np = getelementptr inbounds nuw i8, ptr %.175103, i64 46
  store i16 %i.no, ptr %i.nm, align 2, !tbaa !23
  %i.nq = getelementptr inbounds i8, ptr %.076102, i64 -80
  %i.nr = load i16, ptr %i.nn, align 2, !tbaa !23
  %i.ns = sub i16 0, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %.175103, i64 48
  store i16 %i.ns, ptr %i.np, align 2, !tbaa !23
  %i.nu = getelementptr inbounds i8, ptr %.076102, i64 -78
  %i.nv = load i16, ptr %i.nq, align 2, !tbaa !23
  %i.nw = getelementptr inbounds nuw i8, ptr %.175103, i64 50
  store i16 %i.nv, ptr %i.nt, align 2, !tbaa !23
  %i.nx = getelementptr inbounds i8, ptr %.076102, i64 -76
  %i.ny = load i16, ptr %i.nu, align 2, !tbaa !23
  %i.nz = sub i16 0, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %.175103, i64 52
  store i16 %i.nz, ptr %i.nw, align 2, !tbaa !23
  %i.ob = getelementptr inbounds i8, ptr %.076102, i64 -74
  %i.oc = load i16, ptr %i.nx, align 2, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %.175103, i64 54
  store i16 %i.oc, ptr %i.oa, align 2, !tbaa !23
  %i.oe = getelementptr inbounds i8, ptr %.076102, i64 -72
  %i.of = load i16, ptr %i.ob, align 2, !tbaa !23
  %i.og = sub i16 0, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.175103, i64 56
  store i16 %i.og, ptr %i.od, align 2, !tbaa !23
  %i.oi = getelementptr inbounds i8, ptr %.076102, i64 -70
  %i.oj = load i16, ptr %i.oe, align 2, !tbaa !23
  %i.ok = getelementptr inbounds nuw i8, ptr %.175103, i64 58
  store i16 %i.oj, ptr %i.oh, align 2, !tbaa !23
  %i.ol = getelementptr inbounds i8, ptr %.076102, i64 -68
  %i.om = load i16, ptr %i.oi, align 2, !tbaa !23
  %i.on = sub i16 0, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %.175103, i64 60
  store i16 %i.on, ptr %i.ok, align 2, !tbaa !23
  %i.op = getelementptr inbounds i8, ptr %.076102, i64 -66
  %i.oq = load i16, ptr %i.ol, align 2, !tbaa !23
  %i.or = getelementptr inbounds nuw i8, ptr %.175103, i64 62
  store i16 %i.oq, ptr %i.oo, align 2, !tbaa !23
  %i.os = getelementptr inbounds i8, ptr %.076102, i64 -64
  %i.ot = load i16, ptr %i.op, align 2, !tbaa !23
  %i.ou = sub i16 0, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %.175103, i64 64
  store i16 %i.ou, ptr %i.or, align 2, !tbaa !23
  %i.ow = getelementptr inbounds i8, ptr %.076102, i64 -62
  %i.ox = load i16, ptr %i.os, align 2, !tbaa !23
  %i.oy = getelementptr inbounds nuw i8, ptr %.175103, i64 66
  store i16 %i.ox, ptr %i.ov, align 2, !tbaa !23
  %i.oz = getelementptr inbounds i8, ptr %.076102, i64 -60
  %i.pa = load i16, ptr %i.ow, align 2, !tbaa !23
  %i.pb = sub i16 0, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %.175103, i64 68
  store i16 %i.pb, ptr %i.oy, align 2, !tbaa !23
  %i.pd = getelementptr inbounds i8, ptr %.076102, i64 -58
  %i.pe = load i16, ptr %i.oz, align 2, !tbaa !23
  %i.pf = getelementptr inbounds nuw i8, ptr %.175103, i64 70
  store i16 %i.pe, ptr %i.pc, align 2, !tbaa !23
  %i.pg = getelementptr inbounds i8, ptr %.076102, i64 -56
  %i.ph = load i16, ptr %i.pd, align 2, !tbaa !23
  %i.pi = sub i16 0, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %.175103, i64 72
  store i16 %i.pi, ptr %i.pf, align 2, !tbaa !23
  %i.pk = getelementptr inbounds i8, ptr %.076102, i64 -54
  %i.pl = load i16, ptr %i.pg, align 2, !tbaa !23
  %i.pm = getelementptr inbounds nuw i8, ptr %.175103, i64 74
  store i16 %i.pl, ptr %i.pj, align 2, !tbaa !23
  %i.pn = getelementptr inbounds i8, ptr %.076102, i64 -52
  %i.po = load i16, ptr %i.pk, align 2, !tbaa !23
  %i.pp = sub i16 0, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %.175103, i64 76
  store i16 %i.pp, ptr %i.pm, align 2, !tbaa !23
  %i.pr = getelementptr inbounds i8, ptr %.076102, i64 -50
  %i.ps = load i16, ptr %i.pn, align 2, !tbaa !23
  %i.pt = getelementptr inbounds nuw i8, ptr %.175103, i64 78
  store i16 %i.ps, ptr %i.pq, align 2, !tbaa !23
  %i.pu = getelementptr inbounds i8, ptr %.076102, i64 -48
  %i.pv = load i16, ptr %i.pr, align 2, !tbaa !23
  %i.pw = sub i16 0, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %.175103, i64 80
  store i16 %i.pw, ptr %i.pt, align 2, !tbaa !23
  %i.py = getelementptr inbounds i8, ptr %.076102, i64 -46
  %i.pz = load i16, ptr %i.pu, align 2, !tbaa !23
  %i.qa = getelementptr inbounds nuw i8, ptr %.175103, i64 82
  store i16 %i.pz, ptr %i.px, align 2, !tbaa !23
  %i.qb = getelementptr inbounds i8, ptr %.076102, i64 -44
  %i.qc = load i16, ptr %i.py, align 2, !tbaa !23
  %i.qd = sub i16 0, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %.175103, i64 84
  store i16 %i.qd, ptr %i.qa, align 2, !tbaa !23
  %i.qf = getelementptr inbounds i8, ptr %.076102, i64 -42
  %i.qg = load i16, ptr %i.qb, align 2, !tbaa !23
  %i.qh = getelementptr inbounds nuw i8, ptr %.175103, i64 86
  store i16 %i.qg, ptr %i.qe, align 2, !tbaa !23
  %i.qi = getelementptr inbounds i8, ptr %.076102, i64 -40
  %i.qj = load i16, ptr %i.qf, align 2, !tbaa !23
  %i.qk = sub i16 0, %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %.175103, i64 88
  store i16 %i.qk, ptr %i.qh, align 2, !tbaa !23
  %i.qm = getelementptr inbounds i8, ptr %.076102, i64 -38
  %i.qn = load i16, ptr %i.qi, align 2, !tbaa !23
  %i.qo = getelementptr inbounds nuw i8, ptr %.175103, i64 90
  store i16 %i.qn, ptr %i.ql, align 2, !tbaa !23
  %i.qp = getelementptr inbounds i8, ptr %.076102, i64 -36
  %i.qq = load i16, ptr %i.qm, align 2, !tbaa !23
  %i.qr = sub i16 0, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %.175103, i64 92
  store i16 %i.qr, ptr %i.qo, align 2, !tbaa !23
  %i.qt = getelementptr inbounds i8, ptr %.076102, i64 -34
  %i.qu = load i16, ptr %i.qp, align 2, !tbaa !23
  %i.qv = getelementptr inbounds nuw i8, ptr %.175103, i64 94
  store i16 %i.qu, ptr %i.qs, align 2, !tbaa !23
  %i.qw = getelementptr inbounds i8, ptr %.076102, i64 -32
  %i.qx = load i16, ptr %i.qt, align 2, !tbaa !23
  %i.qy = sub i16 0, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %.175103, i64 96
  store i16 %i.qy, ptr %i.qv, align 2, !tbaa !23
  %i.ra = getelementptr inbounds i8, ptr %.076102, i64 -30
  %i.rb = load i16, ptr %i.qw, align 2, !tbaa !23
  %i.rc = getelementptr inbounds nuw i8, ptr %.175103, i64 98
  store i16 %i.rb, ptr %i.qz, align 2, !tbaa !23
  %i.rd = getelementptr inbounds i8, ptr %.076102, i64 -28
  %i.re = load i16, ptr %i.ra, align 2, !tbaa !23
  %i.rf = sub i16 0, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %.175103, i64 100
  store i16 %i.rf, ptr %i.rc, align 2, !tbaa !23
  %i.rh = getelementptr inbounds i8, ptr %.076102, i64 -26
  %i.ri = load i16, ptr %i.rd, align 2, !tbaa !23
  %i.rj = getelementptr inbounds nuw i8, ptr %.175103, i64 102
  store i16 %i.ri, ptr %i.rg, align 2, !tbaa !23
  %i.rk = getelementptr inbounds i8, ptr %.076102, i64 -24
  %i.rl = load i16, ptr %i.rh, align 2, !tbaa !23
  %i.rm = sub i16 0, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %.175103, i64 104
  store i16 %i.rm, ptr %i.rj, align 2, !tbaa !23
  %i.ro = getelementptr inbounds i8, ptr %.076102, i64 -22
  %i.rp = load i16, ptr %i.rk, align 2, !tbaa !23
  %i.rq = getelementptr inbounds nuw i8, ptr %.175103, i64 106
  store i16 %i.rp, ptr %i.rn, align 2, !tbaa !23
  %i.rr = getelementptr inbounds i8, ptr %.076102, i64 -20
  %i.rs = load i16, ptr %i.ro, align 2, !tbaa !23
  %i.rt = sub i16 0, %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %.175103, i64 108
  store i16 %i.rt, ptr %i.rq, align 2, !tbaa !23
  %i.rv = getelementptr inbounds i8, ptr %.076102, i64 -18
  %i.rw = load i16, ptr %i.rr, align 2, !tbaa !23
  %i.rx = getelementptr inbounds nuw i8, ptr %.175103, i64 110
  store i16 %i.rw, ptr %i.ru, align 2, !tbaa !23
  %i.ry = getelementptr inbounds i8, ptr %.076102, i64 -16
  %i.rz = load i16, ptr %i.rv, align 2, !tbaa !23
  %i.sa = sub i16 0, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %.175103, i64 112
  store i16 %i.sa, ptr %i.rx, align 2, !tbaa !23
  %i.sc = getelementptr inbounds i8, ptr %.076102, i64 -14
  %i.sd = load i16, ptr %i.ry, align 2, !tbaa !23
  %i.se = getelementptr inbounds nuw i8, ptr %.175103, i64 114
  store i16 %i.sd, ptr %i.sb, align 2, !tbaa !23
  %i.sf = getelementptr inbounds i8, ptr %.076102, i64 -12
  %i.sg = load i16, ptr %i.sc, align 2, !tbaa !23
  %i.sh = sub i16 0, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %.175103, i64 116
  store i16 %i.sh, ptr %i.se, align 2, !tbaa !23
  %i.sj = getelementptr inbounds i8, ptr %.076102, i64 -10
  %i.sk = load i16, ptr %i.sf, align 2, !tbaa !23
  %i.sl = getelementptr inbounds nuw i8, ptr %.175103, i64 118
  store i16 %i.sk, ptr %i.si, align 2, !tbaa !23
  %i.sm = getelementptr inbounds i8, ptr %.076102, i64 -8
  %i.sn = load i16, ptr %i.sj, align 2, !tbaa !23
  %i.so = sub i16 0, %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %.175103, i64 120
  store i16 %i.so, ptr %i.sl, align 2, !tbaa !23
  %i.sq = getelementptr inbounds i8, ptr %.076102, i64 -6
  %i.sr = load i16, ptr %i.sm, align 2, !tbaa !23
  %i.ss = getelementptr inbounds nuw i8, ptr %.175103, i64 122
  store i16 %i.sr, ptr %i.sp, align 2, !tbaa !23
  %i.st = getelementptr inbounds i8, ptr %.076102, i64 -4
  %i.su = load i16, ptr %i.sq, align 2, !tbaa !23
  %i.sv = sub i16 0, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %.175103, i64 124
  store i16 %i.sv, ptr %i.ss, align 2, !tbaa !23
  %i.sx = getelementptr inbounds i8, ptr %.076102, i64 -2
  %i.sy = load i16, ptr %i.st, align 2, !tbaa !23
  %i.sz = getelementptr inbounds nuw i8, ptr %.175103, i64 126
  store i16 %i.sy, ptr %i.sw, align 2, !tbaa !23
  %i.ta = load i16, ptr %i.sx, align 2, !tbaa !23
  %i.tb = sub i16 0, %i.ta
  store i16 %i.tb, ptr %i.sz, align 2, !tbaa !23
  %i.tc = getelementptr inbounds nuw i8, ptr %.175103, i64 128 ; 2 uses
  %i.td = add i32 %.086100, -1                    ; 2 uses
  %i.te = add i32 %.183101, -1                    ; 2 uses
  %i.tf = icmp ne i32 %i.td, 0
  %i.tg = icmp ne i32 %i.te, 0                    ; 2 uses
  %i.th = select i1 %i.tf, i1 %i.tg, i1 false     ; 3 uses
  %brmerge208 = select i1 %i.th, i1 true, i1 %i.tg
  %.mux209 = select i1 %i.th, ptr %i.kn, ptr %i.tc
  %.mux210 = select i1 %i.th, i32 %i.td, i32 %i.j
  br i1 %brmerge208, label %.preheader, label %..loopexit96_crit_edge, !llvm.loop !257

.loopexit:                                        ; preds = %.lr.ph118.us.us, %.loopexit
  br label %.loopexit

..loopexit96_crit_edge:                           ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader.lr.ph, !llvm.loop !254

._crit_edge.split:                                ; preds = %..loopexit96_crit_edge, %.lr.ph127.split.split
  %i.ti = add i32 %i.ki, %.088125                 ; 2 uses
  %i.tj = icmp ult i32 %i.ti, %i.n
  br i1 %i.tj, label %.lr.ph127.split.split, label %._crit_edge128, !llvm.loop !256

._crit_edge128:                                   ; preds = %._crit_edge.split, %.lr.ph127.split.split.us, %._crit_edge.split.us.us, %bb.b
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.tk = load i32, ptr %i.a, align 4, !tbaa !96
  %i.tl = sext i32 %i.tk to i64
  %i.tm = icmp slt i64 %indvars.iv.next163, %i.tl
  br i1 %i.tm, label %bb.b, label %._crit_edge, !llvm.loop !258

._crit_edge:                                      ; preds = %._crit_edge128, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jcopy_markers_setup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, -5
  %or.cond.not = icmp eq i32 %i.a, 0
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 254, i32 noundef 65535) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %1, -2
  %or.cond3 = icmp eq i32 %i.b, 2
  br i1 %or.cond3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.c = icmp eq i32 %1, 3
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 224, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 225, i32 noundef 65535) #10
  br i1 %i.c, label %.loopexit.thread.sink.split.sink.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 226, i32 noundef 65535) #10
  br label %.loopexit.thread.sink.split.sink.split

.loopexit:                                        ; preds = %bb.c
  %i.d = icmp eq i32 %1, 4
  br i1 %i.d, label %.loopexit.thread.sink.split, label %.loopexit.thread

.loopexit.thread.sink.split.sink.split:           ; preds = %.preheader, %.preheader.split.us.preheader
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 227, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 228, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 229, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 230, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 231, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 232, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 233, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 234, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 235, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 236, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 237, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 238, i32 noundef 65535) #10
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %.loopexit.thread.sink.split.sink.split, %.loopexit
  %.sink = phi i32 [ 226, %.loopexit ], [ 239, %.loopexit.thread.sink.split.sink.split ]
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef %.sink, i32 noundef 65535) #10
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %.loopexit
  ret void
}

declare void @jpeg_save_markers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @jcopy_markers_execute(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.034 = load ptr, ptr %i.a, align 8, !tbaa !260 ; 2 uses
  %.not35 = icmp eq ptr %.034, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 300
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.036 = phi ptr [ %.034, %.lr.ph ], [ %.0, %bb.u ] ; 12 uses
  switch i32 %2, label %bb.f [
    i32 0, label %bb.u
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !104
  %.not31 = icmp eq i8 %i.e, -2
  br i1 %.not31, label %bb.f, label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !104
  %i.h = icmp eq i8 %i.g, -30
  br i1 %i.h, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !104
  %.not30 = icmp eq i8 %i.j, -30
  br i1 %.not30, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %i.k = load i32, ptr %i.b, align 8, !tbaa !107
  %.not32 = icmp eq i32 %i.k, 0
  br i1 %.not32, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !104
  %i.n = icmp eq i8 %i.m, -32
  br i1 %i.n, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !105
  %i.q = icmp ugt i32 %i.p, 4
  br i1 %i.q, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.036, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106  ; 5 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !21
  %i.u = icmp eq i8 %i.t, 74
  br i1 %i.u, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = icmp eq i8 %i.w, 70
  br i1 %i.x, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21
  %i.aa = icmp eq i8 %i.z, 73
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = icmp eq i8 %i.ac, 70
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !261
  %.not33 = icmp ne i32 %i.ah, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !104 ; 2 uses
  %i.ai = icmp eq i8 %.pre, -18
  %or.cond = select i1 %.not33, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.o, label %._crit_edge37

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105
  %i.al = icmp ugt i32 %i.ak, 4
  br i1 %i.al, label %bb.p, label %._crit_edge37

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.036, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !106 ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = icmp eq i8 %i.ao, 65
  br i1 %i.ap, label %bb.q, label %._crit_edge37

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.as = icmp eq i8 %i.ar, 100
  br i1 %i.as, label %bb.r, label %._crit_edge37

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !21
  %i.av = icmp eq i8 %i.au, 111
  br i1 %i.av, label %bb.s, label %._crit_edge37

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21
  %i.ay = icmp eq i8 %i.ax, 98
  br i1 %i.ay, label %bb.t, label %._crit_edge37

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %i.bb = icmp eq i8 %i.ba, 101
  br i1 %i.bb, label %bb.u, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.n, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.bc = phi i8 [ %.pre, %bb.n ], [ -18, %bb.t ], [ -18, %bb.s ], [ -18, %bb.r ], [ -18, %bb.q ], [ -18, %bb.p ], [ -18, %bb.o ]
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %.036, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !105
  tail call void @jpeg_write_marker(ptr noundef nonnull %1, i32 noundef %i.bd, ptr noundef %i.bf, i32 noundef %i.bh) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.t, %bb.m, %bb.e, %bb.d, %bb.c, %._crit_edge37
  %.0 = load ptr, ptr %.036, align 8, !tbaa !260  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !259

._crit_edge:                                      ; preds = %bb.u, %bb.a
  ret void
}

declare void @jpeg_write_marker(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS22jpeg_decompress_struct", !9, i64 0}
!11 = !{!"any p2 pointer", !9, i64 0}
!12 = !{!"p2 _ZTS20jvirt_barray_control", !11, i64 0}
!13 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !10, i64 56, !12, i64 64, !6, i64 72, !12, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!14 = !{!13, !6, i64 16}
!15 = !{!13, !6, i64 28}
!16 = !{!13, !6, i64 36}
!17 = !{!13, !6, i64 44}
!18 = !{!13, !6, i64 52}
!19 = !{!"p1 short", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!5, !5, i64 0}
!22 = !{!"short", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!6, !6, i64 0}
!26 = !{!13, !6, i64 12}
!27 = !{!"p1 _ZTS14jpeg_error_mgr", !9, i64 0}
!28 = !{!"p1 _ZTS15jpeg_memory_mgr", !9, i64 0}
!29 = !{!"p1 _ZTS17jpeg_progress_mgr", !9, i64 0}
!30 = !{!"p1 _ZTS15jpeg_source_mgr", !9, i64 0}
!31 = !{!"double", !5, i64 0}
!32 = !{!"p2 omnipotent char", !11, i64 0}
!33 = !{!"p1 int", !9, i64 0}
!34 = !{!"p1 _ZTS18jpeg_marker_struct", !9, i64 0}
!35 = !{!"p1 omnipotent char", !9, i64 0}
!36 = !{!"p1 _ZTS18jpeg_decomp_master", !9, i64 0}
!37 = !{!"p1 _ZTS22jpeg_d_main_controller", !9, i64 0}
!38 = !{!"p1 _ZTS22jpeg_d_coef_controller", !9, i64 0}
!39 = !{!"p1 _ZTS22jpeg_d_post_controller", !9, i64 0}
!40 = !{!"p1 _ZTS21jpeg_input_controller", !9, i64 0}
!41 = !{!"p1 _ZTS18jpeg_marker_reader", !9, i64 0}
!42 = !{!"p1 _ZTS20jpeg_entropy_decoder", !9, i64 0}
!43 = !{!"p1 _ZTS16jpeg_inverse_dct", !9, i64 0}
!44 = !{!"p1 _ZTS14jpeg_upsampler", !9, i64 0}
!45 = !{!"p1 _ZTS22jpeg_color_deconverter", !9, i64 0}
!46 = !{!"p1 _ZTS20jpeg_color_quantizer", !9, i64 0}
!47 = !{!"jpeg_decompress_struct", !27, i64 0, !28, i64 8, !29, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !30, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !31, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !32, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !33, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !6, i64 296, !9, i64 304, !6, i64 312, !6, i64 316, !5, i64 320, !5, i64 336, !5, i64 352, !6, i64 368, !6, i64 372, !5, i64 376, !5, i64 377, !5, i64 378, !22, i64 380, !22, i64 382, !6, i64 384, !5, i64 388, !6, i64 392, !34, i64 400, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !35, i64 424, !6, i64 432, !5, i64 440, !6, i64 472, !6, i64 476, !6, i64 480, !5, i64 484, !6, i64 524, !6, i64 528, !6, i64 532, !6, i64 536, !6, i64 540, !36, i64 544, !37, i64 552, !38, i64 560, !39, i64 568, !40, i64 576, !41, i64 584, !42, i64 592, !43, i64 600, !44, i64 608, !45, i64 616, !46, i64 624}
!48 = !{!47, !6, i64 56}
!49 = !{!13, !6, i64 72}
!50 = !{!47, !6, i64 48}
!51 = !{!47, !6, i64 136}
!52 = !{!47, !6, i64 52}
!53 = !{!47, !6, i64 140}
!54 = !{!47, !6, i64 416}
!55 = !{!47, !6, i64 408}
!56 = !{!47, !6, i64 412}
!57 = !{!13, !6, i64 0}
!58 = !{!13, !6, i64 40}
!59 = !{!13, !6, i64 48}
!60 = !{!13, !6, i64 88}
!61 = !{!13, !6, i64 92}
!62 = !{!13, !6, i64 112}
!63 = !{!13, !6, i64 116}
!64 = !{!47, !27, i64 0}
!65 = !{!"long", !5, i64 0}
!66 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !5, i64 44, !6, i64 124, !65, i64 128, !32, i64 136, !6, i64 144, !32, i64 152, !6, i64 160, !6, i64 164}
!67 = !{!66, !6, i64 40}
!68 = !{!66, !9, i64 0}
!69 = !{!13, !6, i64 104}
!70 = !{!13, !6, i64 108}
!71 = !{!13, !10, i64 56}
!72 = !{!47, !9, i64 304}
!73 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !9, i64 80, !9, i64 88}
!74 = !{!73, !6, i64 8}
!75 = !{!73, !6, i64 12}
!76 = !{!13, !6, i64 96}
!77 = !{!13, !6, i64 100}
!78 = !{!13, !6, i64 8}
!79 = !{!13, !6, i64 20}
!80 = !{!47, !28, i64 8}
!81 = !{!"jpeg_memory_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !65, i64 88, !65, i64 96}
!82 = !{!"p1 _ZTS20jvirt_barray_control", !9, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!13, !12, i64 80}
!85 = !{!"p1 _ZTS20jpeg_destination_mgr", !9, i64 0}
!86 = !{!"p1 _ZTS16jpeg_comp_master", !9, i64 0}
!87 = !{!"p1 _ZTS22jpeg_c_main_controller", !9, i64 0}
!88 = !{!"p1 _ZTS22jpeg_c_prep_controller", !9, i64 0}
!89 = !{!"p1 _ZTS22jpeg_c_coef_controller", !9, i64 0}
!90 = !{!"p1 _ZTS18jpeg_marker_writer", !9, i64 0}
!91 = !{!"p1 _ZTS20jpeg_color_converter", !9, i64 0}
!92 = !{!"p1 _ZTS16jpeg_downsampler", !9, i64 0}
!93 = !{!"p1 _ZTS16jpeg_forward_dct", !9, i64 0}
!94 = !{!"p1 _ZTS20jpeg_entropy_encoder", !9, i64 0}
!95 = !{!"jpeg_compress_struct", !27, i64 0, !28, i64 8, !29, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !85, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !31, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !9, i64 88, !5, i64 96, !5, i64 128, !5, i64 160, !5, i64 192, !5, i64 208, !5, i64 224, !6, i64 240, !9, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !5, i64 292, !5, i64 293, !5, i64 294, !22, i64 296, !22, i64 298, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !5, i64 328, !6, i64 360, !6, i64 364, !6, i64 368, !5, i64 372, !6, i64 412, !6, i64 416, !6, i64 420, !6, i64 424, !86, i64 432, !87, i64 440, !88, i64 448, !89, i64 456, !90, i64 464, !91, i64 472, !92, i64 480, !93, i64 488, !94, i64 496, !9, i64 504, !6, i64 512}
!96 = !{!95, !6, i64 76}
!97 = !{!95, !9, i64 88}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!13, !12, i64 64}
!100 = !{!73, !6, i64 32}
!101 = !{!81, !9, i64 64}
!102 = !{!73, !6, i64 28}
!103 = !{!"jpeg_marker_struct", !34, i64 0, !5, i64 8, !6, i64 12, !6, i64 16, !35, i64 24}
!104 = !{!103, !5, i64 8}
!105 = !{!103, !6, i64 16}
!106 = !{!103, !35, i64 24}
!107 = !{!95, !6, i64 288}
!108 = !{!95, !6, i64 48}
!109 = !{!95, !6, i64 52}
!110 = !{!95, !6, i64 312}
!111 = !{!95, !6, i64 316}
!112 = !{!"llvm.loop.unswitch.partial.disable"}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
!115 = distinct !{!115, !24}
!116 = !{!47, !6, i64 60}
!117 = !{!13, !6, i64 4}
!118 = !{!13, !6, i64 24}
!119 = !{!13, !6, i64 32}
!120 = !{!81, !9, i64 0}
!121 = !{!81, !9, i64 40}
!122 = distinct !{!122, !98}
!123 = distinct !{!123, !24}
!124 = distinct !{!124, !24}
!125 = distinct !{null}
!126 = distinct !{!126, !24}
!127 = distinct !{!127, !24}
!128 = distinct !{!128, !24}
!129 = distinct !{null, null}
!130 = distinct !{!130, !24}
!131 = distinct !{!131, !24}
!132 = distinct !{!132, !24}
!133 = distinct !{!133, !24}
!134 = distinct !{!134, !24}
!135 = distinct !{null, null}
!136 = distinct !{!136, !24}
!137 = distinct !{!137, !24}
!138 = distinct !{!138, !24}
!139 = distinct !{!139, !24}
!140 = !{!95, !6, i64 80}
!141 = !{!73, !6, i64 16}
!142 = !{!95, !27, i64 0}
!143 = !{!9, !9, i64 0}
!144 = !{!73, !9, i64 80}
!145 = !{!47, !34, i64 400}
!146 = distinct !{!146, !24}
!147 = distinct !{null}
!148 = distinct !{!148, !24}
!149 = distinct !{!149, !24}
!150 = distinct !{!150, !24}
!151 = distinct !{!151, !24}
!152 = distinct !{null}
!153 = distinct !{!153, !24}
!154 = distinct !{!154, !24, !112}
!155 = distinct !{!155, !24}
!156 = distinct !{!156, !24}
!157 = distinct !{null}
!158 = distinct !{!158, !24}
!159 = distinct !{!159, !24}
!160 = distinct !{!160, !24}
!161 = distinct !{!161, !24}
!162 = distinct !{null}
!163 = distinct !{!163, !24}
!164 = distinct !{!164, !24}
!165 = distinct !{!165, !24, !112}
!166 = distinct !{!166, !24}
!167 = distinct !{!167, !24}
!168 = distinct !{null}
!169 = distinct !{!169, !24}
!170 = distinct !{!170, !24}
!171 = distinct !{!171, !24, !112}
!172 = distinct !{!172, !24}
!173 = distinct !{!173, !24}
!174 = distinct !{null}
!175 = distinct !{!175, !24}
!176 = distinct !{!176, !24}
!177 = distinct !{!177, !24, !112}
!178 = distinct !{!178, !24}
!179 = distinct !{!179, !24}
!180 = distinct !{null}
!181 = distinct !{!181, !24}
!182 = distinct !{!182, !24}
!183 = distinct !{!183, !24}
!184 = distinct !{!184, !24, !112}
!185 = distinct !{!185, !24}
!186 = distinct !{!186, !24}
!187 = distinct !{null}
!188 = distinct !{!188, !24}
!189 = distinct !{!189, !24}
!190 = distinct !{!190, !24, !112}
!191 = distinct !{!191, !24}
!192 = distinct !{!192, !24}
!193 = distinct !{null}
!194 = distinct !{!194, !24}
!195 = distinct !{!195, !98}
!196 = distinct !{!196, !24}
!197 = distinct !{!197, !24}
!198 = distinct !{!198, !98}
!199 = distinct !{!199, !24}
!200 = distinct !{null}
!201 = distinct !{!201, !24}
!202 = distinct !{!202, !24}
!203 = distinct !{!203, !24}
!204 = distinct !{null}
!205 = distinct !{!205, !24}
!206 = distinct !{!206, !24}
!207 = distinct !{!207, !24}
!208 = distinct !{!208, !24}
!209 = distinct !{null}
!210 = distinct !{!210, !24}
!211 = distinct !{!211, !24, !112}
!212 = distinct !{!212, !24}
!213 = distinct !{!213, !24}
!214 = distinct !{!214, !24}
!215 = distinct !{!215, !24}
!216 = distinct !{!216, !24}
!217 = distinct !{!217, !24}
!218 = distinct !{!218, !24}
!219 = distinct !{!219, !24}
!220 = distinct !{!220, !24}
!221 = distinct !{!221, !24}
!222 = distinct !{!222, !98}
!223 = distinct !{!223, !98}
!224 = distinct !{!224, !24}
!225 = distinct !{!225, !24}
!226 = distinct !{!226, !24}
!227 = distinct !{!227, !24}
!228 = distinct !{!228, !24}
!229 = distinct !{!229, !24}
!230 = distinct !{!230, !24}
!231 = distinct !{!231, i1 false, !"LVerDomain"}
!232 = distinct !{!232, !231}
!233 = distinct !{!233, !231}
!234 = distinct !{!234, !24, !249, !250}
!235 = distinct !{!235, !24, !249}
!236 = distinct !{!236, !24}
!237 = distinct !{!237, !24}
!238 = distinct !{!238, i1 false, !"LVerDomain"}
!239 = distinct !{!239, !238}
!240 = distinct !{!240, !238}
!241 = distinct !{!241, !24, !249, !250}
!242 = distinct !{!242, !24, !249}
!243 = distinct !{!243, !24}
!244 = distinct !{!244, !24}
!245 = distinct !{!245, !24, !112}
!246 = distinct !{!246, !24}
!247 = !{!232}
!248 = !{!233}
!249 = !{!"llvm.loop.isvectorized", i32 1}
!250 = !{!"llvm.loop.unroll.runtime.disable"}
!251 = !{!239}
!252 = !{!240}
!253 = distinct !{!253, !24}
!254 = distinct !{!254, !24}
!255 = distinct !{!255, !24, !112}
!256 = distinct !{!256, !24}
!257 = distinct !{!257, !24}
!258 = distinct !{!258, !24}
!259 = distinct !{!259, !24}
!260 = !{!34, !34, i64 0}
!261 = !{!95, !6, i64 300}
end_hunk_0
