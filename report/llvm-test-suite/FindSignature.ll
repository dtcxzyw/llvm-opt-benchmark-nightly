begin_hunk_0_@_Z21FindSignatureInStreamP19ISequentialInStreamPKhjPKyRy:bb.a

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.h, %bb.k, %.thread127, %.thread
  %.8 = phi i32 [ %i.v, %.thread ], [ 0, %.thread127 ], [ 1, %bb.k ], [ 1, %bb.h ]
  call void @_ZdaPv(ptr noundef nonnull %i.h) #9
  br label %bb.t

bb.s:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @_ZdaPv(ptr noundef nonnull %i.h) #9
  br label %_ZN7CBufferIhED2Ev.exit94

bb.t:                                             ; preds = %bb.e, %bb.c, %_ZN7CBufferIhED2Ev.exit
end_hunk_0
begin_hunk_1_@_Z21FindSignatureInStreamP19ISequentialInStreamPKhjPKyRy:bb.a
  br i1 %i.av, label %_ZN7CBufferIhED2Ev.exit95, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %.sroa.9103.1) #9
  br label %_ZN7CBufferIhED2Ev.exit95

_ZN7CBufferIhED2Ev.exit95:                        ; preds = %bb.t, %bb.u
end_hunk_1
begin_hunk_2_@_Z21FindSignatureInStreamP19ISequentialInStreamPKhjPKyRy:bb.a
  br i1 %i.aw, label %_ZN7CBufferIhED2Ev.exit96, label %bb.v

bb.v:                                             ; preds = %_ZN7CBufferIhED2Ev.exit94
  call void @_ZdaPv(ptr noundef nonnull %.sroa.9103.1) #9
  br label %_ZN7CBufferIhED2Ev.exit96

_ZN7CBufferIhED2Ev.exit96:                        ; preds = %_ZN7CBufferIhED2Ev.exit94, %bb.v
end_hunk_2
begin_hunk_3_@bcmp
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
end_hunk_3
