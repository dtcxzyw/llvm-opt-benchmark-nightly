inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 42
  %2 = add i32 %i.ai, 2
  %i.ap = add i32 %2, %i.ah
  br label %bb.e

end_hunk_0
begin_hunk_1_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  %exitcond.peel.not = icmp eq i64 %..i55, 1
  br i1 %exitcond.peel.not, label %._crit_edge212, label %.lr.ph211.peel.next

._crit_edge212.loopexit.loopexit:                 ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57
  %3 = sub i32 -3, %.1
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel, %._crit_edge212.loopexit.loopexit, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.050.lcssa = phi i32 [ -1, %_ZN4llvh11raw_ostreamlsEPKc.exit ], [ -3, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel ], [ %3, %._crit_edge212.loopexit.loopexit ]
  %i.ek = load i8, ptr %i.ao, align 2, !tbaa !103, !range !80, !noundef !81
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ab, label %_ZN4llvh11raw_ostreamlsEc.exit
end_hunk_1
begin_hunk_2_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit57

_ZN4llvh11raw_ostreamlsEPKc.exit57:               ; preds = %bb.aa, %bb.z, %.lr.ph211.peel.next
  %.1 = phi i32 [ %i.eq, %bb.aa ], [ %.050210, %.lr.ph211.peel.next ], [ %i.eq, %bb.z ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0150.0224, i64 %.052209
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !24
  %i.ez = zext i8 %i.ey to i64
  call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.ez, i32 noundef %not., i64 2, i8 1) #27
  %i.fa = add nuw nsw i64 %.052209, 1             ; 2 uses
  %i.fb = add i32 %.1, 2
  %exitcond.not = icmp eq i64 %i.fa, %..i55
  br i1 %exitcond.not, label %._crit_edge212.loopexit.loopexit, label %.lr.ph211.peel.next, !llvm.loop !104

bb.ab:                                            ; preds = %._crit_edge212
  %4 = add i32 %i.ap, %.050.lcssa                 ; 3 uses
  %i.fc = icmp ult i32 %4, 80
  br i1 %i.fc, label %bb.ac, label %.preheader.i.i58

bb.ac:                                            ; preds = %bb.ab
  %i.fd = zext nneg i32 %4 to i64
  %i.fe = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.fd) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit62

.preheader.i.i58:                                 ; preds = %bb.ab, %_ZN4llvh11raw_ostream5writeEPKcm.exit135
  %.01112.i.i59 = phi i32 [ %i.id, %_ZN4llvh11raw_ostream5writeEPKcm.exit135 ], [ %4, %bb.ab ] ; 2 uses
  %.sroa.speculated.i.i60 = call i32 @llvm.umin.i32(i32 %.01112.i.i59, i32 79) ; 2 uses
  %i.ff = zext nneg i32 %.sroa.speculated.i.i60 to i64 ; 3 uses
  %i.fg = load ptr, ptr %i.ak, align 8, !tbaa !17
end_hunk_2
