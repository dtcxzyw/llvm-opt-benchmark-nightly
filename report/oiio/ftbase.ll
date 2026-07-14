inline.NumInlined: 362
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@FT_Matrix_Multiply:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !168
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !169
  %sext.i27 = shl i64 %i.n, 32
  %i.q = ashr exact i64 %sext.i27, 32             ; 2 uses
  %sext2.i28 = shl i64 %i.p, 32
  %i.r = ashr exact i64 %sext2.i28, 32            ; 2 uses
  %i.s = mul nsw i64 %i.r, %i.q                   ; 2 uses
  %i.t = ashr i64 %i.s, 63
  %i.u = add nsw i64 %i.s, 32768
  %i.v = add nsw i64 %i.u, %i.t
  %i.w = shl i64 %i.v, 16
  %i.x = ashr i64 %i.w, 32
  %i.y = add nsw i64 %i.x, %i.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !168
  %sext2.i30 = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext2.i30, 32           ; 2 uses
  %i.ac = mul nsw i64 %i.ab, %i.e                 ; 2 uses
  %i.ad = ashr i64 %i.ac, 63
  %i.ae = add nsw i64 %i.ac, 32768
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = shl i64 %i.af, 16
  %i.ah = ashr i64 %i.ag, 32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !170
  %sext2.i32 = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext2.i32, 32           ; 2 uses
  %i.al = mul nsw i64 %i.ak, %i.q                 ; 2 uses
  %i.am = ashr i64 %i.al, 63
  %i.an = add nsw i64 %i.al, 32768
  %i.ao = add nsw i64 %i.an, %i.am
  %i.ap = shl i64 %i.ao, 16
  %i.aq = ashr i64 %i.ap, 32
  %i.ar = add nsw i64 %i.aq, %i.ah
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !169
  %sext.i33 = shl i64 %i.at, 32
  %i.au = ashr exact i64 %sext.i33, 32            ; 2 uses
  %i.av = mul nsw i64 %i.au, %i.f                 ; 2 uses
  %i.aw = ashr i64 %i.av, 63
  %i.ax = add nsw i64 %i.av, 32768
  %i.ay = add nsw i64 %i.ax, %i.aw
  %i.az = shl i64 %i.ay, 16
  %i.ba = ashr i64 %i.az, 32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !170
  %sext.i35 = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext.i35, 32            ; 2 uses
  %i.be = mul nsw i64 %i.bd, %i.r                 ; 2 uses
  %i.bf = ashr i64 %i.be, 63
  %i.bg = add nsw i64 %i.be, 32768
  %i.bh = add nsw i64 %i.bg, %i.bf
  %i.bi = shl i64 %i.bh, 16
  %i.bj = ashr i64 %i.bi, 32
  %i.bk = add nsw i64 %i.bj, %i.ba
  %i.bl = mul nsw i64 %i.au, %i.ab                ; 2 uses
  %i.bm = ashr i64 %i.bl, 63
  %i.bn = add nsw i64 %i.bl, 32768
  %i.bo = add nsw i64 %i.bn, %i.bm
  %i.bp = shl i64 %i.bo, 16
  %i.bq = ashr i64 %i.bp, 32
  %i.br = mul nsw i64 %i.bd, %i.ak                ; 2 uses
  %i.bs = ashr i64 %i.br, 63
  %i.bt = add nsw i64 %i.br, 32768
  %i.bu = add nsw i64 %i.bt, %i.bs
  %i.bv = shl i64 %i.bu, 16
  %i.bw = ashr i64 %i.bv, 32
  %i.bx = add nsw i64 %i.bw, %i.bq
  store i64 %i.y, ptr %1, align 8, !tbaa !166
  store i64 %i.ar, ptr %i.z, align 8, !tbaa !168
  store i64 %i.bk, ptr %i.o, align 8, !tbaa !169
  store i64 %i.bx, ptr %i.ai, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 7) i32 @FT_Matrix_Invert(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !166    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170  ; 3 uses
  %sext.i = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext.i, 32
  %sext2.i = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext2.i, 32
  %i.f = mul nsw i64 %i.e, %i.d                   ; 2 uses
  %i.g = ashr i64 %i.f, 63
  %i.h = add nsw i64 %i.f, 32768
  %i.i = add nsw i64 %i.h, %i.g
  %i.j = shl i64 %i.i, 16
  %i.k = ashr i64 %i.j, 32                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !169  ; 3 uses
  %sext.i23 = shl i64 %i.m, 32
  %i.p = ashr exact i64 %sext.i23, 32
  %sext2.i24 = shl i64 %i.o, 32
  %i.q = ashr exact i64 %sext2.i24, 32
  %i.r = mul nsw i64 %i.q, %i.p                   ; 2 uses
  %i.s = ashr i64 %i.r, 63
  %i.t = add nsw i64 %i.r, 32768
  %i.u = add nsw i64 %i.t, %i.s
  %i.v = shl i64 %i.u, 16
  %i.w = ashr i64 %i.v, 32                        ; 2 uses
  %.not22 = icmp eq i64 %i.k, %i.w
  br i1 %.not22, label %bb.c, label %FT_DivFix.exit36

FT_DivFix.exit36:                                 ; preds = %bb.b
  %i.x = sub nsw i64 %i.k, %i.w                   ; 5 uses
  %.017.i = tail call i64 @llvm.abs.i64(i64 %i.x, i1 true) ; 5 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.m, i1 false)
  %i.y = shl i64 %spec.select.i, 16
  %i.z = lshr i64 %.017.i, 1                      ; 4 uses
  %i.aa = add i64 %i.z, %i.y
  %i.ab = udiv i64 %i.aa, %.017.i                 ; 2 uses
  %i.ac = xor i64 %i.x, %i.m
  %i.ad = icmp slt i64 %i.ac, 0
  %i.ae = sub i64 0, %i.ab
  %i.af = select i1 %i.ad, i64 %i.ab, i64 %i.ae
  store i64 %i.af, ptr %i.l, align 8, !tbaa !168
  %spec.select.i27 = tail call i64 @llvm.abs.i64(i64 %i.o, i1 false)
  %i.ag = shl i64 %spec.select.i27, 16
  %i.ah = add i64 %i.z, %i.ag
  %i.ai = udiv i64 %i.ah, %.017.i                 ; 2 uses
  %i.aj = xor i64 %i.x, %i.o
  %i.ak = icmp slt i64 %i.aj, 0
  %i.al = sub i64 0, %i.ai
  %i.am = select i1 %i.ak, i64 %i.ai, i64 %i.al
  store i64 %i.am, ptr %i.n, align 8, !tbaa !169
  %spec.select.i31 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false)
  %i.an = shl i64 %spec.select.i31, 16
  %i.ao = add i64 %i.z, %i.an
  %i.ap = udiv i64 %i.ao, %.017.i                 ; 2 uses
  %i.aq = xor i64 %i.x, %i.c
  %i.ar = icmp slt i64 %i.aq, 0
  %i.as = sub i64 0, %i.ap
  %i.at = select i1 %i.ar, i64 %i.as, i64 %i.ap
  store i64 %i.at, ptr %0, align 8, !tbaa !166
  %spec.select.i35 = tail call i64 @llvm.abs.i64(i64 %i.a, i1 false)
  %i.au = shl i64 %spec.select.i35, 16
  %i.av = add i64 %i.z, %i.au
  %i.aw = udiv i64 %i.av, %.017.i                 ; 2 uses
  %i.ax = xor i64 %i.x, %i.a
  %i.ay = icmp slt i64 %i.ax, 0
  %i.az = sub i64 0, %i.aw
  %i.ba = select i1 %i.ay, i64 %i.az, i64 %i.aw
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %FT_DivFix.exit36
  %.0 = phi i32 [ 0, %FT_DivFix.exit36 ], [ 6, %bb.a ], [ 6, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @FT_Matrix_Multiply_Scaled(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i64 %2, 16                       ; 7 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !166    ; 3 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !166    ; 3 uses
  %.not.i = icmp eq i64 %2, 0                     ; 7 uses
  br i1 %.not.i, label %FT_MulDiv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.022.i = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i = tail call i64 @llvm.abs.i64(i64 %i.e, i1 false)
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.d, i1 false)
  %i.f = mul i64 %.023.i, %spec.select.i
  %i.g = lshr exact i64 %.022.i, 1
  %i.h = add i64 %i.f, %i.g
  %i.i = udiv i64 %i.h, %.022.i
  br label %FT_MulDiv.exit

FT_MulDiv.exit:                                   ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 2147483647, %bb.b ] ; 2 uses
  %i.k = icmp slt i64 %2, 0                       ; 8 uses
  %i.l = icmp slt i64 %i.e, 0                     ; 2 uses
  %i.m = icmp slt i64 %i.d, 0
  %spec.select30.i = select i1 %i.m, i32 -1, i32 1 ; 3 uses
  %i.n = sub nsw i32 0, %spec.select30.i          ; 2 uses
  %.1.i = select i1 %i.l, i32 %i.n, i32 %spec.select30.i ; 2 uses
  %i.o = sub nsw i32 0, %.1.i
  %.2.i = select i1 %i.k, i32 %i.o, i32 %.1.i
  %i.p = icmp slt i32 %.2.i, 0
  %i.q = sub i64 0, %i.j
  %i.r = select i1 %i.p, i64 %i.q, i64 %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !168  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !169  ; 3 uses
  br i1 %.not.i, label %FT_MulDiv.exit43, label %bb.d

bb.d:                                             ; preds = %FT_MulDiv.exit
  %.022.i37 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i38 = tail call i64 @llvm.abs.i64(i64 %i.v, i1 false)
  %spec.select.i39 = tail call i64 @llvm.abs.i64(i64 %i.t, i1 false)
  %i.w = mul i64 %.023.i38, %spec.select.i39
  %i.x = lshr exact i64 %.022.i37, 1
  %i.y = add i64 %i.w, %i.x
  %i.z = udiv i64 %i.y, %.022.i37
  br label %FT_MulDiv.exit43

FT_MulDiv.exit43:                                 ; preds = %FT_MulDiv.exit, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.d ], [ 2147483647, %FT_MulDiv.exit ] ; 2 uses
  %i.ab = icmp slt i64 %i.v, 0                    ; 2 uses
  %i.ac = icmp slt i64 %i.t, 0
  %spec.select30.i40 = select i1 %i.ac, i32 -1, i32 1 ; 3 uses
  %i.ad = sub nsw i32 0, %spec.select30.i40       ; 2 uses
  %.1.i41 = select i1 %i.ab, i32 %i.ad, i32 %spec.select30.i40 ; 2 uses
  %i.ae = sub nsw i32 0, %.1.i41
  %.2.i42 = select i1 %i.k, i32 %i.ae, i32 %.1.i41
  %i.af = icmp slt i32 %.2.i42, 0
  %i.ag = sub i64 0, %i.aa
  %i.ah = select i1 %i.af, i64 %i.ag, i64 %i.aa
  %i.ai = add i64 %i.ah, %i.r
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !168 ; 3 uses
  br i1 %.not.i, label %FT_MulDiv.exit51, label %bb.e

bb.e:                                             ; preds = %FT_MulDiv.exit43
  %.022.i45 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i46 = tail call i64 @llvm.abs.i64(i64 %i.ak, i1 false)
  %spec.select.i47 = tail call i64 @llvm.abs.i64(i64 %i.d, i1 false)
  %i.al = mul i64 %.023.i46, %spec.select.i47
  %i.am = lshr exact i64 %.022.i45, 1
  %i.an = add i64 %i.al, %i.am
  %i.ao = udiv i64 %i.an, %.022.i45
  br label %FT_MulDiv.exit51

FT_MulDiv.exit51:                                 ; preds = %FT_MulDiv.exit43, %bb.e
  %i.ap = phi i64 [ %i.ao, %bb.e ], [ 2147483647, %FT_MulDiv.exit43 ] ; 2 uses
  %i.aq = icmp slt i64 %i.ak, 0                   ; 3 uses
  %.1.i49 = select i1 %i.aq, i32 %i.n, i32 %spec.select30.i ; 2 uses
  %i.ar = sub nsw i32 0, %.1.i49
  %.2.i50 = select i1 %i.k, i32 %i.ar, i32 %.1.i49
  %i.as = icmp slt i32 %.2.i50, 0
  %i.at = sub i64 0, %i.ap
  %i.au = select i1 %i.as, i64 %i.at, i64 %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !170 ; 3 uses
  br i1 %.not.i, label %FT_MulDiv.exit59, label %bb.f

bb.f:                                             ; preds = %FT_MulDiv.exit51
  %.022.i53 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i54 = tail call i64 @llvm.abs.i64(i64 %i.aw, i1 false)
  %spec.select.i55 = tail call i64 @llvm.abs.i64(i64 %i.t, i1 false)
  %i.ax = mul i64 %.023.i54, %spec.select.i55
  %i.ay = lshr exact i64 %.022.i53, 1
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = udiv i64 %i.az, %.022.i53
  br label %FT_MulDiv.exit59

FT_MulDiv.exit59:                                 ; preds = %FT_MulDiv.exit51, %bb.f
  %i.bb = phi i64 [ %i.ba, %bb.f ], [ 2147483647, %FT_MulDiv.exit51 ] ; 2 uses
  %i.bc = icmp slt i64 %i.aw, 0                   ; 2 uses
  %.1.i57 = select i1 %i.bc, i32 %i.ad, i32 %spec.select30.i40 ; 2 uses
  %i.bd = sub nsw i32 0, %.1.i57
  %.2.i58 = select i1 %i.k, i32 %i.bd, i32 %.1.i57
  %i.be = icmp slt i32 %.2.i58, 0
  %i.bf = sub i64 0, %i.bb
  %i.bg = select i1 %i.be, i64 %i.bf, i64 %i.bb
  %i.bh = add i64 %i.bg, %i.au
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !169 ; 3 uses
  br i1 %.not.i, label %FT_MulDiv.exit67, label %bb.g

bb.g:                                             ; preds = %FT_MulDiv.exit59
  %.022.i61 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i62 = tail call i64 @llvm.abs.i64(i64 %i.e, i1 false)
  %spec.select.i63 = tail call i64 @llvm.abs.i64(i64 %i.bj, i1 false)
  %i.bk = mul i64 %spec.select.i63, %.023.i62
  %i.bl = lshr exact i64 %.022.i61, 1
  %i.bm = add i64 %i.bk, %i.bl
  %i.bn = udiv i64 %i.bm, %.022.i61
  br label %FT_MulDiv.exit67

FT_MulDiv.exit67:                                 ; preds = %FT_MulDiv.exit59, %bb.g
  %i.bo = phi i64 [ %i.bn, %bb.g ], [ 2147483647, %FT_MulDiv.exit59 ] ; 2 uses
  %i.bp = icmp slt i64 %i.bj, 0                   ; 2 uses
  %spec.select30.i64 = select i1 %i.bp, i32 -1, i32 1 ; 3 uses
  %i.bq = sub nsw i32 0, %spec.select30.i64       ; 2 uses
  %.1.i65 = select i1 %i.l, i32 %i.bq, i32 %spec.select30.i64 ; 2 uses
  %i.br = sub nsw i32 0, %.1.i65
  %.2.i66 = select i1 %i.k, i32 %i.br, i32 %.1.i65
  %i.bs = icmp slt i32 %.2.i66, 0
  %i.bt = sub i64 0, %i.bo
  %i.bu = select i1 %i.bs, i64 %i.bt, i64 %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !170 ; 3 uses
  br i1 %.not.i, label %FT_MulDiv.exit75, label %bb.h

bb.h:                                             ; preds = %FT_MulDiv.exit67
  %.022.i69 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i70 = tail call i64 @llvm.abs.i64(i64 %i.v, i1 false)
  %spec.select.i71 = tail call i64 @llvm.abs.i64(i64 %i.bw, i1 false)
  %i.bx = mul i64 %spec.select.i71, %.023.i70
  %i.by = lshr exact i64 %.022.i69, 1
  %i.bz = add i64 %i.bx, %i.by
  %i.ca = udiv i64 %i.bz, %.022.i69
  br label %FT_MulDiv.exit75

FT_MulDiv.exit75:                                 ; preds = %FT_MulDiv.exit67, %bb.h
  %i.cb = phi i64 [ %i.ca, %bb.h ], [ 2147483647, %FT_MulDiv.exit67 ] ; 2 uses
  %i.cc = icmp slt i64 %i.bw, 0
  %spec.select30.i72 = select i1 %i.cc, i32 -1, i32 1 ; 3 uses
  %i.cd = sub nsw i32 0, %spec.select30.i72       ; 2 uses
  %.1.i73 = select i1 %i.ab, i32 %i.cd, i32 %spec.select30.i72 ; 2 uses
  %i.ce = sub nsw i32 0, %.1.i73
  %.2.i74 = select i1 %i.k, i32 %i.ce, i32 %.1.i73
  %i.cf = icmp slt i32 %.2.i74, 0
  %i.cg = sub i64 0, %i.cb
  %i.ch = select i1 %i.cf, i64 %i.cg, i64 %i.cb
  %i.ci = add i64 %i.ch, %i.bu
  br i1 %.not.i, label %FT_MulDiv.exit83.thread, label %bb.i

FT_MulDiv.exit83.thread:                          ; preds = %FT_MulDiv.exit75
  %i.cj = xor i1 %i.aq, %i.bp
  %i.ck = select i1 %i.cj, i64 -2147483647, i64 2147483647
  br label %FT_MulDiv.exit91

bb.i:                                             ; preds = %FT_MulDiv.exit75
  %.022.i77 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 3 uses
  %.023.i78 = tail call i64 @llvm.abs.i64(i64 %i.ak, i1 false)
  %spec.select.i79 = tail call i64 @llvm.abs.i64(i64 %i.bj, i1 false)
  %i.cl = mul i64 %spec.select.i79, %.023.i78
  %i.cm = lshr exact i64 %.022.i77, 1             ; 2 uses
  %i.cn = add i64 %i.cl, %i.cm
  %i.co = udiv i64 %i.cn, %.022.i77               ; 2 uses
  %.1.i81 = select i1 %i.aq, i32 %i.bq, i32 %spec.select30.i64 ; 2 uses
  %i.cp = sub nsw i32 0, %.1.i81
  %.2.i82 = select i1 %i.k, i32 %i.cp, i32 %.1.i81
  %i.cq = icmp slt i32 %.2.i82, 0
  %i.cr = sub i64 0, %i.co
  %i.cs = select i1 %i.cq, i64 %i.cr, i64 %i.co
  %.023.i86 = tail call i64 @llvm.abs.i64(i64 %i.aw, i1 false)
  %spec.select.i87 = tail call i64 @llvm.abs.i64(i64 %i.bw, i1 false)
  %i.ct = mul i64 %spec.select.i87, %.023.i86
  %i.cu = add i64 %i.ct, %i.cm
  %i.cv = udiv i64 %i.cu, %.022.i77
  br label %FT_MulDiv.exit91

FT_MulDiv.exit91:                                 ; preds = %FT_MulDiv.exit83.thread, %bb.i
  %i.cw = phi i64 [ %i.cs, %bb.i ], [ %i.ck, %FT_MulDiv.exit83.thread ]
  %i.cx = phi i64 [ %i.cv, %bb.i ], [ 2147483647, %FT_MulDiv.exit83.thread ] ; 2 uses
  %.1.i89 = select i1 %i.bc, i32 %i.cd, i32 %spec.select30.i72 ; 2 uses
  %i.cy = sub nsw i32 0, %.1.i89
  %.2.i90 = select i1 %i.k, i32 %i.cy, i32 %.1.i89
  %i.cz = icmp slt i32 %.2.i90, 0
  %i.da = sub i64 0, %i.cx
  %i.db = select i1 %i.cz, i64 %i.da, i64 %i.cx
  %i.dc = add i64 %i.db, %i.cw
  store i64 %i.ai, ptr %1, align 8, !tbaa !166
  store i64 %i.bh, ptr %i.aj, align 8, !tbaa !168
  store i64 %i.ci, ptr %i.u, align 8, !tbaa !169
  store i64 %i.dc, ptr %i.av, align 8, !tbaa !170
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %FT_MulDiv.exit91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext range(i8 0, 2) i8 @FT_Matrix_Check(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !166    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !168  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !169  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !170  ; 3 uses
  %i.h = tail call i64 @llvm.abs.i64(i64 %i.a, i1 true)
  %i.i = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true)
  %i.j = or i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.abs.i64(i64 %i.e, i1 true)
  %i.l = or i64 %i.j, %i.k
  %i.m = tail call i64 @llvm.abs.i64(i64 %i.g, i1 true)
  %i.n = or i64 %i.l, %i.m                        ; 3 uses
  %i.o = add nsw i64 %i.n, -2147483648
  %or.cond = icmp ult i64 %i.o, -2147483647
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %i.n, 8191
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %i.n to i32
  %i.r = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.q, i1 true)
  %i.s = sub nuw nsw i32 19, %i.r
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  %i.u = ashr i64 %i.a, %i.t
  %i.v = ashr i64 %i.c, %i.t
  %i.w = ashr i64 %i.e, %i.t
  %i.x = ashr i64 %i.g, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.055 = phi i64 [ %i.x, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %.054 = phi i64 [ %i.w, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %.053 = phi i64 [ %i.v, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %.052 = phi i64 [ %i.u, %bb.d ], [ %i.a, %bb.c ] ; 3 uses
  %i.y = mul nsw i64 %.052, %.055
  %i.z = mul nsw i64 %.053, %.054
  %i.aa = sub nsw i64 %i.y, %i.z
  %i.ab = tail call i64 @llvm.abs.i64(i64 %i.aa, i1 true)
  %i.ac = shl i64 %i.ab, 5
  %i.ad = mul nsw i64 %.052, %.052
  %i.ae = mul nsw i64 %.053, %.053
  %i.af = mul nsw i64 %.054, %.054
  %i.ag = mul nsw i64 %.055, %.055
  %i.ah = add nuw i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = add i64 %i.ai, %i.ad
  %.not60 = icmp ugt i64 %i.ac, %i.aj
  %spec.select = zext i1 %.not60 to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.e ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @FT_Vector_Transform_Scaled(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i64 %2, 16                       ; 4 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !165    ; 3 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !166    ; 2 uses
  %.not.i = icmp eq i64 %2, 0                     ; 4 uses
  br i1 %.not.i, label %FT_MulDiv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.022.i = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i = tail call i64 @llvm.abs.i64(i64 %i.e, i1 false)
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.d, i1 false)
  %i.f = mul i64 %.023.i, %spec.select.i
  %i.g = lshr exact i64 %.022.i, 1
  %i.h = add i64 %i.f, %i.g
  %i.i = udiv i64 %i.h, %.022.i
  br label %FT_MulDiv.exit

FT_MulDiv.exit:                                   ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 2147483647, %bb.b ] ; 2 uses
  %i.k = icmp slt i64 %2, 0                       ; 4 uses
  %i.l = icmp slt i64 %i.e, 0
  %i.m = icmp slt i64 %i.d, 0
  %spec.select30.i = select i1 %i.m, i32 -1, i32 1 ; 3 uses
  %i.n = sub nsw i32 0, %spec.select30.i          ; 2 uses
  %.1.i = select i1 %i.l, i32 %i.n, i32 %spec.select30.i ; 2 uses
  %i.o = sub nsw i32 0, %.1.i
  %.2.i = select i1 %i.k, i32 %i.o, i32 %.1.i
  %i.p = icmp slt i32 %.2.i, 0
  %i.q = sub i64 0, %i.j
  %i.r = select i1 %i.p, i64 %i.q, i64 %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !167  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168  ; 2 uses
  br i1 %.not.i, label %FT_MulDiv.exit27, label %bb.d

bb.d:                                             ; preds = %FT_MulDiv.exit
  %.022.i21 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i22 = tail call i64 @llvm.abs.i64(i64 %i.v, i1 false)
  %spec.select.i23 = tail call i64 @llvm.abs.i64(i64 %i.t, i1 false)
  %i.w = mul i64 %.023.i22, %spec.select.i23
  %i.x = lshr exact i64 %.022.i21, 1
  %i.y = add i64 %i.w, %i.x
  %i.z = udiv i64 %i.y, %.022.i21
  br label %FT_MulDiv.exit27

FT_MulDiv.exit27:                                 ; preds = %FT_MulDiv.exit, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.d ], [ 2147483647, %FT_MulDiv.exit ] ; 2 uses
  %i.ab = icmp slt i64 %i.v, 0
  %i.ac = icmp slt i64 %i.t, 0
  %spec.select30.i24 = select i1 %i.ac, i32 -1, i32 1 ; 3 uses
  %i.ad = sub nsw i32 0, %spec.select30.i24       ; 2 uses
  %.1.i25 = select i1 %i.ab, i32 %i.ad, i32 %spec.select30.i24 ; 2 uses
  %i.ae = sub nsw i32 0, %.1.i25
  %.2.i26 = select i1 %i.k, i32 %i.ae, i32 %.1.i25
  %i.af = icmp slt i32 %.2.i26, 0
  %i.ag = sub i64 0, %i.aa
  %i.ah = select i1 %i.af, i64 %i.ag, i64 %i.aa
  %i.ai = add i64 %i.ah, %i.r
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !169 ; 2 uses
  br i1 %.not.i, label %FT_MulDiv.exit35, label %bb.e

bb.e:                                             ; preds = %FT_MulDiv.exit27
  %.022.i29 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i30 = tail call i64 @llvm.abs.i64(i64 %i.ak, i1 false)
  %spec.select.i31 = tail call i64 @llvm.abs.i64(i64 %i.d, i1 false)
  %i.al = mul i64 %.023.i30, %spec.select.i31
  %i.am = lshr exact i64 %.022.i29, 1
  %i.an = add i64 %i.al, %i.am
  %i.ao = udiv i64 %i.an, %.022.i29
  br label %FT_MulDiv.exit35

FT_MulDiv.exit35:                                 ; preds = %FT_MulDiv.exit27, %bb.e
  %i.ap = phi i64 [ %i.ao, %bb.e ], [ 2147483647, %FT_MulDiv.exit27 ] ; 2 uses
  %i.aq = icmp slt i64 %i.ak, 0
  %.1.i33 = select i1 %i.aq, i32 %i.n, i32 %spec.select30.i ; 2 uses
  %i.ar = sub nsw i32 0, %.1.i33
  %.2.i34 = select i1 %i.k, i32 %i.ar, i32 %.1.i33
  %i.as = icmp slt i32 %.2.i34, 0
  %i.at = sub i64 0, %i.ap
  %i.au = select i1 %i.as, i64 %i.at, i64 %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !170 ; 2 uses
  br i1 %.not.i, label %FT_MulDiv.exit43, label %bb.f

bb.f:                                             ; preds = %FT_MulDiv.exit35
  %.022.i37 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 2 uses
  %.023.i38 = tail call i64 @llvm.abs.i64(i64 %i.aw, i1 false)
  %spec.select.i39 = tail call i64 @llvm.abs.i64(i64 %i.t, i1 false)
  %i.ax = mul i64 %.023.i38, %spec.select.i39
  %i.ay = lshr exact i64 %.022.i37, 1
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = udiv i64 %i.az, %.022.i37
  br label %FT_MulDiv.exit43

FT_MulDiv.exit43:                                 ; preds = %FT_MulDiv.exit35, %bb.f
  %i.bb = phi i64 [ %i.ba, %bb.f ], [ 2147483647, %FT_MulDiv.exit35 ] ; 2 uses
  %i.bc = icmp slt i64 %i.aw, 0
  %.1.i41 = select i1 %i.bc, i32 %i.ad, i32 %spec.select30.i24 ; 2 uses
  %i.bd = sub nsw i32 0, %.1.i41
  %.2.i42 = select i1 %i.k, i32 %i.bd, i32 %.1.i41
  %i.be = icmp slt i32 %.2.i42, 0
  %i.bf = sub i64 0, %i.bb
  %i.bg = select i1 %i.be, i64 %i.bf, i64 %i.bb
  %i.bh = add i64 %i.bg, %i.au
  store i64 %i.ai, ptr %0, align 8, !tbaa !165
  store i64 %i.bh, ptr %i.s, align 8, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %FT_MulDiv.exit43
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @FT_Vector_NormLen(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !167
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp slt i32 %i.b, 0                     ; 2 uses
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false) ; 6 uses
  %spec.select103 = select i1 %i.f, i64 -65536, i64 65536
  %i.g = icmp slt i32 %i.e, 0                     ; 2 uses
  %.087 = tail call i32 @llvm.abs.i32(i32 %i.e, i1 false) ; 6 uses
  %.0 = select i1 %i.g, i64 -65536, i64 65536
  %i.h = icmp eq i32 %i.b, 0
  %.not102 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not102, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %.0, ptr %i.c, align 8, !tbaa !167
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  br i1 %.not102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %spec.select103, ptr %0, align 8, !tbaa !165
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.i = icmp ugt i32 %spec.select, %.087
  %i.j = lshr i32 %.087, 1
  %i.k = add nuw i32 %i.j, %spec.select
  %i.l = lshr i32 %spec.select, 1
  %i.m = add nuw i32 %.087, %i.l
  %i.n = select i1 %i.i, i32 %i.k, i32 %i.m       ; 3 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.n, i1 true) ; 2 uses
  %i.p = zext i32 %i.n to i64
  %i.q = zext nneg i32 %i.o to i64
  %i.r = lshr i64 2863311530, %i.q
  %.not = icmp samesign ugt i64 %i.r, %i.p
  %.neg = select i1 %.not, i32 -15, i32 -16
  %i.s = add nsw i32 %.neg, %i.o                  ; 7 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = shl i32 %spec.select, %i.s               ; 4 uses
  %i.v = shl i32 %.087, %i.s                      ; 4 uses
  %i.w = icmp ugt i32 %i.u, %i.v
  %i.x = lshr i32 %i.v, 1
  %i.y = add i32 %i.x, %i.u
  %i.z = lshr i32 %i.u, 1
  %i.aa = add i32 %i.z, %i.v
  %i.ab = select i1 %i.w, i32 %i.y, i32 %i.aa
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nsw i32 0, %i.s                     ; 3 uses
  %i.ad = lshr i32 %spec.select, %i.ac
  %i.ae = lshr i32 %.087, %i.ac
  %i.af = lshr i32 %i.n, %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.190 = phi i32 [ %i.u, %bb.g ], [ %i.ad, %bb.h ] ; 3 uses
  %.188 = phi i32 [ %i.v, %bb.g ], [ %i.ae, %bb.h ] ; 3 uses
  %.085 = phi i32 [ %i.ab, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = sub nsw i32 65536, %.085
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.091 = phi i32 [ %i.ag, %bb.i ], [ %i.av, %bb.j ] ; 4 uses
  %i.ah = mul nsw i32 %.091, %.190
  %i.ai = ashr i32 %i.ah, 16
  %i.aj = add nsw i32 %i.ai, %.190                ; 4 uses
  %i.ak = mul nsw i32 %.091, %.188
  %i.al = ashr i32 %i.ak, 16
  %i.am = add nsw i32 %i.al, %.188                ; 4 uses
  %i.an = mul i32 %i.aj, %i.aj
  %i.ao = mul i32 %i.am, %i.am
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = sdiv i32 %i.ap, -512
  %i.ar = add nsw i32 %.091, 65536
  %i.as = ashr i32 %i.ar, 8
  %i.at = mul nsw i32 %i.aq, %i.as                ; 2 uses
  %i.au = lshr i32 %i.at, 16
  %i.av = add nsw i32 %i.au, %.091
  %i.aw = icmp sgt i32 %i.at, 65535
  br i1 %i.aw, label %bb.j, label %bb.k, !llvm.loop !173

bb.k:                                             ; preds = %bb.j
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = select i1 %i.f, i64 %i.ay, i64 %i.ax
  store i64 %i.az, ptr %0, align 8, !tbaa !165
  %i.ba = zext i32 %i.am to i64                   ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = select i1 %i.g, i64 %i.bb, i64 %i.ba
  store i64 %i.bc, ptr %i.c, align 8, !tbaa !167
  %i.bd = mul i32 %i.aj, %.190
  %i.be = mul i32 %i.am, %.188
  %i.bf = add i32 %i.bd, %i.be
  %i.bg = sdiv i32 %i.bf, 65536
  %i.bh = add nsw i32 %i.bg, 65536                ; 2 uses
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = add nsw i32 %i.s, -1
  %i.bj = shl nuw nsw i32 1, %i.bi
  %i.bk = add nuw nsw i32 %i.bh, %i.bj
  %i.bl = lshr i32 %i.bk, %i.s
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bm = sub nsw i32 0, %i.s
  %i.bn = shl i32 %i.bh, %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.c, %bb.e
  %.086 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.e ], [ %.087, %bb.c ], [ %i.bl, %bb.l ], [ %i.bn, %bb.m ]
  ret i32 %.086
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 -1, 2) i32 @ft_corner_orientation(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = mul i64 %3, %0
  %i.b = mul i64 %2, %1
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %.lobit.neg = ashr i64 %i.c, 63
  %.neg = trunc nsw i64 %.lobit.neg to i32
  %i.f = add nsw i32 %.neg, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @ft_corner_is_flat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i64 %2, %0
  %i.b = add nsw i64 %3, %1
  %i.c = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 2 uses
  %i.d = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 2 uses
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %.74 = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.d)
  %i.e = mul nuw nsw i64 %., 3
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, %.74
  %i.h = tail call i64 @llvm.abs.i64(i64 %2, i1 true) ; 2 uses
  %i.i = tail call i64 @llvm.abs.i64(i64 %3, i1 true) ; 2 uses
  %.sink69 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.i)
  %.sink67 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = mul nuw nsw i64 %.sink69, 3
  %i.k = lshr i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, %.sink67
  %i.m = tail call i64 @llvm.abs.i64(i64 %i.a, i1 true) ; 2 uses
  %i.n = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %.sink73 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n)
  %.sink71 = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.o = mul nuw nsw i64 %.sink73, 3
  %i.p = lshr i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, %.sink71           ; 2 uses
  %i.r = add nuw nsw i64 %i.l, %i.g
  %i.s = sub nsw i64 %i.r, %i.q
  %i.t = lshr i64 %i.q, 4
  %i.u = icmp slt i64 %i.s, %i.t
  %i.v = zext i1 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @FT_MulAddFix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.a = icmp ult i32 %2, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
end_hunk_0
