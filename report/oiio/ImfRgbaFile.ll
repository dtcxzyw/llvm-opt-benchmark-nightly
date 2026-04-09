inline.NumInlined: 405
inline.NumDeleted: 157
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi:bb.a

bb.k:                                             ; preds = %.thread
  %i.am = sub i32 0, %i.q                         ; 2 uses
  %3 = add nsw i32 %1, -14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.am, i32 29)
  %umin114 = zext nneg i32 %i.au to i64
  %4 = sext i32 %3 to i64
  br label %bb.l

.lr.ph105:                                        ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi:bb.a
bb.l:                                             ; preds = %bb.k, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit
  %indvars.iv115 = phi i64 [ %umin114, %bb.k ], [ %indvars.iv.next116, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit ] ; 2 uses
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1 ; 3 uses
  %5 = add nsw i64 %indvars.iv.next116, %4        ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next116
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38 ; 2 uses
  %i.bb = load i32, ptr %i.ao, align 8, !tbaa !124 ; 2 uses
  %6 = sext i32 %i.bb to i64
  %i.bc = icmp slt i64 %5, %6
  %i.bd = load i32, ptr %i.ap, align 4            ; 2 uses
  %7 = sext i32 %i.bd to i64
  %i.be = icmp sgt i64 %5, %7
  %i.bf = add nsw i32 %i.bd, -1
  %8 = trunc nsw i64 %5 to i32
  %spec.select.i = select i1 %i.be, i32 %i.bf, i32 %8
  %.010.i = select i1 %i.bc, i32 %i.bb, i32 %spec.select.i ; 2 uses
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !127, !nonnull !27, !align !28
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i32 noundef %.010.i)
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca10readPixelsEi:bb.a
  br label %bb.aa

bb.v:                                             ; preds = %.lr.ph, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit69
  %indvars.iv = phi i64 [ %umin, %.lr.ph ], [ %indvars.iv.next, %_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit69 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ea = sub i32 %1, %i.dz
  %i.eb = add i32 %i.ea, 15                       ; 3 uses
  %i.ec = sub nsw i64 29, %indvars.iv
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !38 ; 2 uses
end_hunk_3
