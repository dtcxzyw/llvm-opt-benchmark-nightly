inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@jpeg_difference3:bb.a
  %.0 = getelementptr inbounds nuw i8, ptr %.pn2531, i64 2 ; 2 uses
  %.019 = getelementptr inbounds nuw i8, ptr %.pn29, i64 2 ; 2 uses
  %i.ai = load i16, ptr %.019, align 2, !tbaa !49
  %i.aj = sext i16 %i.ai to i32
  %i.ak = load i16, ptr %.0, align 2, !tbaa !49
  %i.al = sext i16 %i.ak to i32
  %i.am = sub nsw i32 %i.al, %.01830
  store i32 %i.am, ptr %.021, align 4, !tbaa !3
  %i.an = add i32 %i.ah, -1                       ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43
  %.not24 = icmp eq i32 %i.ap, 0
  br i1 %.not24, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = sext i32 %1 to i64                      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !3
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !44
  %i.az = udiv i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.as, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ar
  store ptr @jpeg_difference_first_row, ptr %i.bb, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference4(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !49
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !49
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !3
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %3, i64 %i.l
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %4, i64 %i.o
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init38 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.x, %vector.body ]
  %vector.recur39 = phi <4 x i32> [ %vector.recur.init38, %vector.ph ], [ %i.ac, %vector.body ]
  %i.q = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.q  ; 2 uses
  %next.gep40 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep41 = getelementptr i8, ptr %4, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep41, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep40, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep40, i64 10
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !49
  %wide.load42 = load <4 x i16>, ptr %i.v, align 2, !tbaa !49
  %i.w = sext <4 x i16> %wide.load to <4 x i32>   ; 3 uses
  %i.x = sext <4 x i16> %wide.load42 to <4 x i32> ; 4 uses
  %i.y = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.w, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.z = shufflevector <4 x i32> %i.w, <4 x i32> %i.x, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 10
  %wide.load43 = load <4 x i16>, ptr %i.t, align 2, !tbaa !49
  %wide.load44 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !49
  %i.ab = sext <4 x i16> %wide.load43 to <4 x i32> ; 3 uses
  %i.ac = sext <4 x i16> %wide.load44 to <4 x i32> ; 4 uses
  %i.ad = shufflevector <4 x i32> %vector.recur39, <4 x i32> %i.ab, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ae = shufflevector <4 x i32> %i.ab, <4 x i32> %i.ac, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.af = add nsw <4 x i32> %i.ad, %i.w
  %i.ag = add nsw <4 x i32> %i.ae, %i.x
  %i.ah = sub nsw <4 x i32> %i.y, %i.af
  %i.ai = sub nsw <4 x i32> %i.z, %i.ag
  %i.aj = add nsw <4 x i32> %i.ah, %i.ab
  %i.ak = add nsw <4 x i32> %i.ai, %i.ac
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep41, i64 20
  store <4 x i32> %i.aj, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %i.ak, ptr %i.al, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.x, i64 3
  %vector.recur.extract45 = extractelement <4 x i32> %i.ac, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader50

.lr.ph.preheader50:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.pn2736.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.02035.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.pn34.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.02233.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract45, %middle.block ]
  %.pn2832.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader50, %.lr.ph
  %i.an = phi i32 [ %i.au, %.lr.ph ], [ %.ph, %.lr.ph.preheader50 ]
  %.pn2736 = phi ptr [ %.0, %.lr.ph ], [ %.pn2736.ph, %.lr.ph.preheader50 ]
  %.02035 = phi i32 [ %i.ap, %.lr.ph ], [ %.02035.ph, %.lr.ph.preheader50 ]
  %.pn34 = phi ptr [ %.021, %.lr.ph ], [ %.pn34.ph, %.lr.ph.preheader50 ]
  %.02233 = phi i32 [ %i.ar, %.lr.ph ], [ %.02233.ph, %.lr.ph.preheader50 ]
  %.pn2832 = phi ptr [ %.023, %.lr.ph ], [ %.pn2832.ph, %.lr.ph.preheader50 ]
  %.023 = getelementptr inbounds nuw i8, ptr %.pn2832, i64 4 ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn2736, i64 2 ; 2 uses
  %.021 = getelementptr inbounds nuw i8, ptr %.pn34, i64 2 ; 2 uses
  %i.ao = load i16, ptr %.021, align 2, !tbaa !49
  %i.ap = sext i16 %i.ao to i32                   ; 2 uses
  %i.aq = load i16, ptr %.0, align 2, !tbaa !49
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = add nsw i32 %.02233, %i.ap
  %.neg = sub nsw i32 %.02035, %i.as
  %i.at = add nsw i32 %.neg, %i.ar
  store i32 %i.at, ptr %.023, align 4, !tbaa !3
  %i.au = add i32 %i.an, -1                       ; 2 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !43
  %.not26 = icmp eq i32 %i.aw, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ay = sext i32 %1 to i64                      ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !3
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !44
  %i.bg = udiv i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %i.az, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ay
  store ptr @jpeg_difference_first_row, ptr %i.bi, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference5(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !49
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !49
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !3
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %3, i64 %i.l
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %4, i64 %i.o
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init37 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.w, %vector.body ]
  %vector.recur38 = phi <4 x i32> [ %vector.recur.init37, %vector.ph ], [ %i.y, %vector.body ]
  %i.q = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.q  ; 2 uses
  %next.gep39 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep40 = getelementptr i8, ptr %4, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep40, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep39, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep39, i64 10
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !49
  %wide.load41.a = load <4 x i16>, ptr %i.v, align 2, !tbaa !49
  %6 = sext <4 x i16> %wide.load to <4 x i32>     ; 3 uses
  %i.w = sext <4 x i16> %wide.load41.a to <4 x i32> ; 4 uses
  %7 = shufflevector <4 x i32> %vector.recur, <4 x i32> %6, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.x = shufflevector <4 x i32> %6, <4 x i32> %i.w, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %8 = getelementptr inbounds nuw i8, ptr %next.gep, i64 10
  %wide.load42 = load <4 x i16>, ptr %i.t, align 2, !tbaa !49
  %wide.load43 = load <4 x i16>, ptr %8, align 2, !tbaa !49
  %9 = sext <4 x i16> %wide.load42 to <4 x i32>   ; 3 uses
  %i.y = sext <4 x i16> %wide.load43 to <4 x i32> ; 4 uses
  %10 = shufflevector <4 x i32> %vector.recur38, <4 x i32> %9, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.z = shufflevector <4 x i32> %9, <4 x i32> %i.y, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %11 = sub nsw <4 x i32> %6, %7
  %i.aa = sub nsw <4 x i32> %i.w, %i.x
  %12 = ashr <4 x i32> %11, splat (i32 1)
  %i.ab = ashr <4 x i32> %i.aa, splat (i32 1)
  %13 = add nsw <4 x i32> %10, %12
  %i.ac = add nsw <4 x i32> %i.z, %i.ab
  %14 = sub nsw <4 x i32> %9, %13
  %i.ad = sub nsw <4 x i32> %i.y, %i.ac
  %15 = getelementptr inbounds nuw i8, ptr %next.gep40, i64 20
  store <4 x i32> %14, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %i.ad, ptr %15, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.w, i64 3
  %vector.recur.extract44 = extractelement <4 x i32> %i.y, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.pn2735.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.02034.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.pn33.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.02232.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract44, %middle.block ]
  %.pn2831.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader49, %.lr.ph
  %i.af = phi i32 [ %i.ao, %.lr.ph ], [ %.ph, %.lr.ph.preheader49 ]
  %.pn2735 = phi ptr [ %.0, %.lr.ph ], [ %.pn2735.ph, %.lr.ph.preheader49 ]
  %.02034 = phi i32 [ %i.ah, %.lr.ph ], [ %.02034.ph, %.lr.ph.preheader49 ]
  %.pn33 = phi ptr [ %.021, %.lr.ph ], [ %.pn33.ph, %.lr.ph.preheader49 ]
  %.02232 = phi i32 [ %i.aj, %.lr.ph ], [ %.02232.ph, %.lr.ph.preheader49 ]
  %.pn2831 = phi ptr [ %.023, %.lr.ph ], [ %.pn2831.ph, %.lr.ph.preheader49 ]
  %.023 = getelementptr inbounds nuw i8, ptr %.pn2831, i64 4 ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn2735, i64 2 ; 2 uses
  %.021 = getelementptr inbounds nuw i8, ptr %.pn33, i64 2 ; 2 uses
  %i.ag = load i16, ptr %.021, align 2, !tbaa !49
  %i.ah = sext i16 %i.ag to i32                   ; 2 uses
  %i.ai = load i16, ptr %.0, align 2, !tbaa !49
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %i.ak = sub nsw i32 %i.ah, %.02034
  %i.al = ashr i32 %i.ak, 1
  %i.am = add nsw i32 %.02232, %i.al
  %i.an = sub nsw i32 %i.aj, %i.am
  store i32 %i.an, ptr %.023, align 4, !tbaa !3
  %i.ao = add i32 %i.af, -1                       ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
  %.not26 = icmp eq i32 %i.aq, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.as = sext i32 %1 to i64                      ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !3
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !44
  %i.ba = udiv i32 %i.ax, %i.az
  store i32 %i.ba, ptr %i.at, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.as
  store ptr @jpeg_difference_first_row, ptr %i.bc, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference6(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !49
  %i.d = sext i16 %i.c to i32                     ; 3 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !49
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !3
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %3, i64 %i.l
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %4, i64 %i.o
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init38 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.w, %vector.body ]
  %vector.recur39 = phi <4 x i32> [ %vector.recur.init38, %vector.ph ], [ %i.y, %vector.body ]
  %i.q = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.q  ; 2 uses
  %next.gep40 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep41 = getelementptr i8, ptr %4, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep41, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep40, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep40, i64 10
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !49
  %wide.load42.a = load <4 x i16>, ptr %i.v, align 2, !tbaa !49
  %6 = sext <4 x i16> %wide.load to <4 x i32>     ; 3 uses
  %i.w = sext <4 x i16> %wide.load42.a to <4 x i32> ; 4 uses
  %7 = shufflevector <4 x i32> %vector.recur, <4 x i32> %6, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.x = shufflevector <4 x i32> %6, <4 x i32> %i.w, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %8 = getelementptr inbounds nuw i8, ptr %next.gep, i64 10
  %wide.load43 = load <4 x i16>, ptr %i.t, align 2, !tbaa !49
  %wide.load44 = load <4 x i16>, ptr %8, align 2, !tbaa !49
  %9 = sext <4 x i16> %wide.load43 to <4 x i32>   ; 3 uses
  %i.y = sext <4 x i16> %wide.load44 to <4 x i32> ; 4 uses
  %10 = shufflevector <4 x i32> %vector.recur39, <4 x i32> %9, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.z = shufflevector <4 x i32> %9, <4 x i32> %i.y, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %11 = sub nsw <4 x i32> %10, %7
  %i.aa = sub nsw <4 x i32> %i.z, %i.x
  %12 = ashr <4 x i32> %11, splat (i32 1)
  %i.ab = ashr <4 x i32> %i.aa, splat (i32 1)
  %13 = add nsw <4 x i32> %12, %6
  %i.ac = add nsw <4 x i32> %i.ab, %i.w
  %14 = sub nsw <4 x i32> %9, %13
  %i.ad = sub nsw <4 x i32> %i.y, %i.ac
  %15 = getelementptr inbounds nuw i8, ptr %next.gep41, i64 20
  store <4 x i32> %14, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %i.ad, ptr %15, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.w, i64 3
  %vector.recur.extract45 = extractelement <4 x i32> %i.y, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader50

.lr.ph.preheader50:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.pn2736.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.02035.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.pn34.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.02233.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract45, %middle.block ]
  %.pn2832.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader50, %.lr.ph
  %i.af = phi i32 [ %i.an, %.lr.ph ], [ %.ph, %.lr.ph.preheader50 ]
  %.pn2736 = phi ptr [ %.0, %.lr.ph ], [ %.pn2736.ph, %.lr.ph.preheader50 ]
  %.02035 = phi i32 [ %i.ah, %.lr.ph ], [ %.02035.ph, %.lr.ph.preheader50 ]
  %.pn34 = phi ptr [ %.021, %.lr.ph ], [ %.pn34.ph, %.lr.ph.preheader50 ]
  %.02233 = phi i32 [ %i.aj, %.lr.ph ], [ %.02233.ph, %.lr.ph.preheader50 ]
  %.pn2832 = phi ptr [ %.023, %.lr.ph ], [ %.pn2832.ph, %.lr.ph.preheader50 ]
  %.023 = getelementptr inbounds nuw i8, ptr %.pn2832, i64 4 ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn2736, i64 2 ; 2 uses
  %.021 = getelementptr inbounds nuw i8, ptr %.pn34, i64 2 ; 2 uses
  %i.ag = load i16, ptr %.021, align 2, !tbaa !49
  %i.ah = sext i16 %i.ag to i32                   ; 2 uses
  %i.ai = load i16, ptr %.0, align 2, !tbaa !49
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %narrow = sub nsw i32 %.02233, %.02035
  %i.ak = ashr i32 %narrow, 1
  %i.al = add nsw i32 %i.ak, %i.ah
  %i.am = sub nsw i32 %i.aj, %i.al
  store i32 %i.am, ptr %.023, align 4, !tbaa !3
  %i.an = add i32 %i.af, -1                       ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43
  %.not26 = icmp eq i32 %i.ap, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = sext i32 %1 to i64                      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !3
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !44
  %i.az = udiv i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.as, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ar
  store ptr @jpeg_difference_first_row, ptr %i.bb, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference7(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i16, ptr %3, align 2, !tbaa !49
  %i.d = sext i16 %i.c to i32
  %i.e = load i16, ptr %2, align 2, !tbaa !49
  %i.f = sext i16 %i.e to i32                     ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !3
  %i.h = add i32 %5, -1                           ; 5 uses
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %i.h, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %3, i64 %i.l
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %4, i64 %i.o
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.y, %vector.body ]
  %i.q = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.q  ; 2 uses
  %next.gep34 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep35 = getelementptr i8, ptr %4, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep35, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep34, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep34, i64 10
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !49
  %wide.load36 = load <4 x i16>, ptr %i.v, align 2, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep, i64 10
  %wide.load37 = load <4 x i16>, ptr %i.t, align 2, !tbaa !49
  %wide.load38 = load <4 x i16>, ptr %i.w, align 2, !tbaa !49
  %i.x = sext <4 x i16> %wide.load37 to <4 x i32> ; 3 uses
  %i.y = sext <4 x i16> %wide.load38 to <4 x i32> ; 4 uses
  %i.z = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.x, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aa = shufflevector <4 x i32> %i.x, <4 x i32> %i.y, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = sext <4 x i16> %wide.load to <4 x i32>
  %i.ac = sext <4 x i16> %wide.load36 to <4 x i32>
  %i.ad = add nsw <4 x i32> %i.z, %i.ab
  %i.ae = add nsw <4 x i32> %i.aa, %i.ac
  %i.af = ashr <4 x i32> %i.ad, splat (i32 1)
  %i.ag = ashr <4 x i32> %i.ae, splat (i32 1)
  %i.ah = sub nsw <4 x i32> %i.x, %i.af
  %i.ai = sub nsw <4 x i32> %i.y, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep35, i64 20
  store <4 x i32> %i.ah, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %i.ai, ptr %i.aj, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.y, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.pn2632.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.pn31.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.02130.ph = phi i32 [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.pn2729.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %i.al = phi i32 [ %i.at, %.lr.ph ], [ %.ph, %.lr.ph.preheader42 ]
  %.pn2632 = phi ptr [ %.0, %.lr.ph ], [ %.pn2632.ph, %.lr.ph.preheader42 ]
  %.pn31 = phi ptr [ %.020, %.lr.ph ], [ %.pn31.ph, %.lr.ph.preheader42 ]
  %.02130 = phi i32 [ %i.ao, %.lr.ph ], [ %.02130.ph, %.lr.ph.preheader42 ]
  %.pn2729 = phi ptr [ %.022, %.lr.ph ], [ %.pn2729.ph, %.lr.ph.preheader42 ]
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2729, i64 4 ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn2632, i64 2 ; 2 uses
  %.020 = getelementptr inbounds nuw i8, ptr %.pn31, i64 2 ; 2 uses
  %i.am = load i16, ptr %.020, align 2, !tbaa !49
  %i.an = load i16, ptr %.0, align 2, !tbaa !49
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = sext i16 %i.am to i32
  %i.aq = add nsw i32 %.02130, %i.ap
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sub nsw i32 %i.ao, %i.ar
  store i32 %i.as, ptr %.022, align 4, !tbaa !3
  %i.at = add i32 %i.al, -1                       ; 2 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !43
  %.not25 = icmp eq i32 %i.av, 0
  br i1 %.not25, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ax = sext i32 %1 to i64                      ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !3
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = load i32, ptr %i.au, align 4, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !44
  %i.bf = udiv i32 %i.bc, %i.be
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ax
  store ptr @jpeg_difference_first_row, ptr %i.bh, align 8, !tbaa !46
  br label %bb.d
end_hunk_0
