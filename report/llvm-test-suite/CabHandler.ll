inline.NumInlined: 410
inline.NumDeleted: 152
begin_hunk_0_@_ZN8NArchive4NCab8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a

bb.cv:                                            ; preds = %bb.cu
  %i.mz = invoke noalias noundef nonnull dereferenceable(3480) ptr @_Znwm(i64 noundef 3480) #23
          to label %bb.cw unwind label %bb.ct     ; 12 uses

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN9NCompress8NDeflate8NDecoder6CCoderC2Ebb(ptr noundef nonnull align 8 dereferenceable(3474) %i.mz, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc523 unwind label %bb.cy

.noexc523:                                        ; preds = %bb.cw
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN9NCompress8NDeflate8NDecoder9CCOMCoderE, i64 16), ptr %i.mz, align 8, !tbaa !25
  %8 = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NDeflate8NDecoder9CCOMCoderE, i64 128), ptr %8, align 8, !tbaa !25
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress8NDeflate8NDecoder9CCOMCoderE, i64 192), ptr %i.na, align 8, !tbaa !25
  %9 = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NDeflate8NDecoder9CCOMCoderE, i64 264), ptr %9, align 8, !tbaa !25
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NDeflate8NDecoder9CCOMCoderE, i64 328), ptr %i.nb, align 8, !tbaa !25
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 40 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NCab8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a

bb.di:                                            ; preds = %bb.dh
  %i.ob = invoke noalias noundef nonnull dereferenceable(2024) ptr @_Znwm(i64 noundef 2024) #23
          to label %bb.dj unwind label %bb.ct     ; 18 uses

bb.dj:                                            ; preds = %bb.di
  %10 = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  store i32 0, ptr %i.od, align 4, !tbaa !149
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN9NCompress8NQuantum8CDecoderE, i64 16), ptr %i.ob, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress8NQuantum8CDecoderE, i64 104), ptr %10, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NQuantum8CDecoderE, i64 176), ptr %i.oc, align 8, !tbaa !25
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  store ptr null, ptr %i.oe, align 8, !tbaa !168
end_hunk_1
