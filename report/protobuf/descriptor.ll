inline.NumInlined: 22183
inline.NumDeleted: 7890
begin_hunk_0_@_ZNK6google8protobuf6Symbol13IsVisibleFromEPNS0_14FileDescriptorE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ae = load i16, ptr %i.ad, align 1            ; 2 uses
  %i.af = trunc i16 %i.ae to i1
  br i1 %i.af, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread, label %.thread

.thread:                                          ; preds = %_ZNK6google8protobuf6Symbol14is_placeholderEv.exit
  %2 = trunc i16 %i.ae to i8
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit9

_ZNK6google8protobuf6Symbol7GetFileEv.exit9:      ; preds = %bb.j, %.thread
  %.sink = phi i64 [ 24, %.thread ], [ 16, %bb.j ]
  %3 = phi i8 [ %2, %.thread ], [ %i.ab, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink
  %.0.i7 = load ptr, ptr %i.ag, align 8, !tbaa !166
  %i.ah = icmp eq ptr %.0.i7, %1
  br i1 %i.ah, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread, label %bb.k
end_hunk_0
