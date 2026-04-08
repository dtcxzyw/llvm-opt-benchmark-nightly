inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE:bb.a
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %.01112.i.i, i32 79) ; 2 uses
  %i.aj = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ak = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.aj) ; 0 uses
  %i.al = sub nuw i32 %.01112.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %.preheader.i.i, !llvm.loop !67

end_hunk_0
begin_hunk_1_@_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE:bb.a
  %.sroa.speculated.i.i27 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i26, i32 79) ; 2 uses
  %i.aq = zext nneg i32 %.sroa.speculated.i.i27 to i64
  %i.ar = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.aq) ; 0 uses
  %i.as = sub nuw i32 %.01112.i.i26, %.sroa.speculated.i.i27 ; 2 uses
  %.not.i.i28 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i28, label %_ZN4llvh11raw_ostream6indentEj.exit29, label %.preheader.i.i25, !llvm.loop !67

end_hunk_1
begin_hunk_2_@_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE:bb.a
  %.sroa.speculated.i.i34 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i33, i32 79) ; 2 uses
  %i.bj = zext nneg i32 %.sroa.speculated.i.i34 to i64
  %i.bk = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.bj) ; 0 uses
  %i.bl = sub nuw i32 %.01112.i.i33, %.sroa.speculated.i.i34 ; 2 uses
  %.not.i.i35 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i35, label %_ZN4llvh11raw_ostream6indentEj.exit36, label %.preheader.i.i32, !llvm.loop !67

end_hunk_2
begin_hunk_3_@_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE:bb.a
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38:    ; preds = %bb.t, %bb.u, %bb.v
  %i.bx = sub nuw i64 %i.t, %i.be                 ; 2 uses
  %i.by = trunc i64 %i.bx to i32                  ; 2 uses
  %i.bz = icmp ult i32 %i.by, 80
  br i1 %i.bz, label %bb.w, label %.preheader.i.i39
end_hunk_3
begin_hunk_4_@_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE:bb.a
  %.sroa.speculated.i.i41 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i40, i32 79) ; 2 uses
  %i.cc = zext nneg i32 %.sroa.speculated.i.i41 to i64
  %i.cd = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.cc) ; 0 uses
  %i.ce = sub nuw i32 %.01112.i.i40, %.sroa.speculated.i.i41 ; 2 uses
  %.not.i.i42 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i42, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %.preheader.i.i39, !llvm.loop !67

end_hunk_4
begin_hunk_5_@_ZN4llvh11raw_ostream6indentEj:bb.a
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.01112.i, i32 79) ; 2 uses
  %i.d = zext nneg i32 %.sroa.speculated.i to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.d) ; 0 uses
  %i.f = sub nuw i32 %.01112.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL13write_paddingILc32EERN4llvh11raw_ostreamES2_j.exit, label %.preheader.i, !llvm.loop !67

end_hunk_5
begin_hunk_6_@_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE:bb.a
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %.01112.i.i, i32 79) ; 2 uses
  %i.ac = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.ac) ; 0 uses
  %i.ae = sub nuw i32 %.01112.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostream6indentEj.exit, label %.preheader.i.i, !llvm.loop !67

end_hunk_6
begin_hunk_7_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit

_ZN4llvh11raw_ostream5writeEPKcm.exit:            ; preds = %bb.h, %bb.j, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i
  %i.dt = sub nuw i32 %.01112.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostream6indentEj.exit, label %.preheader.i.i, !llvm.loop !67

end_hunk_7
begin_hunk_8_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit135

_ZN4llvh11raw_ostream5writeEPKcm.exit135:         ; preds = %bb.ae, %bb.ag, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i115
  %i.ig = sub nuw i32 %.01112.i.i59, %.sroa.speculated.i.i60 ; 2 uses
  %.not.i.i61 = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i61, label %_ZN4llvh11raw_ostream6indentEj.exit62, label %.preheader.i.i58, !llvm.loop !67

end_hunk_8
begin_hunk_9_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  br i1 %.not53, label %._crit_edge223, label %.lr.ph222

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.aw, %_ZN4llvh11raw_ostream5writeEh.exit.i, %._crit_edge212
  %i.ky = sub nuw i64 %.sroa.6151.0226, %..i55    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0150.0224, i64 %..i55
  %i.la = add i64 %..i55, %.048227                ; 2 uses
  %i.lb = icmp ult i64 %i.la, %.fr
end_hunk_9
begin_hunk_10_@_ZN4llvh11raw_ostream11write_zerosEj:bb.a
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.01112.i, i32 79) ; 2 uses
  %i.d = zext nneg i32 %.sroa.speculated.i to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc0EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.d) ; 0 uses
  %i.f = sub nuw i32 %.01112.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL13write_paddingILc0EERN4llvh11raw_ostreamES2_j.exit, label %.preheader.i, !llvm.loop !95

end_hunk_10
begin_hunk_11_@_ZN4llvh8FmtAlign6formatERNS_11raw_ostreamENS_9StringRefE:bb.a
  %.pre-phi103 = phi i64 [ %.pre102, %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37.loopexit ], [ %i.w, %bb.j ]
  %i.ch = load ptr, ptr %4, align 8, !tbaa !27
  %i.ci = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.ch, i64 noundef %.pre-phi103) ; 0 uses
  %i.cj = sub nuw i64 %i.x, %i.be
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %.not.i38 = icmp eq i32 %i.ck, 0
  br i1 %.not.i38, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit, label %.lr.ph.i39
end_hunk_11
