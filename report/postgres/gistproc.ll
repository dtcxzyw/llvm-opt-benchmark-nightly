inline.NumInlined: 243
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@computeDistance:bb.a
  %.2 = select i1 %i.cs, double %i.cr, double %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.aa, %bb.b
  %.3 = phi double [ %i.e, %bb.b ], [ %.2, %bb.aa ], [ 0.000000e+00, %bb.f ], [ %i.y, %bb.h ], [ %i.aj, %bb.l ], [ %i.bd, %bb.s ], [ %i.af, %bb.j ], [ %i.y, %bb.i ], [ %i.aq, %bb.n ], [ %i.aj, %bb.m ], [ %i.bk, %bb.u ], [ %i.bd, %bb.t ], [ %i.bu, %bb.y ], [ %i.bn, %bb.x ], [ %i.bn, %bb.w ]
  ret double %.3
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_box_distance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i16
  %cond.i = icmp ult i16 %i.c, 20
  br i1 %cond.i, label %gist_bbox_distance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = and i32 %i.d, 65535
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.e) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1495, ptr noundef nonnull @__func__.gist_bbox_distance) #13
  unreachable

gist_bbox_distance.exit:                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = inttoptr i64 %i.i to ptr
  %i.p = tail call fastcc double @computeDistance(i1 noundef zeroext false, ptr noundef %i.n, ptr noundef %i.o)
  %i.q = bitcast double %i.p to i64
  ret i64 %i.q
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_circle_distance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i16
  %cond.i = icmp ult i16 %i.c, 20
  br i1 %cond.i, label %gist_bbox_distance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = and i32 %i.d, 65535
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.e) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1495, ptr noundef nonnull @__func__.gist_bbox_distance) #13
  unreachable

gist_bbox_distance.exit:                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = tail call fastcc double @computeDistance(i1 noundef zeroext false, ptr noundef %i.q, ptr noundef %i.r)
  store i8 1, ptr %i.j, align 1
  %i.t = bitcast double %i.s to i64
  ret i64 %i.t
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_poly_distance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i16
  %cond.i = icmp ult i16 %i.c, 20
  br i1 %cond.i, label %gist_bbox_distance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = and i32 %i.d, 65535
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.e) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1495, ptr noundef nonnull @__func__.gist_bbox_distance) #13
  unreachable

gist_bbox_distance.exit:                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = tail call fastcc double @computeDistance(i1 noundef zeroext false, ptr noundef %i.q, ptr noundef %i.r)
  store i8 1, ptr %i.j, align 1
  %i.t = bitcast double %i.s to i64
  ret i64 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @gist_point_sortsupport(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !15, !noundef !16
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @gist_bbox_zorder_abbrev_convert, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @gist_bbox_zorder_abbrev_abort, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @gist_bbox_zorder_cmp, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %gist_bbox_zorder_cmp.sink = phi ptr [ @ssup_datum_unsigned_cmp, %bb.b ], [ @gist_bbox_zorder_cmp, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %gist_bbox_zorder_cmp.sink, ptr %i.j, align 8
  ret i64 0
}

declare i32 @ssup_datum_unsigned_cmp(i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @gist_bbox_zorder_abbrev_convert(i64 noundef %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load double, ptr %i.b, align 8           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = fptrunc double %i.e to float             ; 2 uses
  %i.g = fcmp uno double %i.c, 0.000000e+00
  br i1 %i.g, label %ieee_float32_to_uint32.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fptrunc double %i.c to float             ; 2 uses
  %i.i = bitcast float %i.h to i32                ; 2 uses
  %i.j = xor i32 %i.i, -1
  %i.k = fneg float %i.h
  %i.l = bitcast float %i.k to i32
  %.not5.i.i = icmp slt i32 %i.i, 0
  %.sroa.0.0.i.i = select i1 %.not5.i.i, i32 %i.j, i32 %i.l
  %i.m = zext i32 %.sroa.0.0.i.i to i64
  br label %ieee_float32_to_uint32.exit.i

ieee_float32_to_uint32.exit.i:                    ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ %i.m, %bb.b ], [ 4294967295, %bb.a ] ; 2 uses
  %i.n = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.n, label %point_zorder_internal.exit, label %bb.c

bb.c:                                             ; preds = %ieee_float32_to_uint32.exit.i
  %i.o = bitcast float %i.f to i32                ; 2 uses
  %i.p = xor i32 %i.o, -1
  %i.q = fneg float %i.f
  %i.r = bitcast float %i.q to i32
  %.not5.i3.i = icmp slt i32 %i.o, 0
  %.sroa.0.0.i4.i = select i1 %.not5.i3.i, i32 %i.p, i32 %i.r
  %i.s = zext i32 %.sroa.0.0.i4.i to i64
  br label %point_zorder_internal.exit

point_zorder_internal.exit:                       ; preds = %ieee_float32_to_uint32.exit.i, %bb.c
  %.0.i5.i = phi i64 [ %i.s, %bb.c ], [ 4294967295, %ieee_float32_to_uint32.exit.i ] ; 2 uses
  %i.t = shl nuw nsw i64 %.0.i.i, 16
  %i.u = or i64 %i.t, %.0.i.i
  %i.v = shl nuw nsw i64 %.0.i5.i, 16
  %i.w = or i64 %i.v, %.0.i5.i
  %i.x = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.y = insertelement <2 x i64> %i.x, i64 %i.u, i64 1
  %i.z = and <2 x i64> %i.y, splat (i64 281470681808895) ; 2 uses
  %i.aa = shl nuw nsw <2 x i64> %i.z, splat (i64 8)
  %i.ab = or <2 x i64> %i.aa, %i.z
  %i.ac = and <2 x i64> %i.ab, splat (i64 71777214294589695) ; 2 uses
  %i.ad = shl nuw nsw <2 x i64> %i.ac, splat (i64 4)
  %i.ae = or <2 x i64> %i.ad, %i.ac
  %i.af = and <2 x i64> %i.ae, splat (i64 1085102592571150095) ; 2 uses
  %i.ag = shl nuw nsw <2 x i64> %i.af, splat (i64 2)
  %i.ah = or <2 x i64> %i.ag, %i.af
  %i.ai = and <2 x i64> %i.ah, splat (i64 3689348814741910323) ; 3 uses
  %i.aj = shl nuw <2 x i64> %i.ai, <i64 2, i64 1>
  %i.ak = extractelement <2 x i64> %i.ai, i64 0
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = insertelement <2 x i64> %i.ai, i64 %i.al, i64 0
  %i.an = or <2 x i64> %i.aj, %i.am
  %i.ao = and <2 x i64> %i.an, <i64 -6148914691236517206, i64 6148914691236517205> ; 2 uses
  %shift = shufflevector <2 x i64> %i.ao, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i64> %i.ao, %shift
  %2 = extractelement <2 x i64> %foldExtExtBinop, i64 0
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @gist_bbox_zorder_abbrev_abort(i32 %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @gist_bbox_zorder_cmp(i64 noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #8 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load double, ptr %i.b, align 8           ; 3 uses
  %i.f = load double, ptr %i.d, align 8           ; 3 uses
  %i.g = fcmp oeq double %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load double, ptr %i.h, align 8           ; 3 uses
  br i1 %i.g, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp oeq double %i.i, %i.k
  br i1 %i.l, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.m = fptrunc double %i.i to float             ; 2 uses
  %i.n = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.n, label %ieee_float32_to_uint32.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = fptrunc double %i.e to float             ; 2 uses
  %i.p = bitcast float %i.o to i32                ; 2 uses
  %i.q = xor i32 %i.p, -1
  %i.r = fneg float %i.o
  %i.s = bitcast float %i.r to i32
  %.not5.i.i = icmp slt i32 %i.p, 0
  %.sroa.0.0.i.i = select i1 %.not5.i.i, i32 %i.q, i32 %i.s
  %i.t = zext i32 %.sroa.0.0.i.i to i64
  br label %ieee_float32_to_uint32.exit.i

ieee_float32_to_uint32.exit.i:                    ; preds = %bb.c, %._crit_edge
  %.0.i.i = phi i64 [ %i.t, %bb.c ], [ 4294967295, %._crit_edge ] ; 2 uses
  %i.u = fcmp uno double %i.i, 0.000000e+00
  br i1 %i.u, label %point_zorder_internal.exit, label %bb.d

bb.d:                                             ; preds = %ieee_float32_to_uint32.exit.i
  %i.v = bitcast float %i.m to i32                ; 2 uses
  %i.w = xor i32 %i.v, -1
  %i.x = fneg float %i.m
  %i.y = bitcast float %i.x to i32
  %.not5.i3.i = icmp slt i32 %i.v, 0
  %.sroa.0.0.i4.i = select i1 %.not5.i3.i, i32 %i.w, i32 %i.y
  %i.z = zext i32 %.sroa.0.0.i4.i to i64
  br label %point_zorder_internal.exit

point_zorder_internal.exit:                       ; preds = %ieee_float32_to_uint32.exit.i, %bb.d
  %.0.i5.i = phi i64 [ %i.z, %bb.d ], [ 4294967295, %ieee_float32_to_uint32.exit.i ] ; 2 uses
  %i.aa = shl nuw nsw i64 %.0.i.i, 16
  %i.ab = or i64 %i.aa, %.0.i.i
  %i.ac = shl nuw nsw i64 %.0.i5.i, 16
  %i.ad = or i64 %i.ac, %.0.i5.i
  %i.ae = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ad, i64 1
  %i.ag = and <2 x i64> %i.af, splat (i64 281470681808895) ; 2 uses
  %i.ah = shl nuw nsw <2 x i64> %i.ag, splat (i64 8)
  %i.ai = or <2 x i64> %i.ah, %i.ag
  %i.aj = and <2 x i64> %i.ai, splat (i64 71777214294589695) ; 2 uses
  %i.ak = shl nuw nsw <2 x i64> %i.aj, splat (i64 4)
  %i.al = or <2 x i64> %i.ak, %i.aj
  %i.am = and <2 x i64> %i.al, splat (i64 1085102592571150095) ; 2 uses
  %i.an = shl nuw nsw <2 x i64> %i.am, splat (i64 2)
  %i.ao = or <2 x i64> %i.an, %i.am
  %i.ap = and <2 x i64> %i.ao, splat (i64 3689348814741910323) ; 3 uses
  %i.aq = extractelement <2 x i64> %i.ap, i64 1
  %i.ar = shl nuw i64 %i.aq, 2
  %i.as = shl nuw nsw <2 x i64> %i.ap, splat (i64 1)
  %i.at = insertelement <2 x i64> %i.ap, i64 %i.ar, i64 1
  %i.au = or <2 x i64> %i.as, %i.at
  %i.av = and <2 x i64> %i.au, <i64 6148914691236517205, i64 -6148914691236517206> ; 2 uses
  %shift = shufflevector <2 x i64> %i.av, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i64> %shift, %i.av
  %3 = extractelement <2 x i64> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fptrunc double %i.ax to float           ; 2 uses
  %i.az = fcmp uno double %i.f, 0.000000e+00
  br i1 %i.az, label %ieee_float32_to_uint32.exit.i18, label %bb.e

bb.e:                                             ; preds = %point_zorder_internal.exit
  %i.ba = fptrunc double %i.f to float            ; 2 uses
  %i.bb = bitcast float %i.ba to i32              ; 2 uses
  %i.bc = xor i32 %i.bb, -1
  %i.bd = fneg float %i.ba
  %i.be = bitcast float %i.bd to i32
  %.not5.i.i16 = icmp slt i32 %i.bb, 0
  %.sroa.0.0.i.i17 = select i1 %.not5.i.i16, i32 %i.bc, i32 %i.be
  %i.bf = zext i32 %.sroa.0.0.i.i17 to i64
  br label %ieee_float32_to_uint32.exit.i18

ieee_float32_to_uint32.exit.i18:                  ; preds = %bb.e, %point_zorder_internal.exit
  %.0.i.i19 = phi i64 [ %i.bf, %bb.e ], [ 4294967295, %point_zorder_internal.exit ] ; 2 uses
  %i.bg = fcmp uno double %i.ax, 0.000000e+00
  br i1 %i.bg, label %point_zorder_internal.exit23, label %bb.f

bb.f:                                             ; preds = %ieee_float32_to_uint32.exit.i18
  %i.bh = bitcast float %i.ay to i32              ; 2 uses
  %i.bi = xor i32 %i.bh, -1
  %i.bj = fneg float %i.ay
  %i.bk = bitcast float %i.bj to i32
  %.not5.i3.i20 = icmp slt i32 %i.bh, 0
  %.sroa.0.0.i4.i21 = select i1 %.not5.i3.i20, i32 %i.bi, i32 %i.bk
  %i.bl = zext i32 %.sroa.0.0.i4.i21 to i64
  br label %point_zorder_internal.exit23

point_zorder_internal.exit23:                     ; preds = %ieee_float32_to_uint32.exit.i18, %bb.f
  %.0.i5.i22 = phi i64 [ %i.bl, %bb.f ], [ 4294967295, %ieee_float32_to_uint32.exit.i18 ] ; 2 uses
  %i.bm = shl nuw nsw i64 %.0.i.i19, 16
  %i.bn = or i64 %i.bm, %.0.i.i19
  %i.bo = shl nuw nsw i64 %.0.i5.i22, 16
  %i.bp = or i64 %i.bo, %.0.i5.i22
  %i.bq = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %i.br = insertelement <2 x i64> %i.bq, i64 %i.bn, i64 1
  %i.bs = and <2 x i64> %i.br, splat (i64 281470681808895) ; 2 uses
  %i.bt = shl nuw nsw <2 x i64> %i.bs, splat (i64 8)
  %i.bu = or <2 x i64> %i.bt, %i.bs
  %i.bv = and <2 x i64> %i.bu, splat (i64 71777214294589695) ; 2 uses
  %i.bw = shl nuw nsw <2 x i64> %i.bv, splat (i64 4)
  %i.bx = or <2 x i64> %i.bw, %i.bv
  %i.by = and <2 x i64> %i.bx, splat (i64 1085102592571150095) ; 2 uses
  %i.bz = shl nuw nsw <2 x i64> %i.by, splat (i64 2)
  %i.ca = or <2 x i64> %i.bz, %i.by
  %i.cb = and <2 x i64> %i.ca, splat (i64 3689348814741910323) ; 3 uses
  %i.cc = shl nuw <2 x i64> %i.cb, <i64 2, i64 1>
  %i.cd = extractelement <2 x i64> %i.cb, i64 0
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = insertelement <2 x i64> %i.cb, i64 %i.ce, i64 0
  %i.cg = or <2 x i64> %i.cc, %i.cf
  %i.ch = and <2 x i64> %i.cg, <i64 -6148914691236517206, i64 6148914691236517205> ; 2 uses
  %shift30 = shufflevector <2 x i64> %i.ch, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop31 = or disjoint <2 x i64> %i.ch, %shift30
  %4 = extractelement <2 x i64> %foldExtExtBinop31, i64 0 ; 2 uses
  %i.ci = icmp ugt i64 %3, %4
  br i1 %i.ci, label %bb.h, label %bb.g

bb.g:                                             ; preds = %point_zorder_internal.exit23
  %i.cj = icmp ult i64 %3, %4
  %. = sext i1 %i.cj to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %point_zorder_internal.exit23, %bb.b
  %.0 = phi i32 [ 1, %point_zorder_internal.exit23 ], [ 0, %bb.b ], [ %., %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc double @size_box(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8           ; 4 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00
  %i.e = fcmp ole double %i.a, %i.c
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %float8_mul.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load double, ptr %i.i, align 8           ; 4 uses
  %i.k = fcmp uno double %i.j, 0.000000e+00
  %i.l = fcmp ole double %i.h, %i.j
  %i.m = or i1 %i.k, %i.l
  br i1 %i.m, label %float8_mul.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond = fcmp uno double %i.a, %i.h
  br i1 %or.cond, label %float8_mul.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = fsub double %i.a, %i.c                   ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp oeq double %i.o, +inf
  br i1 %i.p, label %bb.e, label %float8_mi.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.q = tail call double @llvm.fabs.f64(double %i.a)
  %i.r = fcmp oeq double %i.q, +inf
  %i.s = tail call double @llvm.fabs.f64(double %i.c)
  %i.t = fcmp oeq double %i.s, +inf
  %or.cond.i.i = or i1 %i.r, %i.t
  br i1 %or.cond.i.i, label %float8_mi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call double @float_overflow_error_ext(ptr noundef null) #13
  %.pre = load double, ptr %i.g, align 8
  %.pre16 = load double, ptr %i.i, align 8
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %bb.d, %bb.e, %bb.f
  %i.v = phi double [ %.pre16, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.w = phi double [ %.pre, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %.0.i.i = phi double [ %i.u, %bb.f ], [ %i.n, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.x = fsub double %i.w, %i.v                   ; 3 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp oeq double %i.y, +inf
  br i1 %i.z, label %bb.g, label %float8_mi.exit13, !prof !6

bb.g:                                             ; preds = %float8_mi.exit
  %i.aa = tail call double @llvm.fabs.f64(double %i.w)
  %i.ab = fcmp oeq double %i.aa, +inf
  %i.ac = tail call double @llvm.fabs.f64(double %i.v)
  %i.ad = fcmp oeq double %i.ac, +inf
  %or.cond.i.i12 = or i1 %i.ab, %i.ad
  br i1 %or.cond.i.i12, label %float8_mi.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mi.exit13

float8_mi.exit13:                                 ; preds = %float8_mi.exit, %bb.g, %bb.h
  %.0.i.i11 = phi double [ %i.ae, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %float8_mi.exit ] ; 3 uses
  %i.af = fmul double %.0.i.i, %.0.i.i11          ; 4 uses
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp oeq double %i.ag, +inf
  br i1 %i.ah, label %bb.i, label %bb.k, !prof !6

bb.i:                                             ; preds = %float8_mi.exit13
  %i.ai = tail call double @llvm.fabs.f64(double %.0.i.i)
  %i.aj = fcmp oeq double %i.ai, +inf
  %i.ak = tail call double @llvm.fabs.f64(double %.0.i.i11)
  %i.al = fcmp oeq double %i.ak, +inf
  %or.cond14.i.i = or i1 %i.aj, %i.al
  br i1 %or.cond14.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mul.exit

bb.k:                                             ; preds = %bb.i, %float8_mi.exit13
  %i.an = fcmp oeq double %i.af, 0.000000e+00
  br i1 %i.an, label %bb.l, label %float8_mul.exit, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.ao = fcmp une double %.0.i.i, 0.000000e+00
  %i.ap = fcmp une double %.0.i.i11, 0.000000e+00
  %or.cond.i.i15 = and i1 %i.ao, %i.ap
  br i1 %or.cond.i.i15, label %bb.m, label %float8_mul.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call double @float_underflow_error_ext(ptr noundef null) #13
  br label %float8_mul.exit

float8_mul.exit:                                  ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.c, %bb.a, %bb.b
  %.0 = phi double [ +inf, %bb.c ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %i.af, %bb.k ], [ %i.aq, %bb.m ], [ %i.am, %bb.j ], [ %i.af, %bb.l ]
  ret double %.0
}

declare double @float_overflow_error_ext(ptr noundef) local_unnamed_addr #2

declare double @float_underflow_error_ext(ptr noundef) local_unnamed_addr #2

declare i32 @float8_cmp_internal(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @float_zero_divide_error() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @float_overflow_error() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @float_underflow_error() local_unnamed_addr #10

declare double @float_zero_divide_error_ext(ptr noundef) local_unnamed_addr #2

declare i64 @box_left(ptr noundef) #2

declare i64 @box_overleft(ptr noundef) #2

declare i64 @box_overlap(ptr noundef) #2

declare i64 @box_overright(ptr noundef) #2

declare i64 @box_right(ptr noundef) #2

declare i64 @box_same(ptr noundef) #2

declare i64 @box_contain(ptr noundef) #2

declare i64 @box_contained(ptr noundef) #2

declare i64 @box_overbelow(ptr noundef) #2

declare i64 @box_below(ptr noundef) #2

declare i64 @box_above(ptr noundef) #2

declare i64 @box_overabove(ptr noundef) #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare i64 @point_distance(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = distinct !{!7, !5, !8}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
end_hunk_0
