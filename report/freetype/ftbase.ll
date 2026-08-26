Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@FT_Vector_Length:bb.a
  %i.ao = icmp sgt i32 %.0.i, 0
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ft_trig_pseudo_polarize.exit
  %i.ap = add nsw i32 %.0.i, -1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 1, %i.aq
  %i.as = add nsw i64 %i.an, %i.ar
  %i.at = zext nneg i32 %.0.i to i64
  %i.au = ashr i64 %i.as, %i.at
  br label %bb.p

bb.o:                                             ; preds = %ft_trig_pseudo_polarize.exit
  %i.av = trunc i64 %i.an to i32
  %i.aw = sub nsw i32 0, %.0.i
  %i.ax = shl i32 %i.av, %i.aw
  %i.ay = zext i32 %i.ax to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.a, %bb.o, %bb.n, %bb.c
  %.0 = phi i64 [ %i.b, %bb.c ], [ 0, %bb.a ], [ %i.au, %bb.n ], [ %i.ay, %bb.o ], [ %i.d, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @FT_Vector_Polarize(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !40 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !40 ; 4 uses
  %i.d = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.e = icmp eq i64 %.sroa.10.0.copyload, 0
  %or.cond6 = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond6, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload, i1 true)
  %i.g = tail call i64 @llvm.abs.i64(i64 %.sroa.10.0.copyload, i1 true)
  %i.h = or i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.i, i1 true) ; 3 uses
  %i.k = xor i32 %i.j, 31                         ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 30
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i32 29, %i.k                 ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl i64 %.sroa.0.0.copyload, %i.n
  %i.p = shl i64 %.sroa.10.0.copyload, %i.n
  br label %ft_trig_prenorm.exit

bb.e:                                             ; preds = %bb.c
  %.neg.i = add nsw i32 %i.j, -2
  %i.q = sub nsw i32 2, %i.j
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = ashr i64 %.sroa.0.0.copyload, %i.r
  %i.t = ashr i64 %.sroa.10.0.copyload, %i.r
  br label %ft_trig_prenorm.exit

ft_trig_prenorm.exit:                             ; preds = %bb.d, %bb.e
  %.sink.i = phi i64 [ %i.o, %bb.d ], [ %i.s, %bb.e ] ; 4 uses
  %storemerge.i = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.e ] ; 8 uses
  %.0.i = phi i32 [ %i.m, %bb.d ], [ %.neg.i, %bb.e ] ; 3 uses
  %i.u = icmp sgt i64 %storemerge.i, %.sink.i
  %i.v = sub nsw i64 0, %.sink.i                  ; 4 uses
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %ft_trig_prenorm.exit
  %i.w = icmp sgt i64 %storemerge.i, %i.v
  br i1 %i.w, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %storemerge.i, 0
  %i.y = select i1 %i.x, i64 11796480, i64 -11796480
  %i.z = sub nsw i64 0, %storemerge.i
  br label %.preheader

bb.h:                                             ; preds = %ft_trig_prenorm.exit
  %i.aa = icmp slt i64 %storemerge.i, %i.v
  br i1 %i.aa, label %bb.i, label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.ab = sub nsw i64 0, %storemerge.i
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.15168.i.ph = phi i64 [ %i.v, %bb.f ], [ %i.z, %bb.g ], [ %storemerge.i, %bb.h ], [ %.sink.i, %bb.i ]
  %.15367.i.ph = phi i64 [ %storemerge.i, %bb.f ], [ %i.v, %bb.g ], [ %.sink.i, %bb.h ], [ %i.ab, %bb.i ]
  %.15765.i.ph = phi i64 [ 5898240, %bb.f ], [ %i.y, %bb.g ], [ 0, %bb.h ], [ -5898240, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 1, %.preheader ] ; 4 uses
  %.070.i = phi ptr [ %.1.i, %bb.m ], [ @ft_trig_arctan_table, %.preheader ] ; 2 uses
  %.04969.i = phi i64 [ %i.ap, %bb.m ], [ 1, %.preheader ] ; 3 uses
  %.15168.i = phi i64 [ %.2.i, %bb.m ], [ %.15168.i.ph, %.preheader ] ; 4 uses
  %.15367.i = phi i64 [ %.254.i, %bb.m ], [ %.15367.i.ph, %.preheader ] ; 3 uses
  %.15765.i = phi i64 [ %.258.i, %bb.m ], [ %.15765.i.ph, %.preheader ] ; 2 uses
  %i.ac = icmp sgt i64 %.15168.i, 0
  %i.ad = add nsw i64 %.15168.i, %.04969.i        ; 2 uses
  %i.ae = add nsw i64 %.15367.i, %.04969.i
  %i.af = ashr i64 %i.ae, %indvars.iv.i           ; 2 uses
  %i.ag = load i64, ptr %.070.i, align 8, !tbaa !40 ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = lshr i64 %i.ad, %indvars.iv.i
  %i.ai = add nsw i64 %i.ah, %.15367.i
  %i.aj = sub nsw i64 %.15168.i, %i.af
  %i.ak = add nsw i64 %i.ag, %.15765.i
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.al = ashr i64 %i.ad, %indvars.iv.i
  %i.am = sub nsw i64 %.15367.i, %i.al
  %i.an = add nsw i64 %i.af, %.15168.i
  %i.ao = sub nsw i64 %.15765.i, %i.ag
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.258.i = phi i64 [ %i.ak, %bb.k ], [ %i.ao, %bb.l ] ; 4 uses
  %.254.i = phi i64 [ %i.ai, %bb.k ], [ %i.am, %bb.l ] ; 3 uses
  %.2.i = phi i64 [ %i.aj, %bb.k ], [ %i.an, %bb.l ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.070.i, i64 8
  %i.ap = shl nuw nsw i64 %.04969.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.not.i, label %bb.n, label %bb.j, !llvm.loop !624

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp sgt i64 %.258.i, -1
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = add nuw nsw i64 %.258.i, 8
  %i.as = and i64 %i.ar, 9223372036854775792
  br label %ft_trig_pseudo_polarize.exit

bb.p:                                             ; preds = %bb.n
  %i.at = sub i64 8, %.258.i
  %i.au = and i64 %i.at, -16
  %i.av = sub nsw i64 0, %i.au
  br label %ft_trig_pseudo_polarize.exit

ft_trig_pseudo_polarize.exit:                     ; preds = %bb.o, %bb.p
  %.3.i = phi i64 [ %i.as, %bb.o ], [ %i.av, %bb.p ]
  %i.aw = icmp slt i64 %.254.i, 0
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %.254.i, i1 true)
  %i.ax = mul i64 %spec.select.i, 3688454934
  %i.ay = add i64 %i.ax, 1073741824
  %i.az = lshr i64 %i.ay, 32                      ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = select i1 %i.aw, i64 %i.ba, i64 %i.az   ; 2 uses
  %i.bc = zext nneg i32 %.0.i to i64
  %i.bd = ashr i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bb to i32
  %i.bf = sub nsw i32 0, %.0.i
  %i.bg = shl i32 %i.be, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp slt i32 %.0.i, 0
  %i.bj = select i1 %i.bi, i64 %i.bh, i64 %i.bd
  store i64 %i.bj, ptr %1, align 8, !tbaa !40
  store i64 %.3.i, ptr %2, align 8, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %ft_trig_pseudo_polarize.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @FT_Vector_From_Polar(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %0, align 8, !tbaa !166
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !169
  tail call void @FT_Vector_Rotate(ptr noundef nonnull %0, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 -11796479, 11796481) i64 @FT_Angle_Diff(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
.preheader.preheader:
  %i.a = sub i64 %1, %0
  %smax = tail call i64 @llvm.smax.i64(i64 %i.a, i64 -11796479)
  %i.b = add i64 %0, %smax
  %i.c = add i64 %i.b, 23592959
  %i.d = sub i64 %i.c, %1                         ; 2 uses
  %2 = urem i64 %i.d, 23592960
  %3 = sub nuw i64 %i.d, %2
  %i.e = add i64 %1, %3                           ; 2 uses
  %i.f = sub i64 %i.e, %0                         ; 2 uses
  %i.g = add i64 %i.e, 23592959
  %smin = tail call i64 @llvm.smin.i64(i64 %i.f, i64 11796480)
  %i.h = add i64 %0, %smin
  %i.i = sub i64 %i.g, %i.h
  %.fr = freeze i64 %i.i                          ; 2 uses
  %i.j = urem i64 %.fr, 23592960
  %.neg = sub i64 %i.j, %.fr
  %i.k = add i64 %.neg, %i.f
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, -65535) i64 @FT_RoundFix(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %.lobit.neg = ashr i64 %0, 63
  %i.a = add i64 %0, 32768
  %i.b = add i64 %i.a, %.lobit.neg
  %i.c = and i64 %i.b, -65536
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, -65535) i64 @FT_CeilFix(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %0, 65535
  %i.b = and i64 %i.a, -65536
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, -65535) i64 @FT_FloorFix(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %0, -65536
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden range(i64 -2147483647, -9223372036854775808) i64 @FT_Hypot(i64 noundef %0, i64 noundef %1) local_unnamed_addr #23 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i64 %0, ptr %2, align 8, !tbaa !166
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !169
  %i.b = call i64 @FT_Vector_Length(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @FT_MulDiv_No_Round(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.021 = tail call i64 @llvm.abs.i64(i64 %2, i1 false)
  %.022 = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  %.020 = tail call i64 @llvm.abs.i64(i64 %0, i1 false)
  %i.a = mul i64 %.022, %.020
  %i.b = udiv i64 %i.a, %.021
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 2147483647, %bb.a ] ; 2 uses
  %i.d = icmp slt i64 %2, 0
  %i.e = icmp slt i64 %1, 0
  %i.f = icmp slt i64 %0, 0
  %.0 = select i1 %i.f, i32 -1, i32 1             ; 2 uses
  %i.g = sub nsw i32 0, %.0
  %.1 = select i1 %i.e, i32 %i.g, i32 %.0         ; 2 uses
  %i.h = sub nsw i32 0, %.1
  %.2 = select i1 %i.d, i32 %i.h, i32 %.1
  %i.i = icmp slt i32 %.2, 0
  %i.j = sub i64 0, %i.c
  %i.k = select i1 %i.i, i64 %i.j, i64 %i.c
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 -140737488355328, 140737488355328) i64 @FT_MulFix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = mul i64 %1, %0                           ; 2 uses
  %i.b = ashr i64 %i.a, 63
  %i.c = add i64 %i.a, 32768
  %i.d = add i64 %i.c, %i.b
  %i.e = ashr i64 %i.d, 16
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @FT_Matrix_Multiply(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !262    ; 2 uses
  %i.e = mul i64 %i.d, %i.c                       ; 2 uses
  %i.f = ashr i64 %i.e, 63
  %i.g = add i64 %i.e, 32768
  %i.h = add i64 %i.g, %i.f
  %i.i = ashr i64 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !260  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !261  ; 2 uses
  %i.n = mul i64 %i.m, %i.k                       ; 2 uses
  %i.o = ashr i64 %i.n, 63
  %i.p = add i64 %i.n, 32768
  %i.q = add i64 %i.p, %i.o
  %i.r = ashr i64 %i.q, 16
  %i.s = add nsw i64 %i.r, %i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !260  ; 2 uses
  %i.v = mul i64 %i.u, %i.c                       ; 2 uses
  %i.w = ashr i64 %i.v, 63
  %i.x = add i64 %i.v, 32768
  %i.y = add i64 %i.x, %i.w
  %i.z = ashr i64 %i.y, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !263 ; 2 uses
  %i.ac = mul i64 %i.ab, %i.k                     ; 2 uses
  %i.ad = ashr i64 %i.ac, 63
  %i.ae = add i64 %i.ac, 32768
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = ashr i64 %i.af, 16
  %i.ah = add nsw i64 %i.ag, %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !261 ; 2 uses
  %i.ak = mul i64 %i.aj, %i.d                     ; 2 uses
  %i.al = ashr i64 %i.ak, 63
  %i.am = add i64 %i.ak, 32768
  %i.an = add i64 %i.am, %i.al
  %i.ao = ashr i64 %i.an, 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !263 ; 2 uses
  %i.ar = mul i64 %i.aq, %i.m                     ; 2 uses
  %i.as = ashr i64 %i.ar, 63
  %i.at = add i64 %i.ar, 32768
  %i.au = add i64 %i.at, %i.as
  %i.av = ashr i64 %i.au, 16
  %i.aw = add nsw i64 %i.av, %i.ao
  %i.ax = mul i64 %i.aj, %i.u                     ; 2 uses
  %i.ay = ashr i64 %i.ax, 63
  %i.az = add i64 %i.ax, 32768
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = ashr i64 %i.ba, 16
  %i.bc = mul i64 %i.aq, %i.ab                    ; 2 uses
  %i.bd = ashr i64 %i.bc, 63
  %i.be = add i64 %i.bc, 32768
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = ashr i64 %i.bf, 16
  %i.bh = add nsw i64 %i.bg, %i.bb
  store i64 %i.s, ptr %1, align 8, !tbaa !262
  store i64 %i.ah, ptr %i.t, align 8, !tbaa !260
  store i64 %i.aw, ptr %i.l, align 8, !tbaa !261
  store i64 %i.bh, ptr %i.aa, align 8, !tbaa !263
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 7) i32 @FT_Matrix_Invert(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !262    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !263  ; 3 uses
  %i.d = mul i64 %i.c, %i.a                       ; 2 uses
  %i.e = ashr i64 %i.d, 63
  %i.f = add i64 %i.d, 32768
  %i.g = add i64 %i.f, %i.e
  %i.h = ashr i64 %i.g, 16                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !260  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !261  ; 3 uses
  %i.m = mul i64 %i.l, %i.j                       ; 2 uses
  %i.n = ashr i64 %i.m, 63
  %i.o = add i64 %i.m, 32768
  %i.p = add i64 %i.o, %i.n
  %i.q = ashr i64 %i.p, 16                        ; 2 uses
  %.not22 = icmp eq i64 %i.h, %i.q
  br i1 %.not22, label %bb.c, label %FT_DivFix.exit34

FT_DivFix.exit34:                                 ; preds = %bb.b
  %i.r = sub nsw i64 %i.h, %i.q                   ; 5 uses
  %.017.i = tail call i64 @llvm.abs.i64(i64 %i.r, i1 true) ; 5 uses
  %.016.i = tail call i64 @llvm.abs.i64(i64 %i.j, i1 false)
  %i.s = shl i64 %.016.i, 16
end_hunk_0
