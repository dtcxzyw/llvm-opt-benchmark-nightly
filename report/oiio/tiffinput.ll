inline.NumInlined: 4996
inline.NumDeleted: 1754
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE:bb.a
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge27:                                    ; preds = %._crit_edge
  %i.bb = add nuw i64 %.02028, 1                  ; 2 uses
  %exitcond38.not = icmp eq i64 %i.bb, %2
  br i1 %exitcond38.not, label %._crit_edge30.split, label %.preheader24, !llvm.loop !226

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bc = add nuw i64 %.01926, 1                  ; 2 uses
  %exitcond37.not = icmp eq i64 %i.bc, %1
  br i1 %exitcond37.not, label %._crit_edge27, label %iter.check, !llvm.loop !227

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.025 = phi i64 [ %i.bs, %vec.epilog.scalar.ph ], [ %.025.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr i8, ptr %i.aj, i64 %.025
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = getelementptr i8, ptr %i.am, i64 %.025
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !16
  %i.bg = add nuw i64 %.025, 1                    ; 2 uses
  %i.bh = getelementptr i8, ptr %i.aj, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.am, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !16
  %i.bk = add nuw i64 %.025, 2                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.aj, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = getelementptr i8, ptr %i.am, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !16
  %i.bo = add nuw i64 %.025, 3                    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.aj, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = getelementptr i8, ptr %i.am, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !16
  %i.bs = add nuw i64 %.025, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bs, %i.i
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !228
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, i64 noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree writeonly captures(none) %4, i64 %5) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 306 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !148  ; 2 uses
  %i.c = zext nneg i16 %i.b to i32
  %i.d = udiv i16 8, %i.b
  %i.e = zext nneg i16 %i.d to i64                ; 3 uses
  %i.f = shl nuw i32 1, %i.c                      ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = add nuw i32 %i.f, 255
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %.idx = shl nsw i64 %i.g, 2
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.b ] ; 4 uses
  %i.j = udiv i64 %.024, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i32
  %i.n = load i16, ptr %i.a, align 2, !tbaa !148
  %i.o = zext i16 %i.n to i64
  %i.p = urem i64 %.024, %i.e
  %i.q = xor i64 %i.p, -1
  %i.r = add nsw i64 %i.q, %i.e
  %i.s = mul nsw i64 %i.r, %i.o
  %i.t = trunc nsw i64 %i.s to i32
  %i.u = lshr i32 %i.m, %i.t
  %i.v = and i32 %i.u, %i.h
  %i.w = zext nneg i32 %i.v to i64                ; 3 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.w
  %i.z = load i16, ptr %i.y, align 2, !tbaa !93
  %i.aa = udiv i16 %i.z, 257
  %i.ab = trunc nuw i16 %i.aa to i8
  %i.ac = mul i64 %.024, 3
  %i.ad = getelementptr i8, ptr %4, i64 %i.ac     ; 3 uses
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !16
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.g
  %i.ag = getelementptr [2 x i8], ptr %i.af, i64 %i.w
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !93
  %i.ai = udiv i16 %i.ah, 257
  %i.aj = trunc nuw i16 %i.ai to i8
  %i.ak = getelementptr i8, ptr %i.ad, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !16
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.am = getelementptr i8, ptr %i.al, i64 %.idx
  %i.an = getelementptr [2 x i8], ptr %i.am, i64 %i.w
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !93
  %i.ap = udiv i16 %i.ao, 257
  %i.aq = trunc nuw i16 %i.ap to i8
  %i.ar = getelementptr i8, ptr %i.ad, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !16
  %i.as = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !229
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKtLm18446744073709551615EEENS2_IhLm18446744073709551615EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, i64 noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree writeonly captures(none) %4, i64 %5) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 306
  %i.b = load i16, ptr %i.a, align 2, !tbaa !148
  %i.c = zext nneg i16 %i.b to i32
  %i.d = shl nuw i32 1, %i.c                      ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = add nuw i32 %i.d, 65535
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %.idx = shl nsw i64 %i.e, 2
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.019
  %i.i = load i16, ptr %i.h, align 2, !tbaa !93
  %i.j = zext i16 %i.i to i32
  %i.k = and i32 %i.f, %i.j
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.l
  %i.o = load i16, ptr %i.n, align 2, !tbaa !93
  %i.p = udiv i16 %i.o, 257
  %i.q = trunc nuw i16 %i.p to i8
  %i.r = mul i64 %.019, 3
  %i.s = getelementptr i8, ptr %4, i64 %i.r       ; 3 uses
  store i8 %i.q, ptr %i.s, align 1, !tbaa !16
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.u = getelementptr [2 x i8], ptr %i.t, i64 %i.e
  %i.v = getelementptr [2 x i8], ptr %i.u, i64 %i.l
  %i.w = load i16, ptr %i.v, align 2, !tbaa !93
  %i.x = udiv i16 %i.w, 257
  %i.y = trunc nuw i16 %i.x to i8
  %i.z = getelementptr i8, ptr %i.s, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !16
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.idx
  %i.ac = getelementptr [2 x i8], ptr %i.ab, i64 %i.l
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !93
  %i.ae = udiv i16 %i.ad, 257
  %i.af = trunc nuw i16 %i.ae to i8
  %i.ag = getelementptr i8, ptr %i.s, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !16
  %i.ah = add nuw i64 %.019, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(432) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge67

.preheader.lr.ph:                                 ; preds = %bb.a
  %notmask = shl nsw i32 -1, %3
  %i.b = xor i32 %notmask, -1
  %i.c = icmp sgt i32 %3, 0
  %i.d = zext nneg i32 %i.b to i64                ; 3 uses
  br i1 %i.c, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %21
  %indvars.iv = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next, %21 ] ; 4 uses
  %.066.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.us89, %21 ] ; 3 uses
  %.04565.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.247.us88, %21 ] ; 2 uses
  %i.e = sub nsw i32 8, %.04565.us                ; 5 uses
  %.not.us.peel = icmp sgt i32 %i.e, %3
  br i1 %.not.us.peel, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.f = sext i32 %.066.us to i64
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = zext i8 %i.h to i32
  %i.j = shl nsw i32 -1, %i.e
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.i, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = add nsw i32 %.066.us, 1                  ; 2 uses
  %i.o = icmp slt i32 %i.e, %3
  br i1 %i.o, label %.preheader.us.peel.newph, label %._crit_edge.us

6:                                                ; preds = %._crit_edge.us
  %7 = mul nsw i64 %.152.us87, 65535
  %8 = sdiv i64 %7, %i.d
  %9 = trunc i64 %8 to i16
  %10 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %9, ptr %10, align 2, !tbaa !93
  br label %21

11:                                               ; preds = %._crit_edge.us
  %12 = mul nsw i64 %.152.us87, 255
  %13 = sdiv i64 %12, %i.d
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %14, ptr %15, align 1, !tbaa !16
  br label %21

16:                                               ; preds = %._crit_edge.us
  %17 = mul nsw i64 %.152.us87, 4294967295
  %18 = sdiv i64 %17, %i.d
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %19, ptr %20, align 4, !tbaa !3
  br label %21

21:                                               ; preds = %16, %11, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %.preheader.us, !llvm.loop !231

.preheader.us.peel.newph:                         ; preds = %bb.b, %bb.c
  %.161.us = phi i32 [ %i.ak, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %.04959.us = phi i32 [ %i.al, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.05158.us = phi i64 [ %i.aj, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = sub nsw i32 %3, %.04959.us               ; 2 uses
  %.not.us = icmp slt i32 %i.p, 8
  br i1 %.not.us, label %.thread, label %bb.c

.thread:                                          ; preds = %.preheader.us.peel.newph, %.preheader.us
  %.161.us.lcssa = phi i32 [ %.066.us, %.preheader.us ], [ %.161.us, %.preheader.us.peel.newph ] ; 2 uses
  %.14660.us.lcssa = phi i32 [ %.04565.us, %.preheader.us ], [ 0, %.preheader.us.peel.newph ]
  %.05158.us.lcssa = phi i64 [ 0, %.preheader.us ], [ %.05158.us, %.preheader.us.peel.newph ]
  %.lcssa107 = phi i32 [ %3, %.preheader.us ], [ %i.p, %.preheader.us.peel.newph ] ; 4 uses
  %.lcssa = phi i32 [ %i.e, %.preheader.us ], [ 8, %.preheader.us.peel.newph ]
  %i.q = zext nneg i32 %.lcssa107 to i64
  %i.r = shl i64 %.05158.us.lcssa, %i.q
  %i.s = sub nsw i32 %.lcssa, %.lcssa107
  %i.t = sext i32 %.161.us.lcssa to i64
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = lshr i32 %i.w, %i.s
  %i.y = shl nsw i32 -1, %.lcssa107
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %i.x, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = or i64 %i.r, %i.ab
  %i.ad = add nsw i32 %.14660.us.lcssa, %.lcssa107
  br label %._crit_edge.us

bb.c:                                             ; preds = %.preheader.us.peel.newph
  %i.ae = shl i64 %.05158.us, 8
  %i.af = sext i32 %.161.us to i64
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i64
  %i.aj = or disjoint i64 %i.ae, %i.ai            ; 2 uses
  %i.ak = add nsw i32 %.161.us, 1                 ; 2 uses
  %i.al = add nsw i32 %.04959.us, 8               ; 2 uses
  %i.am = icmp slt i32 %i.al, %3
  br i1 %i.am, label %.preheader.us.peel.newph, label %._crit_edge.us, !llvm.loop !232

._crit_edge.us:                                   ; preds = %bb.b, %bb.c, %.thread
  %.2.us89 = phi i32 [ %.161.us.lcssa, %.thread ], [ %i.n, %bb.b ], [ %i.ak, %bb.c ]
  %.247.us88 = phi i32 [ %i.ad, %.thread ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.152.us87 = phi i64 [ %i.ac, %.thread ], [ %i.m, %bb.b ], [ %i.aj, %bb.c ] ; 3 uses
  switch i32 %5, label %16 [
    i32 8, label %11
    i32 16, label %6
  ]

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  switch i32 %5, label %.preheader.preheader [
    i32 8, label %.preheader.us68.preheader
    i32 16, label %.preheader.us71.preheader
  ]

.preheader.us71.preheader:                        ; preds = %.preheader.lr.ph.split
  %i.an = shl nuw i32 %1, 1
  %i.ao = zext i32 %i.an to i64
  br label %._crit_edge67.sink.split

.preheader.us68.preheader:                        ; preds = %.preheader.lr.ph.split
  %i.ap = zext nneg i32 %1 to i64
  br label %._crit_edge67.sink.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.aq = zext nneg i32 %1 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2
  br label %._crit_edge67.sink.split

._crit_edge67.sink.split:                         ; preds = %.preheader.preheader, %.preheader.us68.preheader, %.preheader.us71.preheader
  %.sink = phi i64 [ %i.ao, %.preheader.us71.preheader ], [ %i.ap, %.preheader.us68.preheader ], [ %i.ar, %.preheader.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %.sink, i1 false), !tbaa !16
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %21, %._crit_edge67.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_19TIFFInput18invert_photometricEiPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !234
  %cond = icmp eq i8 %i.b, 2
  %i.c = icmp sgt i32 %1, 0
  %or.cond = and i1 %cond, %i.c
  br i1 %or.cond, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i32 %1, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.d, align 1, !tbaa !16
  %wide.load11 = load <16 x i8>, ptr %i.e, align 1, !tbaa !16
  %i.f = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.g = xor <16 x i8> %wide.load11, splat (i8 -1)
  store <16 x i8> %i.f, ptr %i.d, align 1, !tbaa !16
  store <16 x i8> %i.g, ptr %i.e, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %index14 ; 2 uses
  %wide.load15 = load <4 x i8>, ptr %i.i, align 1, !tbaa !16
  %i.j = xor <4 x i8> %wide.load15, splat (i8 -1)
  store <4 x i8> %i.j, ptr %i.i, align 1, !tbaa !16
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %n.vec13, %wide.trip.count
  br i1 %cmp.n17, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = xor i8 %i.m, -1
  store i8 %i.n, ptr %i.l, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !237

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.c, i1 noundef zeroext true) #36 ; 0 uses
  %i.e = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput27read_native_scanline_lockedEiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 poison, i32 poison, i32 noundef %3, ptr %5, i64 poison)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.e, %bb.d ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.f
  ret i1 %.0

bb.h:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.b, %bb.c ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit13 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit13: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput27read_native_scanline_lockedEiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 %1, i32 %2, i32 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %i.e = sub i32 %3, %i.d                         ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 295
  %i.g = load i8, ptr %i.f, align 1, !tbaa !89, !range !95, !noundef !96
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19TIFFInput27read_native_scanline_lockedEiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %spec.select.i150 = zext nneg i32 %narrow.i149 to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !177
  %i.jo = zext i8 %i.jn to i64
  %i.jp = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.jj) #36
  %i.jq = mul nsw i64 %i.jo, %i.ji
  %i.jr = mul i64 %i.jq, %i.jp
  %i.js = mul i64 %i.jr, %spec.select.i150        ; 8 uses
  %i.jt = load i16, ptr %i.bk, align 2, !tbaa !76
  %i.ju = zext i16 %i.jt to i64
  %i.jv = mul i64 %i.js, %i.ju                    ; 4 uses
  br i1 %i.jg, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jw = load i8, ptr %i.ci, align 1, !tbaa !157, !range !95, !noundef !96
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jy = load i16, ptr %i.bo, align 4, !tbaa !155
  %i.jz = icmp eq i16 %i.jy, 5
  br i1 %i.jz, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !107, !range !95, !noundef !96
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !82
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.0101 = phi ptr [ %i.ke, %bb.as ], [ %4, %bb.ar ], [ %4, %bb.aq ]
  %.not114303.not = icmp eq i32 %i.cn, 0          ; 6 uses
  br i1 %.not114303.not, label %.critedge127, label %.lr.ph

.lr.ph:                                           ; preds = %bb.at
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %wide.trip.count = zext nneg i32 %i.cn to i64
  br label %bb.av

bb.au:                                            ; preds = %bb.av
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond348.not, label %.critedge127, label %bb.av, !llvm.loop !239

bb.av:                                            ; preds = %.lr.ph, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.au ] ; 3 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !20
  %i.kh = mul i64 %i.js, %indvars.iv
  %i.ki = getelementptr inbounds nuw i8, ptr %.0101, i64 %i.kh
  %i.kj = trunc i64 %indvars.iv to i16
  %i.kk = call i32 @TIFFReadScanline(ptr noundef %i.kg, ptr noundef %i.ki, i32 noundef %i.e, i16 noundef zeroext %i.kj)
  %i.kl = icmp slt i32 %i.kk, 0
  br i1 %i.kl, label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit, label %bb.au

.critedge127:                                     ; preds = %bb.au, %bb.at
  %i.km = load i16, ptr %i.br, align 2, !tbaa !148 ; 4 uses
  %i.kn = icmp ult i16 %i.km, 8
  br i1 %i.kn, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %.critedge127
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i64 noundef %i.jv)
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !83
  %i.ks = load <2 x ptr>, ptr %i.ko, align 8, !tbaa !102
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !83
  store ptr %i.ku, ptr %i.kq, align 8, !tbaa !83
  %i.kv = load <2 x ptr>, ptr %i.kp, align 8, !tbaa !102
  store <2 x ptr> %i.ks, ptr %i.kp, align 8, !tbaa !102
  store <2 x ptr> %i.kv, ptr %i.ko, align 8, !tbaa !102
  store ptr %i.kr, ptr %i.kt, align 8, !tbaa !83
  br i1 %.not114303.not, label %.loopexit, label %.lr.ph310.preheader

.lr.ph310.preheader:                              ; preds = %bb.aw
  %wide.trip.count378 = zext nneg i32 %i.cn to i64
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit
  %indvars.iv375 = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next376, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit ] ; 3 uses
  %i.kw = load i8, ptr %i.ci, align 1, !tbaa !157, !range !95, !noundef !96
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph310
  %i.ky = load i32, ptr %i.bi, align 4, !tbaa !130
  %i.kz = mul i64 %i.js, %indvars.iv375           ; 2 uses
  %i.la = load ptr, ptr %i.ko, align 8, !tbaa !82
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kz
  %i.lc = load ptr, ptr %i.kp, align 8, !tbaa !82
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kz
  br label %bb.az

bb.ay:                                            ; preds = %.lr.ph310
  %i.le = mul i64 %i.js, %indvars.iv375           ; 2 uses
  %i.lf = load ptr, ptr %i.ko, align 8, !tbaa !82
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.le
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 %i.le
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.li = phi ptr [ %i.lb, %bb.ax ], [ %i.lg, %bb.ay ] ; 3 uses
  %i.lj = phi i32 [ %i.ky, %bb.ax ], [ %i.bn, %bb.ay ] ; 2 uses
  %i.lk = phi ptr [ %i.ld, %bb.ax ], [ %i.lh, %bb.ay ] ; 2 uses
  %.in265 = load i16, ptr %i.br, align 2, !tbaa !148 ; 2 uses
  %i.ll = zext i16 %.in265 to i32                 ; 6 uses
  %i.lm = icmp sgt i32 %i.lj, 0
  br i1 %i.lm, label %.preheader.lr.ph.i, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit

.preheader.lr.ph.i:                               ; preds = %bb.az
  %notmask.i = shl nsw i32 -1, %i.ll
  %i.ln = xor i32 %notmask.i, -1                  ; 2 uses
  %.not266 = icmp eq i16 %.in265, 0
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = zext nneg i32 %i.lj to i64              ; 2 uses
  br i1 %.not266, label %.preheader.lr.ph.split.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.066.us.i = phi i64 [ %.2.us89.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  %.04565.us.i = phi i32 [ %.247.us88.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %sext456 = shl i64 %.066.us.i, 32
  %i.lq = ashr exact i64 %sext456, 32             ; 3 uses
  %i.lr = sub nsw i32 8, %.04565.us.i             ; 5 uses
  %.not.us.i.peel = icmp sgt i32 %i.lr, %i.ll
  br i1 %.not.us.i.peel, label %.thread.i, label %bb.ba

bb.ba:                                            ; preds = %.preheader.us.i
  %i.ls = getelementptr inbounds i8, ptr %i.li, i64 %i.lq
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !16
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nsw i32 -1, %i.lr
  %i.lw = xor i32 %i.lv, -1
  %i.lx = and i32 %i.lu, %i.lw
  %i.ly = zext nneg i32 %i.lx to i64              ; 2 uses
  %indvars.iv.next370.peel = add nsw i64 %i.lq, 1 ; 2 uses
  %i.lz = icmp slt i32 %i.lr, %i.ll
  br i1 %i.lz, label %.peel.next373, label %._crit_edge.us.i

.peel.next373:                                    ; preds = %bb.ba, %bb.bb
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %bb.bb ], [ %indvars.iv.next370.peel, %bb.ba ] ; 3 uses
  %.04959.us.i = phi i32 [ %i.mr, %bb.bb ], [ %i.lr, %bb.ba ] ; 2 uses
  %.05158.us.i = phi i64 [ %i.mq, %bb.bb ], [ %i.ly, %bb.ba ] ; 2 uses
  %i.ma = sub nsw i32 %i.ll, %.04959.us.i         ; 3 uses
  %.not.us.i = icmp slt i32 %i.ma, 8
  br i1 %.not.us.i, label %.thread.i.loopexit, label %bb.bb

.thread.i.loopexit:                               ; preds = %.peel.next373
  %.pre384 = shl nsw i32 -1, %i.ma
  %.pre385 = xor i32 %.pre384, -1
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %.preheader.us.i
  %.pre-phi386 = phi i32 [ %.pre385, %.thread.i.loopexit ], [ %i.ln, %.preheader.us.i ]
  %.161.us.i.lcssa.wide = phi i64 [ %indvars.iv369, %.thread.i.loopexit ], [ %i.lq, %.preheader.us.i ] ; 2 uses
  %.14660.us.i.lcssa = phi i32 [ 0, %.thread.i.loopexit ], [ %.04565.us.i, %.preheader.us.i ]
  %.05158.us.i.lcssa = phi i64 [ %.05158.us.i, %.thread.i.loopexit ], [ 0, %.preheader.us.i ]
  %.lcssa321 = phi i32 [ %i.ma, %.thread.i.loopexit ], [ %i.ll, %.preheader.us.i ] ; 3 uses
  %.lcssa = phi i32 [ 8, %.thread.i.loopexit ], [ %i.lr, %.preheader.us.i ]
  %i.mb = zext nneg i32 %.lcssa321 to i64
  %i.mc = shl i64 %.05158.us.i.lcssa, %i.mb
  %i.md = sub nsw i32 %.lcssa, %.lcssa321
  %i.me = getelementptr inbounds i8, ptr %i.li, i64 %.161.us.i.lcssa.wide
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !16
  %i.mg = zext i8 %i.mf to i32
  %i.mh = lshr i32 %i.mg, %i.md
  %i.mi = and i32 %i.mh, %.pre-phi386
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = or i64 %i.mc, %i.mj
  %i.ml = add nsw i32 %.lcssa321, %.14660.us.i.lcssa
  br label %._crit_edge.us.i

bb.bb:                                            ; preds = %.peel.next373
  %i.mm = shl i64 %.05158.us.i, 8
  %i.mn = getelementptr inbounds i8, ptr %i.li, i64 %indvars.iv369
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !16
  %i.mp = zext i8 %i.mo to i64
  %i.mq = or disjoint i64 %i.mm, %i.mp            ; 2 uses
  %indvars.iv.next370 = add nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.mr = add nsw i32 %.04959.us.i, 8             ; 2 uses
  %i.ms = icmp slt i32 %i.mr, %i.ll
  br i1 %i.ms, label %.peel.next373, label %._crit_edge.us.i, !llvm.loop !240

._crit_edge.us.i:                                 ; preds = %bb.bb, %bb.ba, %.thread.i
  %.2.us89.i = phi i64 [ %.161.us.i.lcssa.wide, %.thread.i ], [ %indvars.iv.next370.peel, %bb.ba ], [ %indvars.iv.next370, %bb.bb ]
  %.247.us88.i = phi i32 [ %i.ml, %.thread.i ], [ 0, %bb.ba ], [ 0, %bb.bb ]
  %.152.us87.i = phi i64 [ %i.mk, %.thread.i ], [ %i.ly, %bb.ba ], [ %i.mq, %bb.bb ]
  %i.mt = mul nsw i64 %.152.us87.i, 255
  %i.mu = sdiv i64 %i.mt, %i.lo
  %i.mv = trunc i64 %i.mu to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lk, i64 %indvars.iv.i
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %indvars.iv.next.i, %i.lp
  br i1 %exitcond.not.i151, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit, label %.preheader.us.i, !llvm.loop !231

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.lk, i8 0, i64 %i.lp, i1 false), !tbaa !16
  br label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit

_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit: ; preds = %._crit_edge.us.i, %bb.az, %.preheader.lr.ph.split.i
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond379.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count378
  br i1 %exitcond379.not, label %.loopexit, label %.lr.ph310, !llvm.loop !241

bb.bc:                                            ; preds = %.critedge127
  %.not115 = icmp ne i16 %i.km, 8
  %i.mx = icmp ult i16 %i.km, 16
  %or.cond128 = and i1 %.not115, %i.mx
  br i1 %or.cond128, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 noundef %i.jv)
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !83
  %i.nc = load <2 x ptr>, ptr %i.my, align 8, !tbaa !102
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !83
  store ptr %i.ne, ptr %i.na, align 8, !tbaa !83
  %i.nf = load <2 x ptr>, ptr %i.mz, align 8, !tbaa !102
  store <2 x ptr> %i.nc, ptr %i.mz, align 8, !tbaa !102
  store <2 x ptr> %i.nf, ptr %i.my, align 8, !tbaa !102
  store ptr %i.nb, ptr %i.nd, align 8, !tbaa !83
  br i1 %.not114303.not, label %.loopexit, label %.lr.ph308.preheader

.lr.ph308.preheader:                              ; preds = %bb.bd
  %wide.trip.count367 = zext nneg i32 %i.cn to i64
  br label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit173
  %indvars.iv364 = phi i64 [ 0, %.lr.ph308.preheader ], [ %indvars.iv.next365, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit173 ] ; 3 uses
  %i.ng = load i8, ptr %i.ci, align 1, !tbaa !157, !range !95, !noundef !96
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph308
  %i.ni = load i32, ptr %i.bi, align 4, !tbaa !130
  %i.nj = mul i64 %i.js, %indvars.iv364           ; 2 uses
  %i.nk = load ptr, ptr %i.my, align 8, !tbaa !82
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nj
  %i.nm = load ptr, ptr %i.mz, align 8, !tbaa !82
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nj
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph308
  %i.no = mul i64 %i.js, %indvars.iv364           ; 2 uses
  %i.np = load ptr, ptr %i.my, align 8, !tbaa !82
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.no
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 %i.no
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ns = phi ptr [ %i.nl, %bb.be ], [ %i.nq, %bb.bf ] ; 3 uses
  %i.nt = phi i32 [ %i.ni, %bb.be ], [ %i.bn, %bb.bf ] ; 3 uses
  %i.nu = phi ptr [ %i.nn, %bb.be ], [ %i.nr, %bb.bf ] ; 2 uses
  %.in263 = load i16, ptr %i.br, align 2, !tbaa !148 ; 2 uses
  %i.nv = zext i16 %.in263 to i32                 ; 6 uses
  %i.nw = icmp sgt i32 %i.nt, 0
  br i1 %i.nw, label %.preheader.lr.ph.i152, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit173

.preheader.lr.ph.i152:                            ; preds = %bb.bg
  %notmask.i153 = shl nsw i32 -1, %i.nv
  %i.nx = xor i32 %notmask.i153, -1               ; 2 uses
  %.not264 = icmp eq i16 %.in263, 0
  %i.ny = zext nneg i32 %i.nx to i64
  br i1 %.not264, label %.preheader.lr.ph.split.i154, label %.preheader.us.preheader.i155

.preheader.us.preheader.i155:                     ; preds = %.preheader.lr.ph.i152
  %wide.trip.count.i156 = zext nneg i32 %i.nt to i64
  br label %.preheader.us.i157

.preheader.us.i157:                               ; preds = %._crit_edge.us.i166, %.preheader.us.preheader.i155
  %indvars.iv.i158 = phi i64 [ 0, %.preheader.us.preheader.i155 ], [ %indvars.iv.next.i170, %._crit_edge.us.i166 ] ; 2 uses
  %.066.us.i159 = phi i64 [ 0, %.preheader.us.preheader.i155 ], [ %.2.us89.i167, %._crit_edge.us.i166 ]
  %.04565.us.i160 = phi i32 [ 0, %.preheader.us.preheader.i155 ], [ %.247.us88.i168, %._crit_edge.us.i166 ] ; 2 uses
  %sext455 = shl i64 %.066.us.i159, 32
  %i.nz = ashr exact i64 %sext455, 32             ; 3 uses
  %i.oa = sub nsw i32 8, %.04565.us.i160          ; 5 uses
  %.not.us.i165.peel = icmp sgt i32 %i.oa, %i.nv
  br i1 %.not.us.i165.peel, label %.thread.i172, label %bb.bh

bb.bh:                                            ; preds = %.preheader.us.i157
  %i.ob = getelementptr inbounds i8, ptr %i.ns, i64 %i.nz
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !16
  %i.od = zext i8 %i.oc to i32
  %i.oe = shl nsw i32 -1, %i.oa
  %i.of = xor i32 %i.oe, -1
  %i.og = and i32 %i.od, %i.of
  %i.oh = zext nneg i32 %i.og to i64              ; 2 uses
  %indvars.iv.next359.peel = add nsw i64 %i.nz, 1 ; 2 uses
  %i.oi = icmp slt i32 %i.oa, %i.nv
  br i1 %i.oi, label %.peel.next362, label %._crit_edge.us.i166

.peel.next362:                                    ; preds = %bb.bh, %bb.bi
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %bb.bi ], [ %indvars.iv.next359.peel, %bb.bh ] ; 3 uses
  %.04959.us.i163 = phi i32 [ %i.pa, %bb.bi ], [ %i.oa, %bb.bh ] ; 2 uses
  %.05158.us.i164 = phi i64 [ %i.oz, %bb.bi ], [ %i.oh, %bb.bh ] ; 2 uses
  %i.oj = sub nsw i32 %i.nv, %.04959.us.i163      ; 3 uses
  %.not.us.i165 = icmp slt i32 %i.oj, 8
  br i1 %.not.us.i165, label %.thread.i172.loopexit, label %bb.bi

.thread.i172.loopexit:                            ; preds = %.peel.next362
  %.pre387 = shl nsw i32 -1, %i.oj
  %.pre389 = xor i32 %.pre387, -1
  br label %.thread.i172

.thread.i172:                                     ; preds = %.thread.i172.loopexit, %.preheader.us.i157
  %.pre-phi390 = phi i32 [ %.pre389, %.thread.i172.loopexit ], [ %i.nx, %.preheader.us.i157 ]
  %.161.us.i161.lcssa.wide = phi i64 [ %indvars.iv358, %.thread.i172.loopexit ], [ %i.nz, %.preheader.us.i157 ] ; 2 uses
  %.14660.us.i162.lcssa = phi i32 [ 0, %.thread.i172.loopexit ], [ %.04565.us.i160, %.preheader.us.i157 ]
  %.05158.us.i164.lcssa = phi i64 [ %.05158.us.i164, %.thread.i172.loopexit ], [ 0, %.preheader.us.i157 ]
  %.lcssa330 = phi i32 [ %i.oj, %.thread.i172.loopexit ], [ %i.nv, %.preheader.us.i157 ] ; 3 uses
  %.lcssa328 = phi i32 [ 8, %.thread.i172.loopexit ], [ %i.oa, %.preheader.us.i157 ]
  %i.ok = zext nneg i32 %.lcssa330 to i64
  %i.ol = shl i64 %.05158.us.i164.lcssa, %i.ok
  %i.om = sub nsw i32 %.lcssa328, %.lcssa330
  %i.on = getelementptr inbounds i8, ptr %i.ns, i64 %.161.us.i161.lcssa.wide
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !16
  %i.op = zext i8 %i.oo to i32
  %i.oq = lshr i32 %i.op, %i.om
  %i.or = and i32 %i.oq, %.pre-phi390
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = or i64 %i.ol, %i.os
  %i.ou = add nsw i32 %.lcssa330, %.14660.us.i162.lcssa
  br label %._crit_edge.us.i166

bb.bi:                                            ; preds = %.peel.next362
  %i.ov = shl i64 %.05158.us.i164, 8
  %i.ow = getelementptr inbounds i8, ptr %i.ns, i64 %indvars.iv358
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !16
  %i.oy = zext i8 %i.ox to i64
  %i.oz = or disjoint i64 %i.ov, %i.oy            ; 2 uses
  %indvars.iv.next359 = add nsw i64 %indvars.iv358, 1 ; 2 uses
  %i.pa = add nsw i32 %.04959.us.i163, 8          ; 2 uses
  %i.pb = icmp slt i32 %i.pa, %i.nv
  br i1 %i.pb, label %.peel.next362, label %._crit_edge.us.i166, !llvm.loop !242

._crit_edge.us.i166:                              ; preds = %bb.bi, %bb.bh, %.thread.i172
  %.2.us89.i167 = phi i64 [ %.161.us.i161.lcssa.wide, %.thread.i172 ], [ %indvars.iv.next359.peel, %bb.bh ], [ %indvars.iv.next359, %bb.bi ]
  %.247.us88.i168 = phi i32 [ %i.ou, %.thread.i172 ], [ 0, %bb.bh ], [ 0, %bb.bi ]
  %.152.us87.i169 = phi i64 [ %i.ot, %.thread.i172 ], [ %i.oh, %bb.bh ], [ %i.oz, %bb.bi ]
  %i.pc = mul nsw i64 %.152.us87.i169, 65535
  %i.pd = sdiv i64 %i.pc, %i.ny
  %i.pe = trunc i64 %i.pd to i16
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.nu, i64 %indvars.iv.i158
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !93
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %wide.trip.count.i156
  br i1 %exitcond.not.i171, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit173, label %.preheader.us.i157, !llvm.loop !231

.preheader.lr.ph.split.i154:                      ; preds = %.preheader.lr.ph.i152
  %i.pg = shl nuw i32 %i.nt, 1
  %i.ph = zext i32 %i.pg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.nu, i8 0, i64 %i.ph, i1 false), !tbaa !16
  br label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit173

_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit173: ; preds = %._crit_edge.us.i166, %bb.bg, %.preheader.lr.ph.split.i154
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %.loopexit, label %.lr.ph308, !llvm.loop !243

bb.bj:                                            ; preds = %bb.bc
  %i.pi = add i16 %i.km, -17
  %or.cond129 = icmp ult i16 %i.pi, 15
  br i1 %or.cond129, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pj, i64 noundef %i.jv)
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !83
  %i.pn = load <2 x ptr>, ptr %i.pj, align 8, !tbaa !102
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !83
  store ptr %i.pp, ptr %i.pl, align 8, !tbaa !83
  %i.pq = load <2 x ptr>, ptr %i.pk, align 8, !tbaa !102
  store <2 x ptr> %i.pn, ptr %i.pk, align 8, !tbaa !102
  store <2 x ptr> %i.pq, ptr %i.pj, align 8, !tbaa !102
  store ptr %i.pm, ptr %i.po, align 8, !tbaa !83
  br i1 %.not114303.not, label %.loopexit, label %.lr.ph306.preheader

.lr.ph306.preheader:                              ; preds = %bb.bk
  %wide.trip.count356 = zext nneg i32 %i.cn to i64
  br label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph306.preheader, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit195
  %indvars.iv353 = phi i64 [ 0, %.lr.ph306.preheader ], [ %indvars.iv.next354, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit195 ] ; 3 uses
  %i.pr = load i8, ptr %i.ci, align 1, !tbaa !157, !range !95, !noundef !96
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph306
  %i.pt = load i32, ptr %i.bi, align 4, !tbaa !130
  %i.pu = mul i64 %i.js, %indvars.iv353           ; 2 uses
  %i.pv = load ptr, ptr %i.pj, align 8, !tbaa !82
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pu
  %i.px = load ptr, ptr %i.pk, align 8, !tbaa !82
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pu
  br label %bb.bn

bb.bm:                                            ; preds = %.lr.ph306
  %i.pz = mul i64 %i.js, %indvars.iv353           ; 2 uses
  %i.qa = load ptr, ptr %i.pj, align 8, !tbaa !82
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.pz
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 %i.pz
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.qd = phi ptr [ %i.pw, %bb.bl ], [ %i.qb, %bb.bm ] ; 3 uses
  %i.qe = phi i32 [ %i.pt, %bb.bl ], [ %i.bn, %bb.bm ] ; 2 uses
  %i.qf = phi ptr [ %i.py, %bb.bl ], [ %i.qc, %bb.bm ] ; 2 uses
  %.in = load i16, ptr %i.br, align 2, !tbaa !148 ; 2 uses
  %i.qg = zext i16 %.in to i32                    ; 6 uses
  %i.qh = icmp sgt i32 %i.qe, 0
  br i1 %i.qh, label %.preheader.lr.ph.i174, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit195

.preheader.lr.ph.i174:                            ; preds = %bb.bn
  %notmask.i175 = shl nsw i32 -1, %i.qg
  %i.qi = xor i32 %notmask.i175, -1               ; 2 uses
  %.not262 = icmp eq i16 %.in, 0
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = zext nneg i32 %i.qe to i64              ; 2 uses
  br i1 %.not262, label %.preheader.lr.ph.split.i176, label %.preheader.us.i179

.preheader.us.i179:                               ; preds = %.preheader.lr.ph.i174, %._crit_edge.us.i188
  %indvars.iv.i180 = phi i64 [ %indvars.iv.next.i192, %._crit_edge.us.i188 ], [ 0, %.preheader.lr.ph.i174 ] ; 2 uses
  %.066.us.i181 = phi i64 [ %.2.us89.i189, %._crit_edge.us.i188 ], [ 0, %.preheader.lr.ph.i174 ]
  %.04565.us.i182 = phi i32 [ %.247.us88.i190, %._crit_edge.us.i188 ], [ 0, %.preheader.lr.ph.i174 ] ; 2 uses
  %sext = shl i64 %.066.us.i181, 32
  %i.ql = ashr exact i64 %sext, 32                ; 3 uses
  %i.qm = sub nsw i32 8, %.04565.us.i182          ; 5 uses
  %.not.us.i187.peel = icmp sgt i32 %i.qm, %i.qg
  br i1 %.not.us.i187.peel, label %.thread.i194, label %bb.bo

bb.bo:                                            ; preds = %.preheader.us.i179
  %i.qn = getelementptr inbounds i8, ptr %i.qd, i64 %i.ql
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !16
  %i.qp = zext i8 %i.qo to i32
  %i.qq = shl nsw i32 -1, %i.qm
  %i.qr = xor i32 %i.qq, -1
  %i.qs = and i32 %i.qp, %i.qr
  %i.qt = zext nneg i32 %i.qs to i64              ; 2 uses
  %indvars.iv.next350.peel = add nsw i64 %i.ql, 1 ; 2 uses
  %i.qu = icmp slt i32 %i.qm, %i.qg
  br i1 %i.qu, label %.peel.next, label %._crit_edge.us.i188

.peel.next:                                       ; preds = %bb.bo, %bb.bp
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %bb.bp ], [ %indvars.iv.next350.peel, %bb.bo ] ; 3 uses
  %.04959.us.i185 = phi i32 [ %i.rm, %bb.bp ], [ %i.qm, %bb.bo ] ; 2 uses
  %.05158.us.i186 = phi i64 [ %i.rl, %bb.bp ], [ %i.qt, %bb.bo ] ; 2 uses
  %i.qv = sub nsw i32 %i.qg, %.04959.us.i185      ; 3 uses
  %.not.us.i187 = icmp slt i32 %i.qv, 8
  br i1 %.not.us.i187, label %.thread.i194.loopexit, label %bb.bp

.thread.i194.loopexit:                            ; preds = %.peel.next
  %.pre391 = shl nsw i32 -1, %i.qv
  %.pre393 = xor i32 %.pre391, -1
  br label %.thread.i194

.thread.i194:                                     ; preds = %.thread.i194.loopexit, %.preheader.us.i179
  %.pre-phi394 = phi i32 [ %.pre393, %.thread.i194.loopexit ], [ %i.qi, %.preheader.us.i179 ]
  %.161.us.i183.lcssa.wide = phi i64 [ %indvars.iv349, %.thread.i194.loopexit ], [ %i.ql, %.preheader.us.i179 ] ; 2 uses
  %.14660.us.i184.lcssa = phi i32 [ 0, %.thread.i194.loopexit ], [ %.04565.us.i182, %.preheader.us.i179 ]
  %.05158.us.i186.lcssa = phi i64 [ %.05158.us.i186, %.thread.i194.loopexit ], [ 0, %.preheader.us.i179 ]
  %.lcssa339 = phi i32 [ %i.qv, %.thread.i194.loopexit ], [ %i.qg, %.preheader.us.i179 ] ; 3 uses
  %.lcssa337 = phi i32 [ 8, %.thread.i194.loopexit ], [ %i.qm, %.preheader.us.i179 ]
  %i.qw = zext nneg i32 %.lcssa339 to i64
  %i.qx = shl i64 %.05158.us.i186.lcssa, %i.qw
  %i.qy = sub nsw i32 %.lcssa337, %.lcssa339
  %i.qz = getelementptr inbounds i8, ptr %i.qd, i64 %.161.us.i183.lcssa.wide
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !16
  %i.rb = zext i8 %i.ra to i32
  %i.rc = lshr i32 %i.rb, %i.qy
  %i.rd = and i32 %i.rc, %.pre-phi394
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = or i64 %i.qx, %i.re
  %i.rg = add nsw i32 %.lcssa339, %.14660.us.i184.lcssa
  br label %._crit_edge.us.i188

bb.bp:                                            ; preds = %.peel.next
  %i.rh = shl i64 %.05158.us.i186, 8
  %i.ri = getelementptr inbounds i8, ptr %i.qd, i64 %indvars.iv349
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !16
  %i.rk = zext i8 %i.rj to i64
  %i.rl = or disjoint i64 %i.rh, %i.rk            ; 2 uses
  %indvars.iv.next350 = add nsw i64 %indvars.iv349, 1 ; 2 uses
  %i.rm = add nsw i32 %.04959.us.i185, 8          ; 2 uses
  %i.rn = icmp slt i32 %i.rm, %i.qg
  br i1 %i.rn, label %.peel.next, label %._crit_edge.us.i188, !llvm.loop !244

._crit_edge.us.i188:                              ; preds = %bb.bp, %bb.bo, %.thread.i194
  %.2.us89.i189 = phi i64 [ %.161.us.i183.lcssa.wide, %.thread.i194 ], [ %indvars.iv.next350.peel, %bb.bo ], [ %indvars.iv.next350, %bb.bp ]
  %.247.us88.i190 = phi i32 [ %i.rg, %.thread.i194 ], [ 0, %bb.bo ], [ 0, %bb.bp ]
  %.152.us87.i191 = phi i64 [ %i.rf, %.thread.i194 ], [ %i.qt, %bb.bo ], [ %i.rl, %bb.bp ]
  %i.ro = mul nsw i64 %.152.us87.i191, 4294967295
  %i.rp = sdiv i64 %i.ro, %i.qj
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %indvars.iv.i180
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !3
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i180, 1 ; 2 uses
  %exitcond.not.i193 = icmp eq i64 %indvars.iv.next.i192, %i.qk
  br i1 %exitcond.not.i193, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit195, label %.preheader.us.i179, !llvm.loop !231

.preheader.lr.ph.split.i176:                      ; preds = %.preheader.lr.ph.i174
  %i.rs = shl nuw nsw i64 %i.qk, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.qf, i8 0, i64 %i.rs, i1 false), !tbaa !16
  br label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit195

_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit195: ; preds = %._crit_edge.us.i188, %bb.bn, %.preheader.lr.ph.split.i176
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count356
  br i1 %exitcond357.not, label %.loopexit, label %.lr.ph306, !llvm.loop !245

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit195, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit173, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit, %bb.bk, %bb.bd, %bb.aw, %bb.bj
  %i.rt = load i8, ptr %i.ci, align 1, !tbaa !157, !range !95, !noundef !96
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.bq, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit226

bb.bq:                                            ; preds = %.loopexit
  %i.rv = load i16, ptr %i.bo, align 4, !tbaa !155
  %i.rw = icmp eq i16 %i.rv, 5
  br i1 %i.rw, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !107, !range !95, !noundef !96
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sa, i64 noundef %i.jv)
  %i.sb = zext nneg i32 %i.cn to i64              ; 4 uses
  %i.sc = load i32, ptr %i.bi, align 4, !tbaa !130 ; 2 uses
  %i.sd = sext i32 %i.sc to i64                   ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !82 ; 3 uses
  %i.sg = load ptr, ptr %i.sa, align 8, !tbaa !82 ; 3 uses
  %i.sh = load i32, ptr %i.jk, align 4, !tbaa !101
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.sh, i32 1)
  %spec.select.i.i.i = zext nneg i32 %narrow.i.i.i to i64 ; 5 uses
  %i.si = load i8, ptr %i.jm, align 1, !tbaa !177
  %i.sj = zext i8 %i.si to i64                    ; 5 uses
  %i.sk = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.jj) #36 ; 5 uses
  %i.sl = mul i64 %i.sk, %i.sj
  %i.sm = mul i64 %i.sl, %spec.select.i.i.i       ; 14 uses
  %.not33.i = icmp eq i32 %i.sc, 0
  %.not35.i = icmp eq i64 %i.sm, 0
  %i.sn = or i1 %.not33.i, %.not114303.not
  %or.cond482 = select i1 %i.sn, i1 true, i1 %.not35.i
  br i1 %or.cond482, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, label %.preheader24.i.preheader

.preheader24.i.preheader:                         ; preds = %bb.bs
  %i.so = mul i64 %i.sk, %i.sb
  %i.sp = mul i64 %i.so, %i.sj
  %i.sq = mul i64 %i.sp, %spec.select.i.i.i       ; 2 uses
  %i.sr = mul i64 %i.sk, %i.sj
  %i.ss = mul i64 %i.sr, %spec.select.i.i.i
  %i.st = add nsw i64 %i.sb, -1
  %i.su = mul nsw i64 %i.st, %i.sd
  %i.sv = add nsw i64 %i.su, 1
  %i.sw = mul i64 %i.sk, %i.sv
  %i.sx = mul i64 %i.sw, %i.sj
  %i.sy = mul i64 %i.sx, %spec.select.i.i.i
  %i.sz = mul i64 %i.sk, %i.sd
  %i.ta = mul i64 %i.sz, %i.sj
  %i.tb = mul i64 %i.ta, %spec.select.i.i.i
  %i.tc = getelementptr i8, ptr %i.sg, i64 %i.sq
  %i.td = getelementptr i8, ptr %i.sf, i64 %i.sy
  %min.iters.check = icmp ult i64 %i.sm, 4
  %i.te = or i64 %i.tb, %i.sm
  %i.tf = icmp slt i64 %i.te, 0
  %min.iters.check512 = icmp ult i64 %i.sm, 32
  %n.mod.vf = and i64 %i.sm, 28
  %n.vec = and i64 %i.sm, -32                     ; 4 uses
  %cmp.n = icmp eq i64 %i.sm, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec515 = and i64 %i.sm, -4                   ; 3 uses
  %cmp.n519 = icmp eq i64 %i.sm, %n.vec515
  %xtraiter = and i64 %i.sm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %.preheader24.i.preheader, %._crit_edge27.i
  %.02028.i = phi i64 [ %i.uf, %._crit_edge27.i ], [ 0, %.preheader24.i.preheader ] ; 5 uses
  %i.tg = mul i64 %i.sq, %.02028.i                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.sg, i64 %i.tg
  %scevgep508 = getelementptr i8, ptr %i.tc, i64 %i.tg
  %i.th = mul i64 %i.ss, %.02028.i                ; 2 uses
  %scevgep509 = getelementptr i8, ptr %i.sf, i64 %i.th
  %scevgep510 = getelementptr i8, ptr %i.td, i64 %i.th
  %i.ti = mul i64 %.02028.i, %i.sb
  %bound0 = icmp ult ptr %scevgep, %scevgep510
  %bound1 = icmp ult ptr %scevgep509, %scevgep508
  %found.conflict = and i1 %bound0, %bound1
  %i.tj = or i1 %found.conflict, %i.tf
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader24.i
  %.01926.i = phi i64 [ 0, %.preheader24.i ], [ %i.ug, %._crit_edge.i ] ; 3 uses
  %i.tk = mul i64 %.01926.i, %i.sd
  %i.tl = add i64 %i.tk, %.02028.i
  %i.tm = mul i64 %i.tl, %i.sm
  %i.tn = getelementptr i8, ptr %i.sf, i64 %i.tm  ; 7 uses
  %i.to = add i64 %.01926.i, %i.ti
  %i.tp = mul i64 %i.to, %i.sm
  %i.tq = getelementptr i8, ptr %i.sg, i64 %i.tp  ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.tj
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check512, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.tr = getelementptr i8, ptr %i.tn, i64 %index ; 2 uses
  %i.ts = getelementptr i8, ptr %i.tr, i64 16
  %wide.load = load <16 x i8>, ptr %i.tr, align 1, !tbaa !16, !alias.scope !246
  %wide.load513 = load <16 x i8>, ptr %i.ts, align 1, !tbaa !16, !alias.scope !246
  %i.tt = getelementptr i8, ptr %i.tq, i64 %index ; 2 uses
  %i.tu = getelementptr i8, ptr %i.tt, i64 16
  store <16 x i8> %wide.load, ptr %i.tt, align 1, !tbaa !16, !alias.scope !249, !noalias !246
  store <16 x i8> %wide.load513, ptr %i.tu, align 1, !tbaa !16, !alias.scope !249, !noalias !246
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tv = icmp eq i64 %index.next, %n.vec
  br i1 %i.tv, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index516 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next518, %vec.epilog.vector.body ] ; 3 uses
  %i.tw = getelementptr i8, ptr %i.tn, i64 %index516
  %wide.load517 = load <4 x i8>, ptr %i.tw, align 1, !tbaa !16, !alias.scope !246
  %i.tx = getelementptr i8, ptr %i.tq, i64 %index516
  store <4 x i8> %wide.load517, ptr %i.tx, align 1, !tbaa !16, !alias.scope !249, !noalias !246
  %index.next518 = add nuw i64 %index516, 4       ; 2 uses
  %i.ty = icmp eq i64 %index.next518, %n.vec515
  br i1 %i.ty, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !252

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n519, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.025.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec515, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.025.i.prol = phi i64 [ %i.uc, %vec.epilog.scalar.ph.prol ], [ %.025.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.tz = getelementptr i8, ptr %i.tn, i64 %.025.i.prol
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !16
  %i.ub = getelementptr i8, ptr %i.tq, i64 %.025.i.prol
  store i8 %i.ua, ptr %i.ub, align 1, !tbaa !16
  %i.uc = add nuw i64 %.025.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !253

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.025.i.unr = phi i64 [ %.025.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.uc, %vec.epilog.scalar.ph.prol ]
  %i.ud = sub i64 %.025.i.ph, %i.sm
  %i.ue = icmp ugt i64 %i.ud, -4
  br i1 %i.ue, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge27.i:                                  ; preds = %._crit_edge.i
  %i.uf = add nuw i64 %.02028.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.uf, %i.sd
  br i1 %exitcond38.not.i, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, label %.preheader24.i, !llvm.loop !226

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ug = add nuw nsw i64 %.01926.i, 1            ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.ug, %i.sb
  br i1 %exitcond37.not.i, label %._crit_edge27.i, label %iter.check, !llvm.loop !227

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.025.i = phi i64 [ %i.uw, %vec.epilog.scalar.ph ], [ %.025.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.uh = getelementptr i8, ptr %i.tn, i64 %.025.i
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !16
  %i.uj = getelementptr i8, ptr %i.tq, i64 %.025.i
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !16
  %i.uk = add nuw i64 %.025.i, 1                  ; 2 uses
  %i.ul = getelementptr i8, ptr %i.tn, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !16
  %i.un = getelementptr i8, ptr %i.tq, i64 %i.uk
  store i8 %i.um, ptr %i.un, align 1, !tbaa !16
  %i.uo = add nuw i64 %.025.i, 2                  ; 2 uses
  %i.up = getelementptr i8, ptr %i.tn, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !16
  %i.ur = getelementptr i8, ptr %i.tq, i64 %i.uo
  store i8 %i.uq, ptr %i.ur, align 1, !tbaa !16
  %i.us = add nuw i64 %.025.i, 3                  ; 2 uses
  %i.ut = getelementptr i8, ptr %i.tn, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !16
  %i.uv = getelementptr i8, ptr %i.tq, i64 %i.us
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19TIFFInput23read_native_tile_lockedEiiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

bb.v:                                             ; preds = %bb.u
  %i.gi = load i16, ptr %i.bn, align 2, !tbaa !76 ; 3 uses
  %i.gj = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i1 noundef zeroext false) #36 ; 5 uses
  %i.gk = icmp slt i64 %i.gj, 0
  br i1 %i.gk, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #40
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.v
  %.not.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc112

.noexc112:                                        ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #42 ; 5 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gj  ; 3 uses
  store i8 0, ptr %i.gl, align 1, !tbaa !16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 2 uses
  %i.go = add nsw i64 %i.gj, -1                   ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.w

bb.w:                                             ; preds = %.noexc112
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gn, i8 0, i64 %i.go, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.u, %bb.w, %.noexc112, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.shrunk = phi i16 [ %i.gi, %bb.w ], [ %i.gi, %.noexc112 ], [ %i.gi, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ 1, %bb.u ] ; 5 uses
  %.sroa.21.1 = phi ptr [ %i.gm, %bb.w ], [ %i.gm, %.noexc112 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %bb.u ] ; 5 uses
  %.sroa.0150.1 = phi ptr [ %i.gl, %bb.w ], [ %i.gl, %.noexc112 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %bb.u ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.gm, %bb.w ], [ %i.gn, %.noexc112 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %bb.u ] ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.gq = load i8, ptr %i.gf, align 1, !tbaa !157, !range !95, !noundef !96
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.in = phi ptr [ %i.gs, %bb.y ], [ %6, %bb.x ]
  %i.gt = load ptr, ptr %.in, align 8, !tbaa !181
  %.not.not194.not = icmp eq i16 %.shrunk, 0      ; 4 uses
  br i1 %.not.not194.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 184
  %wide.trip.count = zext i16 %.shrunk to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.ab, !llvm.loop !380

bb.ab:                                            ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !20
  %i.gw = mul i64 %i.ge, %indvars.iv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = trunc i64 %indvars.iv to i16
  %i.gz = invoke i64 @TIFFReadTile(ptr noundef %i.gv, ptr noundef %i.gx, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %5, i16 noundef zeroext %i.gy)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ha = icmp slt i64 %i.gz, 0
  br i1 %i.ha, label %.critedge97, label %bb.aa

bb.ad:                                            ; preds = %bb.ab
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.sroa.0150.1, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIhSaIhEED2Ev.exit142, label %bb.an

.critedge:                                        ; preds = %bb.aa, %bb.z
  %i.hc = load i16, ptr %i.ck, align 2, !tbaa !148 ; 3 uses
  %i.hd = icmp ult i16 %i.hc, 8
  br i1 %i.hd, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %.critedge
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !82 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !83 ; 2 uses
  store ptr %.sroa.0150.1, ptr %i.he, align 8, !tbaa !82
  store ptr %.0.i.i.i.i.i, ptr %i.hg, align 8, !tbaa !271
  store ptr %.sroa.21.1, ptr %i.hh, align 8, !tbaa !83
  br i1 %.not.not194.not, label %.loopexit, label %.lr.ph199.preheader

.lr.ph199.preheader:                              ; preds = %bb.ae
  %wide.trip.count239 = zext i16 %.shrunk to i64
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit
  %indvars.iv236 = phi i64 [ 0, %.lr.ph199.preheader ], [ %indvars.iv.next237, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit ] ; 2 uses
  %i.hj = load i8, ptr %i.gf, align 1, !tbaa !157, !range !95, !noundef !96
  %i.hk = trunc nuw i8 %i.hj to i1                ; 2 uses
  %i.hl = select i1 %i.hk, i64 %i.bm, i64 %i.bq   ; 2 uses
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = mul i64 %i.ge, %indvars.iv236           ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hn ; 3 uses
  %i.hp = load i16, ptr %i.ck, align 2, !tbaa !148 ; 2 uses
  %i.hq = zext i16 %i.hp to i32                   ; 6 uses
  %. = select i1 %i.hk, ptr %i.he, ptr %6
  %.pn92 = load ptr, ptr %., align 8, !tbaa !181
  %i.hr = getelementptr inbounds nuw i8, ptr %.pn92, i64 %i.hn ; 2 uses
  %i.hs = icmp sgt i32 %i.hm, 0
  br i1 %i.hs, label %.preheader.lr.ph.i, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit

.preheader.lr.ph.i:                               ; preds = %.lr.ph199
  %notmask.i = shl nsw i32 -1, %i.hq
  %i.ht = xor i32 %notmask.i, -1                  ; 2 uses
  %.not172 = icmp eq i16 %i.hp, 0
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = and i64 %i.hl, 2147483647               ; 2 uses
  br i1 %.not172, label %.preheader.lr.ph.split.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.066.us.i = phi i64 [ %.2.us89.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  %.04565.us.i = phi i32 [ %.247.us88.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %sext278 = shl i64 %.066.us.i, 32
  %i.hw = ashr exact i64 %sext278, 32             ; 3 uses
  %i.hx = sub nsw i32 8, %.04565.us.i             ; 5 uses
  %.not.us.i.peel = icmp sgt i32 %i.hx, %i.hq
  br i1 %.not.us.i.peel, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %.preheader.us.i
  %i.hy = getelementptr inbounds i8, ptr %i.ho, i64 %i.hw
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !16
  %i.ia = zext i8 %i.hz to i32
  %i.ib = shl nsw i32 -1, %i.hx
  %i.ic = xor i32 %i.ib, -1
  %i.id = and i32 %i.ia, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 2 uses
  %indvars.iv.next231.peel = add nsw i64 %i.hw, 1 ; 2 uses
  %i.if = icmp slt i32 %i.hx, %i.hq
  br i1 %i.if, label %.peel.next234, label %._crit_edge.us.i

.peel.next234:                                    ; preds = %bb.af, %bb.ag
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %bb.ag ], [ %indvars.iv.next231.peel, %bb.af ] ; 3 uses
  %.04959.us.i = phi i32 [ %i.ix, %bb.ag ], [ %i.hx, %bb.af ] ; 2 uses
  %.05158.us.i = phi i64 [ %i.iw, %bb.ag ], [ %i.ie, %bb.af ] ; 2 uses
  %i.ig = sub nsw i32 %i.hq, %.04959.us.i         ; 3 uses
  %.not.us.i = icmp slt i32 %i.ig, 8
  br i1 %.not.us.i, label %.thread.i.loopexit, label %bb.ag

.thread.i.loopexit:                               ; preds = %.peel.next234
  %.pre242 = shl nsw i32 -1, %i.ig
  %.pre243 = xor i32 %.pre242, -1
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %.preheader.us.i
  %.pre-phi244 = phi i32 [ %.pre243, %.thread.i.loopexit ], [ %i.ht, %.preheader.us.i ]
  %.161.us.i.lcssa.wide = phi i64 [ %indvars.iv230, %.thread.i.loopexit ], [ %i.hw, %.preheader.us.i ] ; 2 uses
  %.14660.us.i.lcssa = phi i32 [ 0, %.thread.i.loopexit ], [ %.04565.us.i, %.preheader.us.i ]
  %.05158.us.i.lcssa = phi i64 [ %.05158.us.i, %.thread.i.loopexit ], [ 0, %.preheader.us.i ]
  %.lcssa204 = phi i32 [ %i.ig, %.thread.i.loopexit ], [ %i.hq, %.preheader.us.i ] ; 3 uses
  %.lcssa = phi i32 [ 8, %.thread.i.loopexit ], [ %i.hx, %.preheader.us.i ]
  %i.ih = zext nneg i32 %.lcssa204 to i64
  %i.ii = shl i64 %.05158.us.i.lcssa, %i.ih
  %i.ij = sub nsw i32 %.lcssa, %.lcssa204
  %i.ik = getelementptr inbounds i8, ptr %i.ho, i64 %.161.us.i.lcssa.wide
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !16
  %i.im = zext i8 %i.il to i32
  %i.in = lshr i32 %i.im, %i.ij
  %i.io = and i32 %i.in, %.pre-phi244
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = or i64 %i.ii, %i.ip
  %i.ir = add nsw i32 %.lcssa204, %.14660.us.i.lcssa
  br label %._crit_edge.us.i

bb.ag:                                            ; preds = %.peel.next234
  %i.is = shl i64 %.05158.us.i, 8
  %i.it = getelementptr inbounds i8, ptr %i.ho, i64 %indvars.iv230
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !16
  %i.iv = zext i8 %i.iu to i64
  %i.iw = or disjoint i64 %i.is, %i.iv            ; 2 uses
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.ix = add nsw i32 %.04959.us.i, 8             ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %i.hq
  br i1 %i.iy, label %.peel.next234, label %._crit_edge.us.i, !llvm.loop !381

._crit_edge.us.i:                                 ; preds = %bb.ag, %bb.af, %.thread.i
  %.2.us89.i = phi i64 [ %.161.us.i.lcssa.wide, %.thread.i ], [ %indvars.iv.next231.peel, %bb.af ], [ %indvars.iv.next231, %bb.ag ]
  %.247.us88.i = phi i32 [ %i.ir, %.thread.i ], [ 0, %bb.af ], [ 0, %bb.ag ]
  %.152.us87.i = phi i64 [ %i.iq, %.thread.i ], [ %i.ie, %bb.af ], [ %i.iw, %bb.ag ]
  %i.iz = mul nsw i64 %.152.us87.i, 255
  %i.ja = sdiv i64 %i.iz, %i.hu
  %i.jb = trunc i64 %i.ja to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hr, i64 %indvars.iv.i
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %indvars.iv.next.i, %i.hv
  br i1 %exitcond.not.i113, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit, label %.preheader.us.i, !llvm.loop !231

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hr, i8 0, i64 %i.hv, i1 false), !tbaa !16
  br label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit

_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit: ; preds = %._crit_edge.us.i, %.lr.ph199, %.preheader.lr.ph.split.i
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit, label %.lr.ph199, !llvm.loop !382

bb.ah:                                            ; preds = %.critedge
  %.not88 = icmp ne i16 %i.hc, 8
  %i.jd = icmp ult i16 %i.hc, 16
  %or.cond = and i1 %.not88, %i.jd
  br i1 %or.cond, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !82 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !83 ; 2 uses
  store ptr %.sroa.0150.1, ptr %i.je, align 8, !tbaa !82
  store ptr %.0.i.i.i.i.i, ptr %i.jg, align 8, !tbaa !271
  store ptr %.sroa.21.1, ptr %i.jh, align 8, !tbaa !83
  br i1 %.not.not194.not, label %.loopexit, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %bb.ai
  %wide.trip.count228 = zext i16 %.shrunk to i64
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135
  %indvars.iv225 = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next226, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135 ] ; 2 uses
  %i.jj = load i8, ptr %i.gf, align 1, !tbaa !157, !range !95, !noundef !96
  %i.jk = trunc nuw i8 %i.jj to i1                ; 2 uses
  %i.jl = select i1 %i.jk, i64 %i.bm, i64 %i.bq   ; 3 uses
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = mul i64 %i.ge, %indvars.iv225           ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jn ; 3 uses
  %i.jp = load i16, ptr %i.ck, align 2, !tbaa !148 ; 2 uses
  %i.jq = zext i16 %i.jp to i32                   ; 6 uses
  %.174 = select i1 %i.jk, ptr %i.je, ptr %6
  %.pn = load ptr, ptr %.174, align 8, !tbaa !181
  %i.jr = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.jn ; 2 uses
  %i.js = icmp sgt i32 %i.jm, 0
  br i1 %i.js, label %.preheader.lr.ph.i114, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135

.preheader.lr.ph.i114:                            ; preds = %.lr.ph197
  %notmask.i115 = shl nsw i32 -1, %i.jq
  %i.jt = xor i32 %notmask.i115, -1               ; 2 uses
  %.not171 = icmp eq i16 %i.jp, 0
  %i.ju = zext nneg i32 %i.jt to i64
  br i1 %.not171, label %.preheader.lr.ph.split.i116, label %.preheader.us.preheader.i117

.preheader.us.preheader.i117:                     ; preds = %.preheader.lr.ph.i114
  %wide.trip.count.i118 = and i64 %i.jl, 2147483647
  br label %.preheader.us.i119

.preheader.us.i119:                               ; preds = %._crit_edge.us.i128, %.preheader.us.preheader.i117
  %indvars.iv.i120 = phi i64 [ 0, %.preheader.us.preheader.i117 ], [ %indvars.iv.next.i132, %._crit_edge.us.i128 ] ; 2 uses
  %.066.us.i121 = phi i64 [ 0, %.preheader.us.preheader.i117 ], [ %.2.us89.i129, %._crit_edge.us.i128 ]
  %.04565.us.i122 = phi i32 [ 0, %.preheader.us.preheader.i117 ], [ %.247.us88.i130, %._crit_edge.us.i128 ] ; 2 uses
  %sext = shl i64 %.066.us.i121, 32
  %i.jv = ashr exact i64 %sext, 32                ; 3 uses
  %i.jw = sub nsw i32 8, %.04565.us.i122          ; 5 uses
  %.not.us.i127.peel = icmp sgt i32 %i.jw, %i.jq
  br i1 %.not.us.i127.peel, label %.thread.i134, label %bb.aj

bb.aj:                                            ; preds = %.preheader.us.i119
  %i.jx = getelementptr inbounds i8, ptr %i.jo, i64 %i.jv
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !16
  %i.jz = zext i8 %i.jy to i32
  %i.ka = shl nsw i32 -1, %i.jw
  %i.kb = xor i32 %i.ka, -1
  %i.kc = and i32 %i.jz, %i.kb
  %i.kd = zext nneg i32 %i.kc to i64              ; 2 uses
  %indvars.iv.next222.peel = add nsw i64 %i.jv, 1 ; 2 uses
  %i.ke = icmp slt i32 %i.jw, %i.jq
  br i1 %i.ke, label %.peel.next, label %._crit_edge.us.i128

.peel.next:                                       ; preds = %bb.aj, %bb.ak
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %bb.ak ], [ %indvars.iv.next222.peel, %bb.aj ] ; 3 uses
  %.04959.us.i125 = phi i32 [ %i.kw, %bb.ak ], [ %i.jw, %bb.aj ] ; 2 uses
  %.05158.us.i126 = phi i64 [ %i.kv, %bb.ak ], [ %i.kd, %bb.aj ] ; 2 uses
  %i.kf = sub nsw i32 %i.jq, %.04959.us.i125      ; 3 uses
  %.not.us.i127 = icmp slt i32 %i.kf, 8
  br i1 %.not.us.i127, label %.thread.i134.loopexit, label %bb.ak

.thread.i134.loopexit:                            ; preds = %.peel.next
  %.pre245 = shl nsw i32 -1, %i.kf
  %.pre247 = xor i32 %.pre245, -1
  br label %.thread.i134

.thread.i134:                                     ; preds = %.thread.i134.loopexit, %.preheader.us.i119
  %.pre-phi248 = phi i32 [ %.pre247, %.thread.i134.loopexit ], [ %i.jt, %.preheader.us.i119 ]
  %.161.us.i123.lcssa.wide = phi i64 [ %indvars.iv221, %.thread.i134.loopexit ], [ %i.jv, %.preheader.us.i119 ] ; 2 uses
  %.14660.us.i124.lcssa = phi i32 [ 0, %.thread.i134.loopexit ], [ %.04565.us.i122, %.preheader.us.i119 ]
  %.05158.us.i126.lcssa = phi i64 [ %.05158.us.i126, %.thread.i134.loopexit ], [ 0, %.preheader.us.i119 ]
  %.lcssa213 = phi i32 [ %i.kf, %.thread.i134.loopexit ], [ %i.jq, %.preheader.us.i119 ] ; 3 uses
  %.lcssa211 = phi i32 [ 8, %.thread.i134.loopexit ], [ %i.jw, %.preheader.us.i119 ]
  %i.kg = zext nneg i32 %.lcssa213 to i64
  %i.kh = shl i64 %.05158.us.i126.lcssa, %i.kg
  %i.ki = sub nsw i32 %.lcssa211, %.lcssa213
  %i.kj = getelementptr inbounds i8, ptr %i.jo, i64 %.161.us.i123.lcssa.wide
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !16
  %i.kl = zext i8 %i.kk to i32
  %i.km = lshr i32 %i.kl, %i.ki
  %i.kn = and i32 %i.km, %.pre-phi248
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = or i64 %i.kh, %i.ko
  %i.kq = add nsw i32 %.lcssa213, %.14660.us.i124.lcssa
  br label %._crit_edge.us.i128

bb.ak:                                            ; preds = %.peel.next
  %i.kr = shl i64 %.05158.us.i126, 8
  %i.ks = getelementptr inbounds i8, ptr %i.jo, i64 %indvars.iv221
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !16
  %i.ku = zext i8 %i.kt to i64
  %i.kv = or disjoint i64 %i.kr, %i.ku            ; 2 uses
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.kw = add nsw i32 %.04959.us.i125, 8          ; 2 uses
  %i.kx = icmp slt i32 %i.kw, %i.jq
  br i1 %i.kx, label %.peel.next, label %._crit_edge.us.i128, !llvm.loop !383

._crit_edge.us.i128:                              ; preds = %bb.ak, %bb.aj, %.thread.i134
  %.2.us89.i129 = phi i64 [ %.161.us.i123.lcssa.wide, %.thread.i134 ], [ %indvars.iv.next222.peel, %bb.aj ], [ %indvars.iv.next222, %bb.ak ]
  %.247.us88.i130 = phi i32 [ %i.kq, %.thread.i134 ], [ 0, %bb.aj ], [ 0, %bb.ak ]
  %.152.us87.i131 = phi i64 [ %i.kp, %.thread.i134 ], [ %i.kd, %bb.aj ], [ %i.kv, %bb.ak ]
  %i.ky = mul nsw i64 %.152.us87.i131, 65535
  %i.kz = sdiv i64 %i.ky, %i.ju
  %i.la = trunc i64 %i.kz to i16
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %indvars.iv.i120
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !93
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, %wide.trip.count.i118
  br i1 %exitcond.not.i133, label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135, label %.preheader.us.i119, !llvm.loop !231

.preheader.lr.ph.split.i116:                      ; preds = %.preheader.lr.ph.i114
  %i.lc = shl i64 %i.jl, 1
  %i.ld = and i64 %i.lc, 4294967294
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jr, i8 0, i64 %i.ld, i1 false), !tbaa !16
  br label %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135

_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135: ; preds = %._crit_edge.us.i128, %.lr.ph197, %.preheader.lr.ph.split.i116
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %.loopexit, label %.lr.ph197, !llvm.loop !384

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit, %bb.ai, %bb.ae, %bb.ah
  %.sroa.21.0 = phi ptr [ %.sroa.21.1, %bb.ah ], [ %i.hi, %bb.ae ], [ %i.ji, %bb.ai ], [ %i.hi, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit ], [ %i.ji, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135 ]
  %.sroa.0150.0 = phi ptr [ %.sroa.0150.1, %bb.ah ], [ %i.hf, %bb.ae ], [ %i.jf, %bb.ai ], [ %i.hf, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit ], [ %i.jf, %_ZN11OpenImageIO4v3_19TIFFInput11bit_convertEiPKhiPvi.exit135 ] ; 3 uses
  %i.le = load i8, ptr %i.gf, align 1, !tbaa !157, !range !95, !noundef !96
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.al, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit

bb.al:                                            ; preds = %.loopexit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !82 ; 3 uses
  %i.li = zext i16 %.shrunk to i64                ; 4 uses
  %.sroa.0168.0.copyload = load ptr, ptr %6, align 8, !tbaa !181 ; 3 uses
  %i.lj = load i32, ptr %i.fw, align 4, !tbaa !101
  %narrow.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.lj, i32 1)
  %spec.select.i.i.i = zext nneg i32 %narrow.i.i.i to i64 ; 5 uses
  %i.lk = load i8, ptr %i.fy, align 1, !tbaa !177
  %i.ll = zext i8 %i.lk to i64                    ; 5 uses
  %i.lm = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.fv) #36 ; 5 uses
  %i.ln = mul i64 %i.lm, %i.ll
  %i.lo = mul i64 %i.ln, %spec.select.i.i.i       ; 14 uses
  %.not33.i = icmp eq i64 %i.bm, 0
  %.not35.i = icmp eq i64 %i.lo, 0
  %i.lp = or i1 %.not33.i, %.not.not194.not
  %or.cond293 = select i1 %i.lp, i1 true, i1 %.not35.i
  br i1 %or.cond293, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, label %.preheader24.i.preheader

.preheader24.i.preheader:                         ; preds = %bb.al
  %i.lq = mul i64 %i.lm, %i.li
  %i.lr = mul i64 %i.lq, %i.ll
  %i.ls = mul i64 %i.lr, %spec.select.i.i.i       ; 2 uses
  %i.lt = mul i64 %i.lm, %i.ll
  %i.lu = mul i64 %i.lt, %spec.select.i.i.i
  %i.lv = add nsw i64 %i.li, -1
  %i.lw = mul i64 %i.bm, %i.lv
  %i.lx = add i64 %i.lw, 1
  %i.ly = mul i64 %i.lm, %i.lx
  %i.lz = mul i64 %i.ly, %i.ll
  %i.ma = mul i64 %i.lz, %spec.select.i.i.i
  %i.mb = mul i64 %i.bm, %i.lm
  %i.mc = mul i64 %i.mb, %i.ll
  %i.md = mul i64 %i.mc, %spec.select.i.i.i
  %i.me = getelementptr i8, ptr %.sroa.0168.0.copyload, i64 %i.ls
  %i.mf = getelementptr i8, ptr %i.lh, i64 %i.ma
  %min.iters.check = icmp ult i64 %i.lo, 4
  %i.mg = or i64 %i.md, %i.lo
  %i.mh = icmp slt i64 %i.mg, 0
  %min.iters.check312 = icmp ult i64 %i.lo, 32
  %n.mod.vf = and i64 %i.lo, 28
  %n.vec = and i64 %i.lo, -32                     ; 4 uses
  %cmp.n = icmp eq i64 %i.lo, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec315 = and i64 %i.lo, -4                   ; 3 uses
  %cmp.n319 = icmp eq i64 %i.lo, %n.vec315
  %xtraiter = and i64 %i.lo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %.preheader24.i.preheader, %._crit_edge27.i
  %.02028.i = phi i64 [ %i.nh, %._crit_edge27.i ], [ 0, %.preheader24.i.preheader ] ; 5 uses
  %i.mi = mul i64 %i.ls, %.02028.i                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0168.0.copyload, i64 %i.mi
  %scevgep308 = getelementptr i8, ptr %i.me, i64 %i.mi
  %i.mj = mul i64 %i.lu, %.02028.i                ; 2 uses
  %scevgep309 = getelementptr i8, ptr %i.lh, i64 %i.mj
  %scevgep310 = getelementptr i8, ptr %i.mf, i64 %i.mj
  %i.mk = mul i64 %.02028.i, %i.li
  %bound0 = icmp ult ptr %scevgep, %scevgep310
  %bound1 = icmp ult ptr %scevgep309, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  %i.ml = or i1 %found.conflict, %i.mh
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader24.i
  %.01926.i = phi i64 [ 0, %.preheader24.i ], [ %i.ni, %._crit_edge.i ] ; 3 uses
  %i.mm = mul i64 %.01926.i, %i.bm
  %i.mn = add i64 %i.mm, %.02028.i
  %i.mo = mul i64 %i.mn, %i.lo
  %i.mp = getelementptr i8, ptr %i.lh, i64 %i.mo  ; 7 uses
  %i.mq = add i64 %.01926.i, %i.mk
  %i.mr = mul i64 %i.mq, %i.lo
  %i.ms = getelementptr i8, ptr %.sroa.0168.0.copyload, i64 %i.mr ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ml
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check312, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.mt = getelementptr i8, ptr %i.mp, i64 %index ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  %wide.load = load <16 x i8>, ptr %i.mt, align 1, !tbaa !16, !alias.scope !385
  %wide.load313 = load <16 x i8>, ptr %i.mu, align 1, !tbaa !16, !alias.scope !385
  %i.mv = getelementptr i8, ptr %i.ms, i64 %index ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 16
  store <16 x i8> %wide.load, ptr %i.mv, align 1, !tbaa !16, !alias.scope !388, !noalias !385
  store <16 x i8> %wide.load313, ptr %i.mw, align 1, !tbaa !16, !alias.scope !388, !noalias !385
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index316 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next318, %vec.epilog.vector.body ] ; 3 uses
  %i.my = getelementptr i8, ptr %i.mp, i64 %index316
  %wide.load317 = load <4 x i8>, ptr %i.my, align 1, !tbaa !16, !alias.scope !385
  %i.mz = getelementptr i8, ptr %i.ms, i64 %index316
  store <4 x i8> %wide.load317, ptr %i.mz, align 1, !tbaa !16, !alias.scope !388, !noalias !385
  %index.next318 = add nuw i64 %index316, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next318, %n.vec315
  br i1 %i.na, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !391

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n319, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.025.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec315, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.025.i.prol = phi i64 [ %i.ne, %vec.epilog.scalar.ph.prol ], [ %.025.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nb = getelementptr i8, ptr %i.mp, i64 %.025.i.prol
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !16
  %i.nd = getelementptr i8, ptr %i.ms, i64 %.025.i.prol
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !16
  %i.ne = add nuw i64 %.025.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !392

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.025.i.unr = phi i64 [ %.025.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ne, %vec.epilog.scalar.ph.prol ]
  %i.nf = sub i64 %.025.i.ph, %i.lo
  %i.ng = icmp ugt i64 %i.nf, -4
  br i1 %i.ng, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge27.i:                                  ; preds = %._crit_edge.i
  %i.nh = add nuw i64 %.02028.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.nh, %i.bm
  br i1 %exitcond38.not.i, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, label %.preheader24.i, !llvm.loop !226

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ni = add nuw nsw i64 %.01926.i, 1            ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.ni, %i.li
  br i1 %exitcond37.not.i, label %._crit_edge27.i, label %iter.check, !llvm.loop !227

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.025.i = phi i64 [ %i.ny, %vec.epilog.scalar.ph ], [ %.025.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.nj = getelementptr i8, ptr %i.mp, i64 %.025.i
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !16
  %i.nl = getelementptr i8, ptr %i.ms, i64 %.025.i
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !16
  %i.nm = add nuw i64 %.025.i, 1                  ; 2 uses
  %i.nn = getelementptr i8, ptr %i.mp, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !16
  %i.np = getelementptr i8, ptr %i.ms, i64 %i.nm
  store i8 %i.no, ptr %i.np, align 1, !tbaa !16
  %i.nq = add nuw i64 %.025.i, 2                  ; 2 uses
  %i.nr = getelementptr i8, ptr %i.mp, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !16
  %i.nt = getelementptr i8, ptr %i.ms, i64 %i.nq
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !16
  %i.nu = add nuw i64 %.025.i, 3                  ; 2 uses
  %i.nv = getelementptr i8, ptr %i.mp, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !16
  %i.nx = getelementptr i8, ptr %i.ms, i64 %i.nu
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !16
  %i.ny = add nuw i64 %.025.i, 4                  ; 2 uses
  %exitcond.not.i140.3 = icmp eq i64 %i.ny, %i.lo
  br i1 %exitcond.not.i140.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !393

_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit: ; preds = %._crit_edge27.i, %bb.al, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit, label %bb.am

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit
  %i.nz = ptrtoint ptr %.sroa.21.0 to i64
  %i.oa = ptrtoint ptr %.sroa.0150.0 to i64
end_hunk_2
begin_hunk_3_@llvm.umin.i32
!31 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!35 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !36, i64 0}
!36 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!41 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !42, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !43, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !44, i64 0}
!44 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !45, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !46, i64 0, !48, i64 8}
!46 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !47, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !12, i64 0}
!48 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !49, i64 0}
!49 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !12, i64 0}
!50 = !{!"p1 _ZTS4tiff", !12, i64 0}
!51 = !{!"_ZTSSt6vectorIhSaIhEE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!55 = !{!"short", !5, i64 0}
!56 = !{!"_ZTSSt6vectorItSaItEE", !57, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseItSaItEE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!60 = !{!"p1 short", !12, i64 0}
!61 = !{!"_ZTSSt6vectorIjSaIjEE", !62, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 int", !12, i64 0}
!66 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_19ImageSpecESaIS2_EE", !67, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE12_Vector_implE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!70 = !{!"p1 _ZTSN11OpenImageIO4v3_19ImageSpecE", !12, i64 0}
!71 = !{!"_ZTSN11OpenImageIO4v3_110spin_mutexE", !72, i64 0}
!72 = !{!"_ZTSSt11atomic_flag", !18, i64 0}
!73 = !{!21, !4, i64 272}
!74 = !{!21, !4, i64 276}
!75 = !{!21, !4, i64 280}
!76 = !{!21, !55, i64 314}
!77 = !{!14, !11, i64 0}
!78 = !{!64, !65, i64 0}
!79 = !{!64, !65, i64 16}
!80 = !{!59, !60, i64 0}
!81 = !{!59, !60, i64 16}
!82 = !{!54, !11, i64 0}
!83 = !{!54, !11, i64 16}
!84 = !{!69, !70, i64 0}
!85 = !{!69, !70, i64 8}
!86 = !{!69, !70, i64 16}
!87 = !{!64, !65, i64 8}
!88 = !{!59, !60, i64 8}
!89 = !{!21, !19, i64 295}
!90 = !{!91, !92, i64 48}
!91 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !14, i64 8, !15, i64 40, !92, i64 48, !14, i64 56}
!92 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !5, i64 0}
!93 = !{!55, !55, i64 0}
!94 = !{!21, !19, i64 289}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!21, !19, i64 296}
!98 = !{!21, !4, i64 284}
!99 = !{!23, !4, i64 60}
!100 = !{!24, !5, i64 0}
!101 = !{!24, !4, i64 4}
!102 = !{!11, !11, i64 0}
!103 = !{!104, !11, i64 0}
!104 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !11, i64 0, !15, i64 8}
!105 = !{!104, !15, i64 8}
!106 = !{!21, !19, i64 290}
!107 = !{!21, !19, i64 291}
!108 = !{!21, !19, i64 294}
!109 = !{i64 12962694}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!19, !19, i64 0}
!113 = distinct !{!113, !111}
!114 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!115 = distinct !{null}
!116 = !{!15, !15, i64 0}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!119 = distinct !{!119, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!120 = !{!39, !40, i64 0}
!121 = !{!39, !40, i64 8}
!122 = distinct !{!122, !111}
!123 = !{!39, !40, i64 16}
!124 = !{!33, !34, i64 0}
!125 = !{!33, !34, i64 8}
!126 = distinct !{!126, !111}
!127 = !{!33, !34, i64 16}
!128 = !{!28, !29, i64 0}
!129 = !{!28, !29, i64 16}
!130 = !{!22, !4, i64 20}
!131 = !{!22, !4, i64 24}
!132 = !{!22, !4, i64 28}
!133 = !{!22, !4, i64 68}
!134 = !{!135, !135, i64 0}
!135 = !{!"float", !5, i64 0}
!136 = !{!22, !4, i64 8}
!137 = !{!22, !4, i64 12}
!138 = !{!22, !4, i64 16}
!139 = !{!22, !4, i64 32}
!140 = !{!22, !4, i64 36}
!141 = !{!22, !4, i64 40}
!142 = !{!22, !4, i64 52}
!143 = !{!22, !4, i64 44}
!144 = !{!22, !4, i64 48}
!145 = !{!22, !4, i64 56}
!146 = !{!22, !4, i64 60}
!147 = !{!22, !4, i64 64}
!148 = !{!21, !55, i64 306}
!149 = !{!150, !4, i64 0}
!150 = !{!"_ZTSN11OpenImageIO4v3_17TagInfoE", !4, i64 0, !11, i64 8, !151, i64 16, !4, i64 20, !12, i64 24}
!151 = !{!"_ZTS12TIFFDataType", !5, i64 0}
!152 = !{!150, !151, i64 16}
!153 = !{!150, !11, i64 8}
!154 = !{!21, !55, i64 310}
!155 = !{!21, !55, i64 308}
!156 = !{!21, !55, i64 304}
!157 = !{!21, !19, i64 293}
!158 = !{!159, !11, i64 8}
!159 = !{!"_ZTSSt4pairIiPKcE", !4, i64 0, !11, i64 8}
!160 = !{!21, !55, i64 312}
!161 = !{!21, !4, i64 300}
!162 = !{!21, !19, i64 288}
!163 = !{!60, !60, i64 0}
!164 = !{!22, !4, i64 128}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!167 = distinct !{!167, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!168 = distinct !{!168, !111}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!171 = distinct !{!171, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!172 = distinct !{!172, !111}
!173 = !{!21, !19, i64 292}
!174 = !{!175, !175, i64 0}
!175 = !{!"p1 float", !12, i64 0}
!176 = distinct !{!176, !111}
!177 = !{!24, !5, i64 1}
!178 = !{!179, !11, i64 0}
!179 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!180 = !{!179, !11, i64 16}
!181 = !{!12, !12, i64 0}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!184 = distinct !{!184, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRA1024_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!187 = distinct !{!187, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRA1024_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRA9_S4_RKiRKS5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESH_RKT_DpOT0_: argument 0"}
!190 = distinct !{!190, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRA9_S4_RKiRKS5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESH_RKT_DpOT0_"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJA9_KcKiKPS3_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi4ELi0ELy56348EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!193 = distinct !{!193, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJA9_KcKiKPS3_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi4ELi0ELy56348EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!194 = !{!192, !189}
!195 = !{!23, !4, i64 56}
!196 = !{!23, !19, i64 128}
!197 = !{!29, !29, i64 0}
!198 = !{!34, !34, i64 0}
!199 = !{!40, !40, i64 0}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN11OpenImageIO4v3_17Strutil16safe_string_viewEPKcm: argument 0"}
!202 = distinct !{!202, !"_ZN11OpenImageIO4v3_17Strutil16safe_string_viewEPKcm"}
!203 = distinct !{!203, !111, !204}
!204 = !{!"llvm.loop.unswitch.partial.disable"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!207 = distinct !{!207, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!208 = distinct !{!208, !111}
!209 = !{!"branch_weights", i32 4000000, i32 4001}
!210 = !{!"branch_weights", i32 -294967296, i32 6003000}
!211 = !{!212, !212, i64 0}
!212 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!213 = !{!28, !29, i64 8}
!214 = !{!215}
!215 = distinct !{!215, !216}
!216 = distinct !{!216, !"LVerDomain"}
!217 = !{!218}
!218 = distinct !{!218, !216}
!219 = distinct !{!219, !111, !220, !221}
!220 = !{!"llvm.loop.isvectorized", i32 1}
!221 = !{!"llvm.loop.unroll.runtime.disable"}
!222 = !{!"branch_weights", i32 4, i32 28}
!223 = distinct !{!223, !111, !220, !221}
!224 = distinct !{!224, !225}
!225 = !{!"llvm.loop.unroll.disable"}
!226 = distinct !{!226, !111}
!227 = distinct !{!227, !111}
!228 = distinct !{!228, !111, !220}
!229 = distinct !{!229, !111}
!230 = distinct !{!230, !111}
!231 = distinct !{!231, !111}
!232 = distinct !{!232, !111, !233}
!233 = !{!"llvm.loop.peeled.count", i32 1}
!234 = !{!22, !5, i64 72}
!235 = distinct !{!235, !111, !220, !221}
!236 = distinct !{!236, !111, !220, !221}
!237 = distinct !{!237, !111, !221, !220}
!238 = distinct !{!238, !111}
!239 = distinct !{!239, !111}
!240 = distinct !{!240, !111, !233}
!241 = distinct !{!241, !111}
!242 = distinct !{!242, !111, !233}
!243 = distinct !{!243, !111}
!244 = distinct !{!244, !111, !233}
!245 = distinct !{!245, !111}
!246 = !{!247}
!247 = distinct !{!247, !248}
!248 = distinct !{!248, !"LVerDomain"}
!249 = !{!250}
!250 = distinct !{!250, !248}
!251 = distinct !{!251, !111, !220, !221}
!252 = distinct !{!252, !111, !220, !221}
!253 = distinct !{!253, !225}
!254 = distinct !{!254, !111, !220}
!255 = !{!256}
!256 = distinct !{!256, !257}
!257 = distinct !{!257, !"LVerDomain"}
!258 = !{!259}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !111, !220, !221}
!261 = distinct !{!261, !111, !220, !221}
!262 = distinct !{!262, !225}
!263 = distinct !{!263, !111, !220}
!264 = distinct !{!264, !111}
!265 = distinct !{!265, !111, !220, !221}
!266 = distinct !{!266, !111, !220, !221}
!267 = distinct !{!267, !111, !221, !220}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!270 = distinct !{!270, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!271 = !{!54, !11, i64 8}
!272 = distinct !{!272, !111}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!275 = distinct !{!275, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!276 = !{!23, !4, i64 4}
!277 = !{!23, !4, i64 16}
!278 = !{!279, !12, i64 0}
!279 = !{!"_ZTSN11OpenImageIO4v3_14spanISt4byteLm18446744073709551615EEE", !12, i64 0, !15, i64 8}
!280 = !{!279, !15, i64 8}
!281 = distinct !{!281, !111}
!282 = !{!24, !5, i64 2}
!283 = !{!284, !285, i64 0}
!284 = !{!"_ZTSN11OpenImageIO4v3_18task_setE", !285, i64 0, !286, i64 8, !287, i64 16}
!285 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !12, i64 0}
!286 = !{!"_ZTSNSt6thread2idE", !15, i64 0}
!287 = !{!"_ZTSSt6vectorISt6futureIvESaIS1_EE", !288, i64 0}
!288 = !{!"_ZTSSt12_Vector_baseISt6futureIvESaIS1_EE", !289, i64 0}
!289 = !{!"_ZTSNSt12_Vector_baseISt6futureIvESaIS1_EE12_Vector_implE", !290, i64 0}
!290 = !{!"_ZTSNSt12_Vector_baseISt6futureIvESaIS1_EE17_Vector_impl_dataE", !291, i64 0, !291, i64 8, !291, i64 16}
!291 = !{!"p1 _ZTSSt6futureIvE", !12, i64 0}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN11OpenImageIO4v3_111thread_pool4pushIRZNS0_9TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfp_Li0EEEEOT_: argument 0"}
!294 = distinct !{!294, !"_ZN11OpenImageIO4v3_111thread_pool4pushIRZNS0_9TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfp_Li0EEEEOT_"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZSt11make_sharedISt13packaged_taskIFviEEJRZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS4_4spanISt4byteLm18446744073709551615EEEE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_: argument 0"}
!297 = distinct !{!297, !"_ZSt11make_sharedISt13packaged_taskIFviEEJRZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS4_4spanISt4byteLm18446744073709551615EEEE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_"}
!298 = !{!299, !4, i64 8}
!299 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!300 = !{!296, !293}
!301 = !{!299, !4, i64 12}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZStL19__create_task_stateIFviERZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS2_4spanISt4byteLm18446744073709551615EEEE3$_0SaIiEESt10shared_ptrINSt13__future_base16_Task_state_baseIT_EEEOT0_RKT1_: argument 0"}
!304 = distinct !{!304, !"_ZStL19__create_task_stateIFviERZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS2_4spanISt4byteLm18446744073709551615EEEE3$_0SaIiEESt10shared_ptrINSt13__future_base16_Task_state_baseIT_EEEOT0_RKT1_"}
!305 = !{!306, !303, !296, !293}
!306 = distinct !{!306, !307, !"_ZSt15allocate_sharedINSt13__future_base11_Task_stateIZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS3_4spanISt4byteLm18446744073709551615EEEE3$_0SaIiEFviEEES9_JRS8_RKS9_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESH_E4typeEERKT0_DpOT1_: argument 0"}
!307 = distinct !{!307, !"_ZSt15allocate_sharedINSt13__future_base11_Task_stateIZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS3_4spanISt4byteLm18446744073709551615EEEE3$_0SaIiEFviEEES9_JRS8_RKS9_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESH_E4typeEERKT0_DpOT1_"}
!308 = !{!309, !310, i64 0}
!309 = !{!"_ZTSSt10_Head_baseILm0EPNSt13__future_base12_Result_baseELb0EE", !310, i64 0}
!310 = !{!"p1 _ZTSNSt13__future_base12_Result_baseE", !12, i64 0}
!311 = !{!312, !4, i64 0}
!312 = !{!"_ZTSSt13__atomic_baseIjE", !4, i64 0}
!313 = !{!314, !4, i64 0}
!314 = !{!"_ZTSSt9once_flag", !4, i64 0}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZNSt13__future_base18_S_allocate_resultIviEESt10unique_ptrINS_7_ResultIT_EENS_12_Result_base8_DeleterEERKSaIT0_E: argument 0"}
!317 = distinct !{!317, !"_ZNSt13__future_base18_S_allocate_resultIviEESt10unique_ptrINS_7_ResultIT_EENS_12_Result_base8_DeleterEERKSaIT0_E"}
!318 = !{!316, !306, !303, !296, !293}
!319 = !{!320, !320, i64 0}
!320 = !{!"p1 _ZTSNSt13__future_base7_ResultIvEE", !12, i64 0}
!321 = !{!322, !322, i64 0}
!322 = !{!"p1 bool", !12, i64 0}
!323 = !{!324, !324, i64 0}
!324 = !{!"p1 _ZTSN11OpenImageIO4v3_19TIFFInputE", !12, i64 0}
!325 = !{!326, !327, i64 0}
!326 = !{!"_ZTSSt12__shared_ptrINSt13__future_base16_Task_state_baseIFviEEELN9__gnu_cxx12_Lock_policyE2EE", !327, i64 0, !328, i64 8}
!327 = !{!"p1 _ZTSNSt13__future_base16_Task_state_baseIFviEEE", !12, i64 0}
!328 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !329, i64 0}
!329 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!330 = !{!328, !329, i64 0}
!331 = !{!332, !332, i64 0}
!332 = !{!"p1 _ZTSSt13packaged_taskIFviEE", !12, i64 0}
!333 = distinct !{null}
!334 = !{!335, !332, i64 0}
!335 = !{!"_ZTSSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EE", !332, i64 0, !328, i64 8}
!336 = distinct !{null, ptr @_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!337 = !{!290, !291, i64 8}
!338 = !{!290, !291, i64 16}
!339 = !{!340, !341, i64 0}
!340 = !{!"_ZTSSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE", !341, i64 0, !328, i64 8}
!341 = !{!"p1 _ZTSNSt13__future_base13_State_baseV2E", !12, i64 0}
!342 = distinct !{ptr @_ZNSt14__basic_futureIvED2Ev, ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!343 = distinct !{!343, !111, !220, !221}
!344 = distinct !{!344, !111, !220, !221}
!345 = distinct !{!345, !111, !221, !220}
!346 = distinct !{!346, !111}
!347 = distinct !{!347, !111}
!348 = distinct !{!348, !111, !220, !221}
!349 = distinct !{!349, !111, !220, !221}
!350 = distinct !{!350, !111, !221, !220}
!351 = !{!352}
!352 = distinct !{!352, !353}
!353 = distinct !{!353, !"LVerDomain"}
!354 = !{!355}
!355 = distinct !{!355, !353}
!356 = distinct !{!356, !111, !220, !221}
!357 = distinct !{!357, !111, !220, !221}
!358 = distinct !{!358, !225}
!359 = distinct !{!359, !111, !220}
!360 = distinct !{!360, !111}
!361 = distinct !{!361, !111}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!364 = distinct !{!364, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS5_ELi3ELi0ELy3100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!367 = distinct !{!367, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS5_ELi3ELi0ELy3100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!368 = !{!366, !363}
!369 = distinct !{ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!372 = distinct !{!372, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiKPKcELi2ELi0ELy193EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!375 = distinct !{!375, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiKPKcELi2ELi0ELy193EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!376 = !{!374, !371}
!377 = !{!290, !291, i64 0}
!378 = distinct !{null, null, null, null, ptr @_ZNSt14__basic_futureIvED2Ev, ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!379 = distinct !{!379, !111}
!380 = distinct !{!380, !111}
!381 = distinct !{!381, !111, !233}
!382 = distinct !{!382, !111}
!383 = distinct !{!383, !111, !233}
!384 = distinct !{!384, !111}
!385 = !{!386}
!386 = distinct !{!386, !387}
!387 = distinct !{!387, !"LVerDomain"}
!388 = !{!389}
!389 = distinct !{!389, !387}
!390 = distinct !{!390, !111, !220, !221}
!391 = distinct !{!391, !111, !220, !221}
!392 = distinct !{!392, !225}
!393 = distinct !{!393, !111, !220}
!394 = distinct !{!394, !111, !220, !221}
!395 = distinct !{!395, !111, !220, !221}
!396 = distinct !{!396, !111, !221, !220}
!397 = !{!23, !4, i64 48}
!398 = !{!23, !4, i64 0}
!399 = !{!23, !4, i64 52}
!400 = !{!23, !4, i64 8}
!401 = !{!23, !4, i64 20}
!402 = distinct !{!402, !111}
!403 = distinct !{!403, !111}
!404 = distinct !{!404, !111}
!405 = distinct !{!405, !111, !204}
!406 = !{!407, !324, i64 8}
!407 = !{!"_ZTSZN11OpenImageIO4v3_19TIFFInput24read_native_tiles_lockedEiiiiiiiimNS0_4spanISt4byteLm18446744073709551615EEEE3$_0", !322, i64 0, !324, i64 8, !11, i64 16, !15, i64 24, !11, i64 32, !15, i64 40, !4, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !279, i64 80, !4, i64 96, !4, i64 100, !15, i64 104, !4, i64 112, !4, i64 116, !15, i64 120, !4, i64 128, !4, i64 132}
!408 = !{!407, !11, i64 16}
!409 = !{!407, !15, i64 24}
!410 = !{!407, !11, i64 32}
!411 = !{!407, !15, i64 40}
!412 = !{!407, !4, i64 48}
!413 = !{!407, !15, i64 56}
!414 = !{!407, !15, i64 64}
!415 = !{!407, !15, i64 72}
!416 = !{i64 0, i64 8, !181, i64 8, i64 8, !116}
!417 = !{!407, !4, i64 96}
!418 = !{!407, !4, i64 100}
!419 = !{!407, !15, i64 104}
!420 = !{!407, !4, i64 112}
!421 = !{!407, !4, i64 116}
!422 = !{!407, !15, i64 120}
!423 = !{!407, !4, i64 128}
!424 = !{!407, !4, i64 132}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN11OpenImageIO4v3_111thread_pool4pushIZNS0_9TIFFInput24read_native_tiles_lockedEiiiiiiiimNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfp_Li0EEEEOT_: argument 0"}
!427 = distinct !{!427, !"_ZN11OpenImageIO4v3_111thread_pool4pushIZNS0_9TIFFInput24read_native_tiles_lockedEiiiiiiiimNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfp_Li0EEEEOT_"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_19TIFFInput24read_native_tiles_lockedEiiiiiiiimNS4_4spanISt4byteLm18446744073709551615EEEE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!430 = distinct !{!430, !"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_19TIFFInput24read_native_tiles_lockedEiiiiiiiimNS4_4spanISt4byteLm18446744073709551615EEEE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!431 = !{!429, !426}
!432 = distinct !{null, ptr @_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!433 = distinct !{!433, !111}
!434 = distinct !{!434, !111}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!437 = distinct !{!437, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KPKcELi4ELi0ELy49425EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!440 = distinct !{!440, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KPKcELi4ELi0ELy49425EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!441 = !{!439, !436}
!442 = !{!22, !4, i64 132}
!443 = distinct !{!443, !111}
!444 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!445 = distinct !{!445, !111, !220, !221}
!446 = distinct !{!446, !111, !220}
!447 = distinct !{!447, !111}
!448 = distinct !{!448, !111}
!449 = distinct !{!449, !111}
!450 = distinct !{!450, !111}
!451 = distinct !{!451, !111}
!452 = distinct !{!452, !111}
!453 = distinct !{!453, !111}
!454 = distinct !{!454, !111}
!455 = !{!456, !11, i64 0}
!456 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !11, i64 0}
!457 = !{!458, !4, i64 32}
!458 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !456, i64 0, !24, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !19, i64 37, !19, i64 38}
!459 = !{!458, !5, i64 36}
!460 = !{!458, !19, i64 38}
!461 = distinct !{!461, !111}
!462 = distinct !{!462, !111}
!463 = !{!65, !65, i64 0}
!464 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZSt19__relocate_object_aISt6futureIvES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!467 = distinct !{!467, !"_ZSt19__relocate_object_aISt6futureIvES1_SaIS1_EEvPT_PT0_RT1_"}
!468 = !{!469}
!469 = distinct !{!469, !467, !"_ZSt19__relocate_object_aISt6futureIvES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!470 = distinct !{!470, !111}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZSt19__relocate_object_aISt6futureIvES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!473 = distinct !{!473, !"_ZSt19__relocate_object_aISt6futureIvES1_SaIS1_EEvPT_PT0_RT1_"}
!474 = !{!475}
!475 = distinct !{!475, !473, !"_ZSt19__relocate_object_aISt6futureIvES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!476 = distinct !{null, null}
!477 = distinct !{null}
!478 = distinct !{!478, !111}
!479 = distinct !{!479, !225}
!480 = distinct !{!480, !111}
!481 = distinct !{!481, !111}
!482 = distinct !{!482, !111}
!483 = distinct !{!483, !225}
!484 = distinct !{!484, !111}
!485 = distinct !{!485, !111}
!486 = !{!487, !12, i64 24}
!487 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !11, i64 0, !15, i64 8, !15, i64 16, !12, i64 24}
!488 = !{!487, !11, i64 0}
!489 = !{!487, !15, i64 16}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!492 = distinct !{!492, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!493 = !{!487, !15, i64 8}
!494 = !{!495, !495, i64 0}
!495 = !{!"_ZTSN3fmt3v126detail4typeE", !5, i64 0}
!496 = !{!497, !497, i64 0}
!497 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !12, i64 0}
!498 = distinct !{null, null}
!499 = !{!500, !4, i64 16}
!500 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !501, i64 0, !4, i64 16}
!501 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !11, i64 0, !15, i64 8}
!502 = !{!503, !503, i64 0}
!503 = !{!"long long", !5, i64 0}
!504 = !{!505, !503, i64 0}
!505 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !503, i64 0, !5, i64 8}
!506 = !{!507, !509}
!507 = distinct !{!507, !508, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!508 = distinct !{!508, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!509 = distinct !{!509, !510, !"_ZNK3fmt3v127context3argEi: argument 0"}
!510 = distinct !{!510, !"_ZNK3fmt3v127context3argEi"}
!511 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!512 = distinct !{!512, !111}
!513 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!514 = distinct !{!514, !111}
!515 = !{!516, !4, i64 0}
!516 = !{!"_ZTSN3fmt3v1211basic_specsE", !4, i64 0, !5, i64 4}
!517 = !{!518, !4, i64 12}
!518 = !{!"_ZTSN3fmt3v1212format_specsE", !516, i64 0, !4, i64 8, !4, i64 12}
!519 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!520 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!521 = distinct !{!521, !111}
!522 = !{!523, !15, i64 0}
!523 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !15, i64 0, !4, i64 8}
!524 = !{!523, !4, i64 8}
!525 = !{!526, !526, i64 0}
!526 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !12, i64 0}
!527 = !{!528, !4, i64 8}
!528 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !526, i64 0, !4, i64 8}
!529 = !{!530, !532}
!530 = distinct !{!530, !531, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!531 = distinct !{!531, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!532 = distinct !{!532, !533, !"_ZNK3fmt3v127context3argEi: argument 0"}
!533 = distinct !{!533, !"_ZNK3fmt3v127context3argEi"}
!534 = distinct !{null, null, null}
!535 = distinct !{null, null, null}
!536 = distinct !{null, null, null}
!537 = distinct !{null, null, null, null}
!538 = distinct !{null, null}
!539 = distinct !{null, null, null}
!540 = distinct !{null, null}
!541 = distinct !{!541, !111, !220, !221}
!542 = distinct !{!542, !111, !220, !221}
!543 = distinct !{!543, !225}
!544 = distinct !{!544, !111}
!545 = distinct !{!545, !111, !220}
!546 = distinct !{!546, !111}
!547 = distinct !{!547, !111}
!548 = !{!549, !550, i64 0}
!549 = !{!"_ZTSSt6locale", !550, i64 0}
!550 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!551 = !{!552, !15, i64 16}
!552 = !{!"_ZTSNSt6locale5_ImplE", !4, i64 0, !553, i64 8, !15, i64 16, !553, i64 24, !555, i64 32}
!553 = !{!"p2 _ZTSNSt6locale5facetE", !554, i64 0}
!554 = !{!"any p2 pointer", !12, i64 0}
!555 = !{!"p2 omnipotent char", !554, i64 0}
!556 = !{!552, !553, i64 8}
!557 = !{!558, !558, i64 0}
!558 = !{!"p1 _ZTSNSt6locale5facetE", !12, i64 0}
!559 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!560 = distinct !{!560, !111}
!561 = !{!562, !19, i64 0}
!562 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !19, i64 0, !5, i64 1}
!563 = !{!562, !5, i64 1}
!564 = !{!518, !4, i64 8}
!565 = distinct !{null, null}
!566 = distinct !{null, null}
!567 = distinct !{!567, !111}
!568 = distinct !{null, null, null, null}
!569 = distinct !{null, null, null, null, null}
!570 = distinct !{!570, !111}
!571 = distinct !{null, null, null}
!572 = distinct !{null, null, null, null}
!573 = distinct !{!573, !111}
!574 = !{!575, !4, i64 8}
!575 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!578 = distinct !{!578, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!579 = distinct !{null}
!580 = distinct !{null}
!581 = !{!582, !582, i64 0}
!582 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !12, i64 0}
!583 = !{!584, !495, i64 16}
end_hunk_3
