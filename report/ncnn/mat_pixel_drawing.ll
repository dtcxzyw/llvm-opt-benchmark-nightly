Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_drawing?download=true
inline.NumInlined: 68
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ncnn12draw_text_c2EPhiiiPKciiij:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %.05193, i64 1 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.df, %i.dn
  %i.dp = mul nuw nsw i32 %i.i, %i.de
  %i.dq = add nuw nsw i32 %i.do, %i.dp
  %i.dr = udiv i32 %i.dq, 255
  %i.ds = trunc i32 %i.dr to i8
  store i8 %i.ds, ptr %i.dl, align 1, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %.05193, i64 2
  %i.du = add nuw nsw i32 %.094, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !87

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %.lr.ph97, %bb.e, %bb.d, %bb.c
  %.191 = phi i32 [ %.090101, %bb.e ], [ %.090101, %bb.d ], [ %i.n, %bb.c ], [ %.090101, %.lr.ph97 ], [ %.090101, %bb.f ], [ %.090101, %._crit_edge ]
  %.1 = phi i32 [ %.089102, %bb.e ], [ %i.o, %bb.d ], [ %5, %bb.c ], [ %i.v, %.lr.ph97 ], [ %i.v, %bb.f ], [ %i.v, %._crit_edge ]
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge106, label %bb.b, !llvm.loop !88

._crit_edge106:                                   ; preds = %.loopexit, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c3EPhiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %1, 3
  tail call void @_ZN4ncnn12draw_text_c3EPhiiiPKciiij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c3EPhiiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %7, 1                            ; 3 uses
  %i.b = mul i32 %i.a, %7
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #17 ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16 ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i32 %8, 16
  %.sroa.2.0.extract.shift = lshr i32 %8, 8
  %i.h = and i32 %8, 255
  %i.i = and i32 %.sroa.2.0.extract.shift, 255
  %i.j = and i32 %.sroa.3.0.extract.shift, 255
  %i.k = sext i32 %7 to i64
  %i.l = sext i32 %3 to i64
  %wide.trip.count117 = and i64 %i.e, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph110, %.loopexit
  %indvars.iv114 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next115, %.loopexit ] ; 2 uses
  %.094107 = phi i32 [ %5, %.lr.ph110 ], [ %.1, %.loopexit ] ; 5 uses
  %.095106 = phi i32 [ %6, %.lr.ph110 ], [ %.196, %.loopexit ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv114
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9     ; 3 uses
  switch i8 %i.n, label %bb.e [
    i8 10, label %bb.c
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %.095106, %i.a
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.094107, %7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.q = sext i8 %i.n to i32
  %i.r = tail call i32 @isprint(i32 noundef %i.q) #16
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sext i8 %i.n to i64
  %i.t = getelementptr [400 x i8], ptr @_ZN4ncnnL14mono_font_dataE, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -13200
  tail call void @_ZN4ncnn20resize_bilinear_fontEPKhPhi(ptr noundef %i.u, ptr noundef nonnull %i.d, i32 noundef %7)
  %.sroa.speculated76 = tail call i32 @llvm.smax.i32(i32 %.095106, i32 0) ; 2 uses
  %i.v = add nsw i32 %.095106, %i.a
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.v) ; 2 uses
  %.sroa.speculated66 = tail call i32 @llvm.smax.i32(i32 %.094107, i32 0) ; 4 uses
  %i.w = add i32 %.094107, %7                     ; 4 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.w) ; 2 uses
  %i.x = icmp slt i32 %.sroa.speculated76, %.sroa.speculated71
  br i1 %i.x, label %.lr.ph102, label %.loopexit

.lr.ph102:                                        ; preds = %bb.f
  %i.y = zext nneg i32 %.sroa.speculated66 to i64
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.y
  %i.z = sext i32 %.094107 to i64
  %i.aa = sub nsw i64 0, %i.z
  %invariant.gep103 = getelementptr i8, ptr %invariant.gep, i64 %i.aa
  %i.ab = mul nuw nsw i32 %.sroa.speculated66, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %invariant.gep105 = getelementptr i8, ptr %0, i64 %i.ac
  %i.ad = icmp slt i32 %.sroa.speculated66, %.sroa.speculated
  br i1 %i.ad, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph102
  %i.ae = zext nneg i32 %.sroa.speculated76 to i64
  %i.af = sext i32 %.095106 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated71 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ag = sub nsw i64 %indvars.iv, %i.af
  %i.ah = mul nsw i64 %i.ag, %i.k
  %gep104 = getelementptr i8, ptr %invariant.gep103, i64 %i.ah
  %i.ai = mul nsw i64 %indvars.iv, %i.l
  %gep = getelementptr i8, ptr %invariant.gep105, i64 %i.ai
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph, !llvm.loop !89

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.099 = phi i32 [ %.sroa.speculated66, %.lr.ph ], [ %i.bl, %bb.g ]
  %.05698 = phi ptr [ %gep, %.lr.ph ], [ %i.bk, %bb.g ] ; 5 uses
  %.05797 = phi ptr [ %gep104, %.lr.ph ], [ %i.aj, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05797, i64 1
  %i.ak = load i8, ptr %.05797, align 1, !tbaa !9
  %i.al = load i8, ptr %.05698, align 1, !tbaa !9
  %i.am = zext i8 %i.al to i32
  %i.an = zext i8 %i.ak to i32                    ; 4 uses
  %i.ao = xor i32 %i.an, 255                      ; 3 uses
  %i.ap = mul nuw nsw i32 %i.ao, %i.am
  %i.aq = mul nuw nsw i32 %i.h, %i.an
  %i.ar = add nuw nsw i32 %i.ap, %i.aq
  %i.as = udiv i32 %i.ar, 255
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %.05698, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.05698, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.ao, %i.aw
  %i.ay = mul nuw nsw i32 %i.i, %i.an
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  %i.ba = udiv i32 %i.az, 255
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %.05698, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nuw nsw i32 %i.ao, %i.be
  %i.bg = mul nuw nsw i32 %i.j, %i.an
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = udiv i32 %i.bh, 255
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %i.bc, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %.05698, i64 3
  %i.bl = add nuw nsw i32 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !90

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %.lr.ph102, %bb.e, %bb.d, %bb.c
  %.196 = phi i32 [ %.095106, %bb.e ], [ %.095106, %bb.d ], [ %i.o, %bb.c ], [ %.095106, %.lr.ph102 ], [ %.095106, %bb.f ], [ %.095106, %._crit_edge ]
  %.1 = phi i32 [ %.094107, %bb.e ], [ %i.p, %bb.d ], [ %5, %bb.c ], [ %i.w, %.lr.ph102 ], [ %i.w, %bb.f ], [ %i.w, %._crit_edge ]
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge111, label %bb.b, !llvm.loop !91

._crit_edge111:                                   ; preds = %.loopexit, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c4EPhiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  tail call void @_ZN4ncnn12draw_text_c4EPhiiiPKciiij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c4EPhiiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %7, 1                            ; 3 uses
  %i.b = mul i32 %i.a, %7
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #17 ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16 ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %bb.a
  %9 = insertelement <4 x i32> poison, i32 %8, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = lshr <4 x i32> %10, <i32 0, i32 8, i32 16, i32 24>
  %12 = and <4 x i32> %11, <i32 255, i32 255, i32 255, i32 -1>
  %i.h = sext i32 %7 to i64
  %i.i = sext i32 %3 to i64
  %wide.trip.count122 = and i64 %i.e, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph115, %.loopexit
  %indvars.iv119 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next120, %.loopexit ] ; 2 uses
  %.099112 = phi i32 [ %5, %.lr.ph115 ], [ %.1, %.loopexit ] ; 5 uses
  %.0100111 = phi i32 [ %6, %.lr.ph115 ], [ %.1101, %.loopexit ] ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv119
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9     ; 3 uses
  switch i8 %i.k, label %bb.e [
    i8 10, label %bb.c
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.0100111, %i.a
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.099112, %7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.n = sext i8 %i.k to i32
  %i.o = tail call i32 @isprint(i32 noundef %i.n) #16
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sext i8 %i.k to i64
  %i.q = getelementptr [400 x i8], ptr @_ZN4ncnnL14mono_font_dataE, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -13200
  tail call void @_ZN4ncnn20resize_bilinear_fontEPKhPhi(ptr noundef %i.r, ptr noundef nonnull %i.d, i32 noundef %7)
  %.sroa.speculated81 = tail call i32 @llvm.smax.i32(i32 %.0100111, i32 0) ; 2 uses
  %i.s = add nsw i32 %.0100111, %i.a
  %.sroa.speculated76 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.s) ; 2 uses
  %.sroa.speculated71 = tail call i32 @llvm.smax.i32(i32 %.099112, i32 0) ; 4 uses
  %i.t = add i32 %.099112, %7                     ; 4 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.t) ; 2 uses
  %i.u = icmp slt i32 %.sroa.speculated81, %.sroa.speculated76
  br i1 %i.u, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.f
  %i.v = zext nneg i32 %.sroa.speculated71 to i64
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.v
  %i.w = sext i32 %.099112 to i64
  %i.x = sub nsw i64 0, %i.w
  %invariant.gep108 = getelementptr i8, ptr %invariant.gep, i64 %i.x
  %i.y = shl nuw nsw i32 %.sroa.speculated71, 2
  %i.z = zext nneg i32 %i.y to i64
  %invariant.gep110 = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = icmp slt i32 %.sroa.speculated71, %.sroa.speculated
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph107
  %i.ab = zext nneg i32 %.sroa.speculated81 to i64
  %i.ac = sext i32 %.0100111 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated76 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ad = sub nsw i64 %indvars.iv, %i.ac
  %i.ae = mul nsw i64 %i.ad, %i.h
  %gep109 = getelementptr i8, ptr %invariant.gep108, i64 %i.ae
  %i.af = mul nsw i64 %indvars.iv, %i.i
  %gep = getelementptr i8, ptr %invariant.gep110, i64 %i.af
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond118.not, label %.loopexit, label %.lr.ph, !llvm.loop !92

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0104 = phi i32 [ %.sroa.speculated71, %.lr.ph ], [ %i.aw, %bb.g ]
  %.061103 = phi ptr [ %gep, %.lr.ph ], [ %i.av, %bb.g ] ; 3 uses
  %.062102 = phi ptr [ %gep109, %.lr.ph ], [ %i.ag, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.062102, i64 1
  %i.ah = load i8, ptr %.062102, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = xor i32 %i.ai, 255
  %i.ak = load <4 x i8>, ptr %.061103, align 1, !tbaa !9
  %i.al = zext <4 x i8> %i.ak to <4 x i32>
  %i.am = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.an = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ao = mul nuw nsw <4 x i32> %i.an, %i.al
  %i.ap = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.aq = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ar = mul nuw nsw <4 x i32> %12, %i.aq
  %i.as = add nuw nsw <4 x i32> %i.ao, %i.ar
  %i.at = udiv <4 x i32> %i.as, splat (i32 255)
  %i.au = trunc <4 x i32> %i.at to <4 x i8>
  store <4 x i8> %i.au, ptr %.061103, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %.061103, i64 4
  %i.aw = add nuw nsw i32 %.0104, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !93

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %.lr.ph107, %bb.e, %bb.d, %bb.c
  %.1101 = phi i32 [ %.0100111, %bb.e ], [ %.0100111, %bb.d ], [ %i.l, %bb.c ], [ %.0100111, %.lr.ph107 ], [ %.0100111, %bb.f ], [ %.0100111, %._crit_edge ]
  %.1 = phi i32 [ %.099112, %bb.e ], [ %i.m, %bb.d ], [ %5, %bb.c ], [ %i.t, %.lr.ph107 ], [ %i.t, %bb.f ], [ %i.t, %._crit_edge ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge116, label %bb.b, !llvm.loop !94

._crit_edge116:                                   ; preds = %.loopexit, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn20resize_bilinear_fontEPKhPhi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 10 uses
  %i.a = shl i32 %2, 1                            ; 5 uses
  %i.b = sitofp fast i32 %2 to double
  %i.c = fdiv fast double 2.000000e+01, %i.b      ; 4 uses
  %i.d = mul nsw i32 %2, 6
  %i.e = sext i32 %i.d to i64
  %i.f = icmp slt i32 %2, 0
  %i.g = shl nsw i64 %i.e, 2
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #17 ; 7 uses
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 5 uses
  %i.l = sext i32 %i.a to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.j ; 3 uses
  %i.o = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader867, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.p = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.q = fadd fast <4 x double> %i.p, splat (double 5.000000e-01)
  %i.r = fmul fast <4 x double> %i.q, %broadcast.splat
  %i.s = fadd fast <4 x double> %i.r, splat (double -5.000000e-01)
  %i.t = fptrunc fast <4 x double> %i.s to <4 x float> ; 2 uses
  %i.u = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.t)
  %i.v = fptosi <4 x float> %i.u to <4 x i32>     ; 2 uses
  %i.w = sitofp fast <4 x i32> %i.v to <4 x float>
  %i.x = fsub fast <4 x float> %i.t, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !11
  %i.z = fmul fast <4 x float> %i.x, splat (float 2.048000e+03) ; 3 uses
  %i.aa = fsub fast <4 x float> splat (float 2.048000e+03), %i.z ; 2 uses
  %i.ab = fcmp fast oge <4 x float> %i.aa, zeroinitializer
  %i.ac = select fast <4 x i1> %i.ab, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ad = fadd fast <4 x float> %i.ac, %i.aa
  %i.ae = shl nuw nsw i64 %index, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae
  %i.ag = fcmp fast oge <4 x float> %i.z, zeroinitializer
  %i.ah = select fast <4 x i1> %i.ag, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ai = fadd fast <4 x float> %i.ah, %i.z
  %i.aj = shufflevector <4 x float> %i.ad, <4 x float> %i.ai, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = tail call <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float> %i.aj)
  store <8 x i16> %interleaved.vec, ptr %i.af, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph574.preheader, label %.lr.ph.preheader867

.lr.ph.preheader867:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph574.preheader:                              ; preds = %.lr.ph, %middle.block
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count673 = zext nneg i32 %smax to i64 ; 3 uses
  %min.iters.check751 = icmp slt i32 %i.a, 4
  br i1 %min.iters.check751, label %.lr.ph574.preheader866, label %vector.ph752

vector.ph752:                                     ; preds = %.lr.ph574.preheader
  %n.vec753 = and i64 %wide.trip.count673, 2147483644 ; 3 uses
  %broadcast.splatinsert754 = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat755 = shufflevector <4 x double> %broadcast.splatinsert754, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body756

vector.body756:                                   ; preds = %vector.body756, %vector.ph752
  %index757 = phi i64 [ 0, %vector.ph752 ], [ %index.next760, %vector.body756 ] ; 3 uses
  %vec.ind758 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph752 ], [ %vec.ind.next761, %vector.body756 ] ; 2 uses
  %i.al = uitofp nneg <4 x i32> %vec.ind758 to <4 x double>
  %i.am = fadd fast <4 x double> %i.al, splat (double 5.000000e-01)
  %i.an = fmul fast <4 x double> %i.am, %broadcast.splat755
  %i.ao = fadd fast <4 x double> %i.an, splat (double -5.000000e-01)
  %i.ap = fptrunc fast <4 x double> %i.ao to <4 x float> ; 2 uses
  %i.aq = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ap)
  %i.ar = fptosi <4 x float> %i.aq to <4 x i32>   ; 2 uses
  %i.as = sitofp fast <4 x i32> %i.ar to <4 x float>
  %i.at = fsub fast <4 x float> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index757
  store <4 x i32> %i.ar, ptr %i.au, align 4, !tbaa !11
  %i.av = fmul fast <4 x float> %i.at, splat (float 2.048000e+03) ; 3 uses
  %i.aw = fsub fast <4 x float> splat (float 2.048000e+03), %i.av ; 2 uses
  %i.ax = fcmp fast oge <4 x float> %i.aw, zeroinitializer
  %i.ay = select fast <4 x i1> %i.ax, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.az = fadd fast <4 x float> %i.ay, %i.aw
  %i.ba = shl nuw nsw i64 %index757, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ba
  %i.bc = fcmp fast oge <4 x float> %i.av, zeroinitializer
  %i.bd = select fast <4 x i1> %i.bc, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.be = fadd fast <4 x float> %i.bd, %i.av
  %i.bf = shufflevector <4 x float> %i.az, <4 x float> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec759 = tail call <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float> %i.bf)
  store <8 x i16> %interleaved.vec759, ptr %i.bb, align 2, !tbaa !122
  %index.next760 = add nuw i64 %index757, 4       ; 2 uses
  %vec.ind.next761 = add <4 x i32> %vec.ind758, splat (i32 4)
  %i.bg = icmp eq i64 %index.next760, %n.vec753
  br i1 %i.bg, label %middle.block762, label %vector.body756, !llvm.loop !96

middle.block762:                                  ; preds = %vector.body756
  %cmp.n763 = icmp eq i64 %n.vec753, %wide.trip.count673
  br i1 %cmp.n763, label %._crit_edge, label %.lr.ph574.preheader866

.lr.ph574.preheader866:                           ; preds = %.lr.ph574.preheader, %middle.block762
  %indvars.iv670.ph = phi i64 [ 0, %.lr.ph574.preheader ], [ %n.vec753, %middle.block762 ]
  br label %.lr.ph574

.lr.ph:                                           ; preds = %.lr.ph.preheader867, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader867 ] ; 4 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = uitofp ninf nsz nneg i32 %i.bh to double
  %i.bj = fadd fast double %i.bi, 5.000000e-01
  %i.bk = fmul fast double %i.bj, %i.c
  %i.bl = fadd fast double %i.bk, -5.000000e-01
  %i.bm = fptrunc fast double %i.bl to float      ; 2 uses
  %i.bn = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bm)
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = fsub fast float %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !11
  %i.bs = fmul fast float %i.bq, 2.048000e+03     ; 3 uses
  %i.bt = fsub fast float 2.048000e+03, %i.bs     ; 2 uses
  %i.bu = fcmp fast oge float %i.bt, 0.000000e+00
  %i.bv = select fast i1 %i.bu, float 5.000000e-01, float -5.000000e-01
  %i.bw = fadd fast float %i.bv, %i.bt
  %i.bx = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.bw)
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !122
  %i.bz = fcmp fast oge float %i.bs, 0.000000e+00
  %i.ca = select fast i1 %i.bz, float 5.000000e-01, float -5.000000e-01
  %i.cb = fadd fast float %i.ca, %i.bs
  %i.cc = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph574.preheader, label %.lr.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph574, %middle.block762, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.cg, align 8, !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cf, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %2, i64 noundef 2, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.cj, align 8, !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ci, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %2, i64 noundef 2, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.b

.lr.ph574:                                        ; preds = %.lr.ph574.preheader866, %.lr.ph574
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %.lr.ph574 ], [ %indvars.iv670.ph, %.lr.ph574.preheader866 ] ; 4 uses
end_hunk_0
