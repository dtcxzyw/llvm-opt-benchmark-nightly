Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jclossls-12?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@jpeg_difference3:bb.a
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 2 ; 2 uses
  %.021 = getelementptr inbounds nuw i8, ptr %.pn29, i64 2 ; 2 uses
  %i.ai = load i16, ptr %.021, align 2, !tbaa !43
  %i.aj = sext i16 %i.ai to i32
  %i.ak = load i16, ptr %.022, align 2, !tbaa !43
  %i.al = sext i16 %i.ak to i32
  %i.am = sub nsw i32 %i.al, %.031
  store i32 %i.am, ptr %.020, align 4, !tbaa !40
  %i.an = add i32 %i.ah, -1                       ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !38
  %.not24 = icmp eq i32 %i.ap, 0
  br i1 %.not24, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = sext i32 %1 to i64                      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !40
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !39
  %i.az = udiv i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.as, align 4, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ar
  store ptr @jpeg_difference_first_row, ptr %i.bb, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !43
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !43
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %i.n = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init37 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.x, %vector.body ]
  %vector.recur38 = phi <4 x i32> [ %vector.recur.init37, %vector.ph ], [ %i.ac, %vector.body ]
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.q  ; 2 uses
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep39 = getelementptr i8, ptr %3, i64 %i.r ; 2 uses
  %next.gep40 = getelementptr i8, ptr %2, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep40, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep39, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep39, i64 10
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !43
  %wide.load41 = load <4 x i16>, ptr %i.v, align 2, !tbaa !43
  %i.w = sext <4 x i16> %wide.load to <4 x i32>   ; 3 uses
  %i.x = sext <4 x i16> %wide.load41 to <4 x i32> ; 4 uses
  %i.y = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.w, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.z = shufflevector <4 x i32> %i.w, <4 x i32> %i.x, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep40, i64 10
  %wide.load42 = load <4 x i16>, ptr %i.t, align 2, !tbaa !43
  %wide.load43 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !43
  %i.ab = sext <4 x i16> %wide.load42 to <4 x i32> ; 3 uses
  %i.ac = sext <4 x i16> %wide.load43 to <4 x i32> ; 4 uses
  %i.ad = shufflevector <4 x i32> %vector.recur38, <4 x i32> %i.ab, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ae = shufflevector <4 x i32> %i.ab, <4 x i32> %i.ac, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.af = add nsw <4 x i32> %i.ad, %i.w
  %i.ag = add nsw <4 x i32> %i.ae, %i.x
  %i.ah = sub nsw <4 x i32> %i.y, %i.af
  %i.ai = sub nsw <4 x i32> %i.z, %i.ag
  %i.aj = add nsw <4 x i32> %i.ah, %i.ab
  %i.ak = add nsw <4 x i32> %i.ai, %i.ac
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.aj, ptr %i.s, align 4, !tbaa !40
  store <4 x i32> %i.ak, ptr %i.al, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.x, i64 3
  %vector.recur.extract44 = extractelement <4 x i32> %i.ac, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.036.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.02035.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract44, %middle.block ]
  %.pn2834.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.pn33.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.pn2732.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader49, %.lr.ph
  %i.an = phi i32 [ %i.au, %.lr.ph ], [ %.ph, %.lr.ph.preheader49 ]
  %.036 = phi i32 [ %i.ap, %.lr.ph ], [ %.036.ph, %.lr.ph.preheader49 ]
  %.02035 = phi i32 [ %i.ar, %.lr.ph ], [ %.02035.ph, %.lr.ph.preheader49 ]
  %.pn2834 = phi ptr [ %.022, %.lr.ph ], [ %.pn2834.ph, %.lr.ph.preheader49 ]
  %.pn33 = phi ptr [ %.023, %.lr.ph ], [ %.pn33.ph, %.lr.ph.preheader49 ]
  %.pn2732 = phi ptr [ %.024, %.lr.ph ], [ %.pn2732.ph, %.lr.ph.preheader49 ]
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2834, i64 4 ; 2 uses
  %.024 = getelementptr inbounds nuw i8, ptr %.pn2732, i64 2 ; 2 uses
  %.023 = getelementptr inbounds nuw i8, ptr %.pn33, i64 2 ; 2 uses
  %i.ao = load i16, ptr %.023, align 2, !tbaa !43
  %i.ap = sext i16 %i.ao to i32                   ; 2 uses
  %i.aq = load i16, ptr %.024, align 2, !tbaa !43
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = add nsw i32 %.02035, %i.ap
  %.neg = sub nsw i32 %.036, %i.as
  %i.at = add nsw i32 %.neg, %i.ar
  store i32 %i.at, ptr %.022, align 4, !tbaa !40
  %i.au = add i32 %i.an, -1                       ; 2 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %.not26 = icmp eq i32 %i.aw, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ay = sext i32 %1 to i64                      ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !40
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bd = load i32, ptr %i.av, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !39
  %i.bg = udiv i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %i.az, align 4, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ay
  store ptr @jpeg_difference_first_row, ptr %i.bi, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !43
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !43
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967292               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %i.n = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init36 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.v, %vector.body ]
  %vector.recur37 = phi <4 x i32> [ %vector.recur.init36, %vector.ph ], [ %i.x, %vector.body ]
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.q
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep38.a = getelementptr i8, ptr %3, i64 %i.r
  %next.gep39 = getelementptr i8, ptr %2, i64 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep39, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep38.a, i64 2
  %wide.load.a = load <4 x i16>, ptr %i.u, align 2, !tbaa !43
  %i.v = sext <4 x i16> %wide.load.a to <4 x i32> ; 4 uses
  %i.w = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.v, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %wide.load40 = load <4 x i16>, ptr %i.t, align 2, !tbaa !43
  %i.x = sext <4 x i16> %wide.load40 to <4 x i32> ; 4 uses
  %i.y = shufflevector <4 x i32> %vector.recur37, <4 x i32> %i.x, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.z = sub nsw <4 x i32> %i.v, %i.w
  %i.aa = ashr <4 x i32> %i.z, splat (i32 1)
  %i.ab = add nsw <4 x i32> %i.y, %i.aa
  %i.ac = sub nsw <4 x i32> %i.x, %i.ab
  store <4 x i32> %i.ac, ptr %i.s, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.v, i64 3
  %vector.recur.extract41 = extractelement <4 x i32> %i.x, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.035.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.02034.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract41, %middle.block ]
  %.pn2833.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.pn32.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.pn2731.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %i.ae = phi i32 [ %i.an, %.lr.ph ], [ %.ph, %.lr.ph.preheader46 ]
  %.035 = phi i32 [ %i.ag, %.lr.ph ], [ %.035.ph, %.lr.ph.preheader46 ]
  %.02034 = phi i32 [ %i.ai, %.lr.ph ], [ %.02034.ph, %.lr.ph.preheader46 ]
  %.pn2833 = phi ptr [ %.022, %.lr.ph ], [ %.pn2833.ph, %.lr.ph.preheader46 ]
  %.pn32 = phi ptr [ %.023, %.lr.ph ], [ %.pn32.ph, %.lr.ph.preheader46 ]
  %.pn2731 = phi ptr [ %.024, %.lr.ph ], [ %.pn2731.ph, %.lr.ph.preheader46 ]
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2833, i64 4 ; 2 uses
  %.024 = getelementptr inbounds nuw i8, ptr %.pn2731, i64 2 ; 2 uses
  %.023 = getelementptr inbounds nuw i8, ptr %.pn32, i64 2 ; 2 uses
  %i.af = load i16, ptr %.023, align 2, !tbaa !43
  %i.ag = sext i16 %i.af to i32                   ; 2 uses
  %i.ah = load i16, ptr %.024, align 2, !tbaa !43
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %i.aj = sub nsw i32 %i.ag, %.035
  %i.ak = ashr i32 %i.aj, 1
  %i.al = add nsw i32 %.02034, %i.ak
  %i.am = sub nsw i32 %i.ai, %i.al
  store i32 %i.am, ptr %.022, align 4, !tbaa !40
  %i.an = add i32 %i.ae, -1                       ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !38
  %.not26 = icmp eq i32 %i.ap, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = sext i32 %1 to i64                      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !40
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !39
  %i.az = udiv i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.as, align 4, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ar
  store ptr @jpeg_difference_first_row, ptr %i.bb, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference6(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !43
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !43
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967292               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %i.n = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init37 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.v, %vector.body ]
  %vector.recur38 = phi <4 x i32> [ %vector.recur.init37, %vector.ph ], [ %i.x, %vector.body ]
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.q
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep39.a = getelementptr i8, ptr %3, i64 %i.r
  %next.gep40 = getelementptr i8, ptr %2, i64 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep40, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep39.a, i64 2
  %wide.load.a = load <4 x i16>, ptr %i.u, align 2, !tbaa !43
  %i.v = sext <4 x i16> %wide.load.a to <4 x i32> ; 4 uses
  %i.w = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.v, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %wide.load41 = load <4 x i16>, ptr %i.t, align 2, !tbaa !43
  %i.x = sext <4 x i16> %wide.load41 to <4 x i32> ; 4 uses
  %i.y = shufflevector <4 x i32> %vector.recur38, <4 x i32> %i.x, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.z = sub nsw <4 x i32> %i.y, %i.w
  %i.aa = ashr <4 x i32> %i.z, splat (i32 1)
  %i.ab = add nsw <4 x i32> %i.aa, %i.v
  %i.ac = sub nsw <4 x i32> %i.x, %i.ab
  store <4 x i32> %i.ac, ptr %i.s, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.v, i64 3
  %vector.recur.extract42 = extractelement <4 x i32> %i.x, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader47

.lr.ph.preheader47:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.036.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.02035.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract42, %middle.block ]
  %.pn2834.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.pn33.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.pn2732.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader47, %.lr.ph
  %i.ae = phi i32 [ %i.am, %.lr.ph ], [ %.ph, %.lr.ph.preheader47 ]
  %.036 = phi i32 [ %i.ag, %.lr.ph ], [ %.036.ph, %.lr.ph.preheader47 ]
  %.02035 = phi i32 [ %i.ai, %.lr.ph ], [ %.02035.ph, %.lr.ph.preheader47 ]
  %.pn2834 = phi ptr [ %.022, %.lr.ph ], [ %.pn2834.ph, %.lr.ph.preheader47 ]
  %.pn33 = phi ptr [ %.023, %.lr.ph ], [ %.pn33.ph, %.lr.ph.preheader47 ]
  %.pn2732 = phi ptr [ %.024, %.lr.ph ], [ %.pn2732.ph, %.lr.ph.preheader47 ]
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2834, i64 4 ; 2 uses
  %.024 = getelementptr inbounds nuw i8, ptr %.pn2732, i64 2 ; 2 uses
  %.023 = getelementptr inbounds nuw i8, ptr %.pn33, i64 2 ; 2 uses
  %i.af = load i16, ptr %.023, align 2, !tbaa !43
  %i.ag = sext i16 %i.af to i32                   ; 2 uses
  %i.ah = load i16, ptr %.024, align 2, !tbaa !43
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %narrow = sub nsw i32 %.02035, %.036
  %i.aj = ashr i32 %narrow, 1
  %i.ak = add nsw i32 %i.aj, %i.ag
  %i.al = sub nsw i32 %i.ai, %i.ak
  store i32 %i.al, ptr %.022, align 4, !tbaa !40
  %i.am = add i32 %i.ae, -1                       ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !38
  %.not26 = icmp eq i32 %i.ao, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aq = sext i32 %1 to i64                      ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !40
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !40
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = load i32, ptr %i.an, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !39
  %i.ay = udiv i32 %i.av, %i.ax
  store i32 %i.ay, ptr %i.ar, align 4, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.aq
  store ptr @jpeg_difference_first_row, ptr %i.ba, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference7(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !43
  %i.d = sext i16 %i.c to i32
  %i.e = load i16, ptr %2, align 2, !tbaa !43
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %4, i64 %i.l
  %i.n = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.y, %vector.body ]
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.q  ; 2 uses
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep32 = getelementptr i8, ptr %3, i64 %i.r ; 2 uses
  %next.gep33 = getelementptr i8, ptr %2, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep33, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep32, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep32, i64 10
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !43
  %wide.load34 = load <4 x i16>, ptr %i.v, align 2, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep33, i64 10
  %wide.load35 = load <4 x i16>, ptr %i.t, align 2, !tbaa !43
  %wide.load36 = load <4 x i16>, ptr %i.w, align 2, !tbaa !43
  %i.x = sext <4 x i16> %wide.load35 to <4 x i32> ; 3 uses
  %i.y = sext <4 x i16> %wide.load36 to <4 x i32> ; 4 uses
  %i.z = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.x, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aa = shufflevector <4 x i32> %i.x, <4 x i32> %i.y, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = sext <4 x i16> %wide.load to <4 x i32>
  %i.ac = sext <4 x i16> %wide.load34 to <4 x i32>
  %i.ad = add nsw <4 x i32> %i.z, %i.ab
  %i.ae = add nsw <4 x i32> %i.aa, %i.ac
  %i.af = ashr <4 x i32> %i.ad, splat (i32 1)
  %i.ag = ashr <4 x i32> %i.ae, splat (i32 1)
  %i.ah = sub nsw <4 x i32> %i.x, %i.af
  %i.ai = sub nsw <4 x i32> %i.y, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.ah, ptr %i.s, align 4, !tbaa !40
  store <4 x i32> %i.ai, ptr %i.aj, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.y, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01931.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.pn2630.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.pn29.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.pn2528.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %i.al = phi i32 [ %i.at, %.lr.ph ], [ %.ph, %.lr.ph.preheader40 ]
  %.01931 = phi i32 [ %i.ao, %.lr.ph ], [ %.01931.ph, %.lr.ph.preheader40 ]
  %.pn2630 = phi ptr [ %.021, %.lr.ph ], [ %.pn2630.ph, %.lr.ph.preheader40 ]
  %.pn29 = phi ptr [ %.022, %.lr.ph ], [ %.pn29.ph, %.lr.ph.preheader40 ]
  %.pn2528 = phi ptr [ %.023, %.lr.ph ], [ %.pn2528.ph, %.lr.ph.preheader40 ]
  %.021 = getelementptr inbounds nuw i8, ptr %.pn2630, i64 4 ; 2 uses
  %.023 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 2 ; 2 uses
  %.022 = getelementptr inbounds nuw i8, ptr %.pn29, i64 2 ; 2 uses
  %i.am = load i16, ptr %.022, align 2, !tbaa !43
  %i.an = load i16, ptr %.023, align 2, !tbaa !43
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = sext i16 %i.am to i32
  %i.aq = add nsw i32 %.01931, %i.ap
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sub nsw i32 %i.ao, %i.ar
  store i32 %i.as, ptr %.021, align 4, !tbaa !40
  %i.at = add i32 %i.al, -1                       ; 2 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !38
  %.not24 = icmp eq i32 %i.av, 0
  br i1 %.not24, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ax = sext i32 %1 to i64                      ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !40
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !40
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !39
  %i.bf = udiv i32 %i.bc, %i.be
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ax
  store ptr @jpeg_difference_first_row, ptr %i.bh, align 8, !tbaa !41
  br label %bb.d
end_hunk_0
