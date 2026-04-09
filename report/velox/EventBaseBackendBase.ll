inline.NumInlined: 39
inline.NumDeleted: 23
begin_hunk_0_@_ZN5folly29EventRecvmsgMultishotCallback21parseRecvmsgMultishotENS_5RangeIPKhEERK6msghdrRNS0_22ParsedRecvMsgMultishotE:bb.a
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !295
  %5 = add i64 %i.e, %i.c
  %i.f = add i64 %5, 16                           ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5folly29EventRecvmsgMultishotCallback21parseRecvmsgMultishotENS_5RangeIPKhEERK6msghdrRNS0_22ParsedRecvMsgMultishotE:bb.a
  store ptr %i.o, ptr %i.r, align 8, !tbaa !303
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.q, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !303
  %6 = add nuw nsw i64 %i.c, 16                   ; 3 uses
  %i.s = icmp ugt i64 %6, %i.i
  br i1 %i.s, label %bb.g, label %_ZNK5folly5RangeIPKhE8subpieceEmm.exit47, !prof !302

bb.g:                                             ; preds = %_ZNK5folly5RangeIPKhE8subpieceEmm.exit
end_hunk_1
begin_hunk_2_@_ZN5folly29EventRecvmsgMultishotCallback21parseRecvmsgMultishotENS_5RangeIPKhEERK6msghdrRNS0_22ParsedRecvMsgMultishotE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !304
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %6 ; 2 uses
  %i.x = sub nuw i64 %i.i, %6
  %.sroa.speculated.i40 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.speculated.i40
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_2
