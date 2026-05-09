inline.NumInlined: 46
inline.NumDeleted: 15
begin_hunk_0_@ucnv_MBCSGetFilteredUnicodeSetForUnicode_78:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0                      ; 2 uses
  %. = select i1 %.not, i32 64, i32 1088          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
end_hunk_0
begin_hunk_1_@ucnv_MBCSGetFilteredUnicodeSetForUnicode_78:bb.a

bb.o:                                             ; preds = %bb.l, %bb.l, %bb.n, %bb.m
  %.0146 = phi i32 [ 2, %bb.n ], [ 4, %bb.m ], [ 3, %bb.l ], [ 3, %bb.l ] ; 3 uses
  %5 = select i1 %.not, i32 32, i32 544
  %i.ag = shl nuw nsw i32 %.0146, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.ai = zext nneg i32 %.0146 to i64
end_hunk_1
begin_hunk_2_@ucnv_MBCSFromUnicodeWithOffsets_78:bb.a
  %.3103.i = phi i32 [ %i.di, %bb.n ], [ %i.bu, %bb.j ] ; 2 uses
  %.298.i = phi i32 [ %.197.i, %bb.n ], [ %.096.ph.i, %bb.j ] ; 4 uses
  %.2.i = phi ptr [ %.191.i, %bb.n ], [ %.090.ph.i, %bb.j ]
  %i.dm = icmp ult i32 %.3103.i, 65536            ; 2 uses
  %i.dn = select i1 %i.dm, i32 1, i32 2           ; 2 uses
  %i.do = load ptr, ptr %i.i, align 8
  %.not117.i = icmp eq ptr %i.do, null
  br i1 %.not117.i, label %.loopexit132.i, label %bb.s
end_hunk_2
begin_hunk_3_@ucnv_MBCSFromUnicodeWithOffsets_78:bb.a
  br i1 %i.dv, label %.lr.ph.i.preheader, label %.loopexit132.i

.lr.ph.i.preheader:                               ; preds = %bb.s
  %2 = select i1 %i.dm, i32 -2, i32 -3
  %3 = add i32 %2, %i.dt
  %xtraiter = and i32 %i.du, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol
end_hunk_3
begin_hunk_4_@ucnv_MBCSFromUnicodeWithOffsets_78:bb.a
  %.088135.i.unr = phi i32 [ %i.du, %.lr.ph.i.preheader ], [ %i.dz, %.lr.ph.i.prol ]
  %.399134.i.unr = phi i32 [ %.298.i, %.lr.ph.i.preheader ], [ %i.dw, %.lr.ph.i.prol ]
  %.lcssa801.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.dw, %.lr.ph.i.prol ]
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %.loopexit132.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.088135.i = phi i32 [ %i.em, %.lr.ph.i ], [ %.088135.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode:bb.a
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.lq = load i8, ptr %i.lp, align 1
  %i.lr = and i8 %i.lq, 1
  %.not198 = icmp eq i8 %i.lr, 0                  ; 4 uses
  %i.ls = load i32, ptr %i.hy, align 4
  %i.lt = load i32, ptr %i.ht, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.lv = load i32, ptr %i.lu, align 4            ; 3 uses
  %6 = select i1 %.not198, i32 128, i32 2176      ; 2 uses
  %i.lw = shl i32 %i.lv, 2
  %i.lx = add i32 %i.lw, %6
  %i.ly = load i32, ptr %i.if, align 8
  %i.lz = add i32 %i.lx, %i.ly
  %i.ma = zext i32 %i.lz to i64                   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode:bb.a
  br label %_ZL16reconstituteDataP19UConverterMBCSTablejjjP10UErrorCode.exit

bb.ax:                                            ; preds = %bb.av
  %.neg = select i1 %.not198, i32 -32, i32 -544
  %i.me = sub i32 %i.ls, %i.lt
  %i.mf = lshr i32 %i.me, 2
  %7 = add nsw i32 %i.mf, %.neg                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mb, i8 0, i64 %i.ma, i1 false)
  %i.mg = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.mh = zext nneg i32 %6 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.mb, ptr noundef nonnull align 2 dereferenceable(1) %i.mg, i64 %i.mh, i1 false)
  %8 = select i1 %.not198, i64 64, i64 1088       ; 2 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.mb, i64 %8 ; 2 uses
  %i.mj = sub i32 %i.lv, %7
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %8
  %i.mn = shl i32 %7, 2
  %i.mo = zext i32 %i.mn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ml, ptr nonnull align 2 %i.mm, i64 %i.mo, i1 false)
  store ptr %i.mb, ptr %i.hx, align 8
end_hunk_6
begin_hunk_7_@_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode:bb.a
  br i1 %.not70.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ax
  %9 = select i1 %.not198, i32 32, i32 544
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.mx = add nsw i32 %i.mv, -1
  %i.my = lshr i32 %i.mx, 4
end_hunk_7
begin_hunk_8_@_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode:bb.a
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mb, i64 %indvars.iv.i
  %i.nb = load i16, ptr %i.na, align 2            ; 2 uses
  %i.nc = zext i16 %i.nb to i32
  %.not.i = icmp eq i32 %9, %i.nc
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ay
end_hunk_8
