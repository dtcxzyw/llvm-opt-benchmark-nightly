inline.NumInlined: 1229
inline.NumDeleted: 579
begin_hunk_0_@_ZN6google8protobuf8internal12ExtensionSet23ParseMessageSetItemTmplINS0_7MessageENS0_15UnknownFieldSetEEEPKcS7_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE:bb.a
  %i.bp = and i32 %i.bo, %i.bn
  %i.bq = add nsw i32 %i.bp, %i.bo                ; 3 uses
  %i.br = shl nsw i32 %i.bq, 13
  %i.bs = add nsw i32 %i.bk, -16384
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  %sext.mask19.i = and i32 %i.bq, 32768
  %i.bu = icmp eq i32 %sext.mask19.i, 0
  br i1 %i.bu, label %bb.i, label %.preheader.1.i, !prof !109
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal12ExtensionSet23ParseMessageSetItemTmplINS0_7MessageENS0_15UnknownFieldSetEEEPKcS7_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE:bb.a
  %i.bz = and i32 %i.by, %i.bx
  %i.ca = add nsw i32 %i.bz, %i.by                ; 3 uses
  %i.cb = shl i32 %i.ca, 27
  %i.cc = add i32 %i.bt, -268435456
  %i.cd = add i32 %i.cc, %i.cb                    ; 3 uses
  %sext.mask19.1.i = and i32 %i.ca, 32768
  %i.ce = icmp eq i32 %sext.mask19.1.i, 0
  br i1 %i.ce, label %bb.i, label %.preheader.2.i, !prof !109
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal12ExtensionSet23ParseMessageSetItemTmplINS0_7MessageENS0_15UnknownFieldSetEEEPKcS7_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE:bb.a
  %sext.i21.2.i = shl i32 %i.cg, 24
  %i.ch = ashr exact i32 %sext.i21.2.i, 24        ; 3 uses
  %i.ci = and i32 %i.ch, %i.cg
  %i.cj = add nsw i32 %i.ci, %i.ch                ; 2 uses
  %sext.mask19.2.i = and i32 %i.cj, 32768
  %i.ck = icmp eq i32 %sext.mask19.2.i, 0
  br i1 %i.ck, label %bb.i, label %.preheader.3.i, !prof !109

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal12ExtensionSet23ParseMessageSetItemTmplINS0_7MessageENS0_15UnknownFieldSetEEEPKcS7_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE:bb.a
  %sext.i21.3.i = shl i32 %i.cm, 24
  %i.cn = ashr exact i32 %sext.i21.3.i, 24        ; 3 uses
  %i.co = and i32 %i.cn, %i.cm
  %i.cp = add nsw i32 %i.co, %i.cn                ; 2 uses
  %sext.mask19.3.i = and i32 %i.cp, 32768
  %i.cq = icmp eq i32 %sext.mask19.3.i, 0
  br i1 %i.cq, label %bb.i, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !prof !109

bb.i:                                             ; preds = %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa36.i = phi i64 [ 2, %.preheader.preheader.i ], [ 4, %.preheader.1.i ], [ 6, %.preheader.2.i ], [ 8, %.preheader.3.i ]
  %.lcssa34.i = phi i32 [ %i.bo, %.preheader.preheader.i ], [ %i.by, %.preheader.1.i ], [ %i.ch, %.preheader.2.i ], [ %i.cn, %.preheader.3.i ]
  %.lcssa32.i = phi i32 [ %i.bq, %.preheader.preheader.i ], [ %i.ca, %.preheader.1.i ], [ %i.cj, %.preheader.2.i ], [ %i.cp, %.preheader.3.i ]
  %.lcssa.i = phi i32 [ %i.bt, %.preheader.preheader.i ], [ %i.cd, %.preheader.1.i ], [ %i.cd, %.preheader.2.i ], [ %i.cd, %.preheader.3.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.be, i64 %.lcssa36.i
  %i.cs = icmp ult i32 %.lcssa32.i, %.lcssa34.i
  br label %_ZN6google8protobuf8internal14ParseBigVarintEPKcPm.exit
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8internal20RepeatedPtrFieldBase26SpaceUsedExcludingSelfLongINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmv:bb.a
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.v = add i64 %.078, 32
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248
end_hunk_4
