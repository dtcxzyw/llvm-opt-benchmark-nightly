inline.NumInlined: 281
inline.NumDeleted: 92
begin_hunk_0_@_ZN8NArchive6NSplit8CHandler9GetStreamEjPP19ISequentialInStream:bb.a
          catch ptr null
  br label %_ZN12CMultiStream14CSubStreamInfoD2Ev.exit33

_ZN12CMultiStream14CSubStreamInfoD2Ev.exit33:     ; preds = %bb.q, %bb.o, %.body, %.body.thread49
  %.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.at, %.body.thread49 ], [ %i.bs, %.body ], [ %eh.lpad-body47, %bb.o ]
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
end_hunk_0
